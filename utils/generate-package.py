import os
from pathlib import Path
import re

def filter_lines(lines):
    rv = []
    in_comment = False
    for line in lines:
        clean_line = line.strip()
        if clean_line == "#|":
            in_comment = True
            continue
        if clean_line == "|#":
            in_comment = False
            continue
        if in_comment or clean_line == "" or "(include" in clean_line or clean_line[0] == ";" or "in-package" in clean_line:
            continue
        rv.append(clean_line)
    return rv


def merge_lines(lines):
    to_replace = ["(defctype","(ctype","(defcfun","(defcstruct","(defcvar","(constant","(defconstant"]
    if lines != []:
        joined_lines = " ".join(lines)
        for replacement in to_replace:
            joined_lines = joined_lines.replace(replacement,"\n"+replacement)
        
        rv = joined_lines.split("\n")
        return [definition.strip() for definition in rv if definition != ""]
    return []

def extract_package_symbol(definition):
    if "(defcfun" in definition:
        name = re.search("\"(.*)\"", definition).group(1).replace("_","-")
        return f"#:{name}"
    if "(defcvar" in definition:
        name = re.search("\"(.*)\"", definition).group(1).replace("_","-")
        return f"#:*{name}*"
    if "(constant" in definition:
        name = re.search("\+(.*)\+", definition).group(1).replace("_","-")
        return f"#:+{name}+" 
    if "(ctype" in definition or "(defctype" in definition:
        name = re.search("\s(\S*)\s", definition).group(1).replace("_","-")
        return f"#:{name}"
    if "(defcstruct" in definition:
        name = re.search("\s(\S*)\s.*", definition).group(1).replace("_","-")
        return f"#:{name}"
    raise RuntimeError(f"Cant extract symbol for defintion: {definition}")

def extract_package_symbols(merged_defintion):
    symbols = []
    for definition in merged_defintion:
        symbol = extract_package_symbol(definition)
        symbols.append(symbol)
    return symbols

def process_file(l_file):
    with open(l_file) as file:
        interesting_lines = filter_lines(file.readlines())
        merged_definitions = merge_lines(interesting_lines)
        package_symbols = extract_package_symbols(merged_definitions)
        return package_symbols
            
src_path = Path(__file__) / "../../src"
lisp_files = src_path.resolve().glob("*.lisp")


file_definitions = {}
for lisp_file in sorted(lisp_files,key=lambda file: str(file)):
    if lisp_file.name == "package.lisp" or lisp_file.name == "load-library.lisp":
        continue
    package_symbols = process_file(lisp_file)
    print(f";; {lisp_file.name}")
    for package_symbol in package_symbols:
        print(package_symbol)
    
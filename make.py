#!/usr/bin/python3

import os

BUILD_DIR = "tmp"
SOURCE_DIR = "src"

assembly_files = [
    # add to this as needed
    "main"
]

if not os.path.exists(BUILD_DIR):
    print("No tmp dir exists. Making one...")
    os.mkdir(BUILD_DIR)

link_script = ""

for file in assembly_files:
    print(f"Compiling {file}...")

    link_script += f"{BUILD_DIR}/{file}.o" + " " # add a space to it

    os.system(f"ca65 -t cx16 {SOURCE_DIR}/{file}.s -o {BUILD_DIR}/{file}.o")

# linking now...
print("Linking all the files together...")
os.system(f"ld65 {link_script} -o {BUILD_DIR}/HELLO.PRG")

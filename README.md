<picture>
  <source
    srcset=".github/mjc_logo_reverse.svg"
    media="(prefers-color-scheme: dark)"
  />
  <source
    srcset=".github/mjc_logo.svg"
    media="(prefers-color-scheme: light), (prefers-color-scheme: no-preference)"
  />
  <img src=".github/mjc_logo.svg" alt="Modesto Junior College logo." height="80px" />

</picture>

# Introduction to Unix/Linux Systems and Programming (CSCI 210)
> **Note**: this repository is not maintained and is archived for historical purposes. The code may not work as intended and may contain security vulnerabilities. Use at your own risk.

![Last Updated](https://img.shields.io/badge/April_2018-critical?label=Last%20Updated)
![Not Maintained](https://img.shields.io/badge/Not_Maintained-critical?label=Status) 

## Final Project: ULIB
[![GitHub Discussions](https://img.shields.io/badge/GitHub-Learn_More-informational?logo=github&labelColor=000)](https://github.com/4N0NYM0U5MY7H/ULIB/discussions/1)

Library management system built with Bash on Ubuntu 18 that allows a user to create, read, update, delete, checkout, and return books in a library. Program data is stored in text files.

## Program Hierachy
![Program Hierachy](notes/ulib_program.png)

## Installation
To clone and run these files, you must have [Bash](https://www.gnu.org/software/bash/) installed on your local machine.

### From the terminal
Clone the repository
```bash
git clone https://github.com/4N0NYM0U5MY7H/ULIB.git
```
Move to `ulib` directory
```bash
cd ULIB/ulib
```
Make the files executable
```bash
chmod +x *.sh
```
Run the program
```bash
./ULIB.sh
```

### From GitHub
1. Click the green **Code** button in the top right corner of the repository.
2. Click **Download ZIP**.
3. Extract the ZIP file.
4. Set the files to be executable.
5. Run the program.

### More options
For more cloning options, please visit the [GitHub Docs page for cloning a repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository).

## Built with
- [![Bash](https://img.shields.io/badge/GNU_Bash-v4.4.20-4EAA25?labelColor=141414&logo=gnu-bash&style=flat-square)](https://www.gnu.org/software/bash/)

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

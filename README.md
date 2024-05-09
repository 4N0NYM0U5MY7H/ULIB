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

# Final Project: ULIB
[![GitHub Discussions](https://img.shields.io/badge/Learn_More-informational?logo=github&style=for-the-badge)](https://github.com/4N0NYM0U5MY7H/ULIB/discussions/1)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.11156933.svg)](https://doi.org/10.5281/zenodo.11156933)

Library management system built with Bash that allows a user to create, read, update, delete, checkout, and return books in a library.
> **WARNING:** this repository is archived and is no longer maintained.
> 
> [![Last Updated](https://img.shields.io/badge/April_2018-critical?label=Last%20Updated)](#)
> [![Not Maintained](https://img.shields.io/badge/Not_Maintained-critical?label=Status)](#)

## About
Library Management System implemented using Bash scripting. Features a user-friendly text interface designed to collect user input and provide various functionalities for managing books within a library. Users can interact with the system through the command line to perform essential operations related to book management.

## Program Hierachy
<img src="notes/ulib_program.png" alt="Ulib Program Hierarchy Chart." height="400px">

## Installation
To clone and run this program, you must have [Bash](https://www.gnu.org/software/bash/) installed on your local machine.

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

## Built with
[![Bash](https://img.shields.io/badge/GNU_Bash-4.4-4EAA25?labelColor=141414&logo=gnu-bash&style=flat-square)](https://www.gnu.org/software/bash/)

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

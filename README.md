<picture>
  <source
    srcset=".github/mjc_logo_reverse.svg"
    media="(prefers-color-scheme: dark)"
  />
  <sourc
    srcset=".github/mjc_logo.svg"
    media="(prefers-color-scheme: light), (prefers-color-scheme: no-preference)"
  />
  <img src=".github/mjc_logo.svg" alt="Modesto Junior College logo." height="80px" />

</picture>

# CSCI 210: Final Project — ULIB
This is the final project for Introduction to Unix/Linux Systems (CSCI 210) at Modesto Junior College. The goal of this project is to create a library management system using Bash. The program will allow the user to `ADD`, `DISPLAY`, `UPDATE`, or `DELETE` books in the library.

## Program Hierachy
![Program Hierachy](notes/ulib_program.png)

## Installation
To clone and run these files, you must have [Bash](https://www.gnu.org/software/bash/) installed on your local machine.

### From the terminal
```bash
# Clone this repository
$ git clone https://github.com/4N0NYM0U5MY7H/csci210_ulib.git

# Go into the ulib directory
$ cd cs210_ulib/ulib

# Make the files executable
$ chmod +x *.sh

# Run the program
$ ./ULIB.sh
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
- [![Bash](https://img.shields.io/badge/Bash-4.4.20-4EAA25?logo=gnu-bash&style=flat-square)](https://www.gnu.org/software/bash/)

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
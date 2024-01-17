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
[![GitHub Discussions](https://img.shields.io/badge/Learn_More-informational?logo=github&style=for-the-badge)](https://github.com/4N0NYM0U5MY7H/undergraduate/discussions/2)

Library management system built with Bash that allows a user to create, read, update, delete, checkout, and return books in a library.
> **Note:** this repository is not maintained and is only available for historical purposes.
> 
> [![Last Updated](https://img.shields.io/badge/April_2018-critical?label=Last%20Updated)](#)
> [![Not Maintained](https://img.shields.io/badge/Not_Maintained-critical?label=Status)](#)

## About
This project is a Library Management System implemented using Bash scripting. The system provides various functionalities for managing books within a library.

### Key Features
1. Create
   * Users can add new books to the library, providing details such as title, author, and other relevant information.

2. Read
   * The system allows users to view the details of existing books in the library.

3. Update
   * Users have the ability to modify the information associated with a book, such as updating the title, author, or any other attributes.

4. Delete
   * The system supports the removal of books from the library, ensuring effective management of the book inventory.

5. Checkout
   * Users can check out books, indicating that a particular book is currently borrowed by a library member.

6. Return
   * The return functionality allows users to mark a checked-out book as returned, making it available for others to borrow.

This Library Management System aims to streamline the process of handling books within a library, providing a user-friendly interface through Bash scripting. Users can interact with the system through the command line to perform essential operations related to book management.

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

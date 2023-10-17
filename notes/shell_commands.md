### `trap`
This command sets and resets the interups signals. The following tables shows some of the signals you can use to control the termination of your program.

| Signal Number | Name       | Meaning                                         |
| ------------- | ---------- | ----------------------------------------------- |
| 1             | hang up    | Terminal connection is lost.                    |
| 2             | interrupt  | One of the **interrupt** keys has been pressed. |
| 3             | quit       | One of the **quit** keys has been pressed.      |
| 9             | kill       | The **kill -9** command has been issued.        |
| 15            | terminator | The **kill** command has been issued.           |

### `stty`
This command sets options that control the capabilities of your terminal. There are more than a hundred different settings, and the following table lists only some of the options.

| Option         | Operation                                                                        |
| -------------- | -------------------------------------------------------------------------------- |
| `echo [-echo]` | Echoes [does not echo] the typed characters; the default is `echo`.              |
| `raw [-raw]`   | Disables [enables] the special meaning of metacharacters; the default is `-raw`. |
| `intr`         | Generates an interrupt signal; usually the [delete] key is used.                 |
| `erase`        | [Backspace]. Erases the preceding chracter; usually the [#] key is used.         |
| `kill`         | Deletes the entire line; usually [@] or [Ctrl+u] is used.                        |
| `eof`          | Generates the (end-of-file) signal from the terminal; usually [Ctrl+d] is used.  |
| `ek`           | Resets the `erase` and `kill` keys to `#` and `@`, respectively.                 |
| `sane`         | Sets the terminal characters to enable default values.                           |

### `tput`
This command is used with the `terminfo` database, which contains codes for terminal characters and facilitates the manipulation of your terminal characteristics such as boldface text, clear screen, and so on.

| Option    | Operation                                                 |
| --------- | --------------------------------------------------------- |
| `bel`     | Echoes the terminal's bell character.                     |
| `blink`   | Makes a blinking display.                                 |
| `bold`    | Makes a boldface display.                                 |
| `clear`   | Clears the screen.                                        |
| `cup r c` | Moves the cursor to row `r` and column `c`.               |
| `dim`     | Dims the display.                                         |
| `ed`      | Clears from the cursor position to the end of the screen. |
| `el`      | Clears from the cursor position to the end of the line.   |
| `smso`    | Starts stand out mode.                                    |
| `rmso`    | Ends stand out mode.                                      |
| `smul`    | Starts underline mode.                                    |
| `rmul`    | Ends underline mode.                                      |
| `rev`     | Shows reverse video, black on white display.              |
| `sgr0`    | Turns off all the attributes.                             |
<<<<<<< HEAD
# EnConvert - Text File Encoding Converter

A Windows batch script utility for converting text file encodings recursively in directories | CMD скрипт, который рекурсивно меняет кодировки файлов

## Description

`enconvert.cmd` is a command-line tool that converts the encoding of all `.txt` files in a specified directory and its subdirectories. It uses the `iconv` utility to perform reliable encoding conversions while preserving file content.

## Features

- **Recursive processing**: Converts all `.txt` files in subdirectories
- **Safe conversion**: Uses temporary files to prevent data loss
- **Error handling**: Stops on conversion errors with appropriate exit codes
- **Multiple encodings**: Supports common text encodings
- **Progress feedback**: Shows which files are being processed

## Requirements

- **Windows** operating system
- **iconv** utility (GNU libiconv or compatible)
  - Can be installed via [Git for Windows](https://git-scm.com/download/win)
  - Or through [MSYS2](https://www.msys2.org/)
  - Or as part of other Unix-like tools for Windows

## Usage

```cmd
enconvert.cmd DIRECTORY FROM_ENCODING TO_ENCODING
```

### Parameters

- `DIRECTORY` - Path to the directory containing `.txt` files to convert
- `FROM_ENCODING` - Source encoding of the files
- `TO_ENCODING` - Target encoding for conversion

### Help

```cmd
enconvert.cmd /?
```

## Supported Encodings

- **ASCII** - Basic ASCII encoding
- **CP866** - DOS Cyrillic (Russian)
- **KOI8-R** - Russian KOI8-R encoding
- **UTF-8** - Unicode UTF-8
- **UTF-16** - Unicode UTF-16

*Note: Additional encodings supported by `iconv` may work but are not explicitly tested.*

## Examples

### Convert from UTF-16 to CP866 (DOS Cyrillic)
```cmd
enconvert.cmd "C:\MyFiles" UTF-16 CP866
```

### Convert from CP866 to UTF-8
```cmd
enconvert.cmd ".\documents" CP866 UTF-8
```

### Convert current directory from UTF-8 to ASCII
```cmd
enconvert.cmd . UTF-8 ASCII
```

## How It Works

1. **Recursive scan**: Finds all `.txt` files in the specified directory tree
2. **Safe conversion**: For each file:
   - Creates a temporary copy with `.tmp` extension
   - Converts the temporary file using `iconv`
   - Replaces the original file only if conversion succeeds
   - Removes temporary file
3. **Error handling**: Stops processing if any conversion fails

## Installation

1. Download `enconvert.cmd`
2. Ensure `iconv` is available in your system PATH
3. Place the script in a directory that's in your PATH, or run it directly

## Troubleshooting

### "iconv is not recognized as an internal or external command"
Install `iconv`:
- **Git for Windows**: Installs `iconv` automatically
- **MSYS2**: `pacman -S msys/libiconv`
- **Manual**: Download GNU libiconv for Windows

### Conversion fails with error
- Verify the source encoding is correct
- Check if files contain characters not supported in target encoding
- Ensure you have write permissions to the directory

## License

This script is provided as-is for educational and utility purposes.

## Author

- Created by parcefall
- Text write -- warp
- If this tool helps you, please consider giving it a star on GitHub!
=======
# Script-for-changing-files-encodings
Скрипт написанный в Notepad для CMD, который меняет кодировки файлов через iconv. Немножко было тяжело писать, но warp мне немножко помог.


>>>>>>> c454bbf8e22cee8b921a8b5f5c8055877a300576

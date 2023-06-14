# C to ASM Example

## Build the example:

```make```

## View the assembly code:

```less bin/test.asm```

## View the object file:

```objdump -d bin/test.o```

## View the executable file:
```objdump -d bin/test | less ```




# Useful Commands

[Linux commands cheat sheet](https://ryanstutorials.net/linuxtutorial/cheatsheet.php)

[Linux File Permissions](https://wizardzines.com/comics/permissions/)

[Linux tar command](https://wizardzines.com/comics/tar/)

### Code Formatting
Apply the coding standards via:
* Windows: ```SHIFT + ALT + F```
* Mac: ```SHIFT + OPTION + F```
* Linux: ```CTRL + SHIFT + I```

Notes
* [GDB to LLDB Command Mapping](https://lldb.llvm.org/use/map.html)
* [Using expressions in the watch panel with LLDB](https://github.com/vadimcn/vscode-lldb/blob/master/MANUAL.md#native-expressions)
* To view the data pointed to by a void* 
  *   For LLDB: 
	  * `/nat *(int*) pVoid`
* [View pointer as array in debugger](https://github.com/microsoft/vscode-cpptools/issues/172#issuecomment-1281804128)
  *   For LLDB:
	  * `/nat *(int(*)[13])pIntArray`
  *   For GDB:
      * `*pIntArray@13` or  `*pIntArray@ARRAY_SIZE`

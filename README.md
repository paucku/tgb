# Taggo-baggo
Tools to organize, manipulate, edit, move and copy files in bulk.

# Q - query files
Search files through the file system.

Example:
```
q alabala tintiri mintiri
```
This commad will find recursively from the point it was invoked all filenames which contain all of the strings "alabala", "tintiri" and "mintiri".

# L - list files
List files in the current folder.

Example:
```
l alabala protokala
```

This command will list all filenamess in the current folder which contain bot "alabala" and "portokala".

# G - search inside files
Search files through the file system which contain some text.

Example:

```
g alabala tintiri mintiri
```

This commad will find recursively from the point it was invoked all files which contain all of the strings "alabala", "tintiri" and "mintiri".

# rename_add_creation_date_in_the_beginning.rb
This script adds modification time in the beginning of all files in a folder. Must be executed in the folder where the files are.

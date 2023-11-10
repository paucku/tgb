# DISCLAIMER
These scripts may be dangerous. Use them on your own risk!

# Taggo-baggo
Tools to organize, manipulate, edit, move and copy files in bulk. And tagging them.

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

# Tagit
Tag files based on the folder name.

Tag files in a folder based on the name of the folder (adds the name of the folder in the back of the files in the folder). Must be executed in the folder where the files are.

# context
Set the context if there are arguments.
Show the context if there are no arguments.

# SR
SEARCH & REPLACE in files. Replaces the first argument to the second argument in ALL files recursively in the current directory.

# SAMEDATE
Finds all files which are tagged with the same date. The date is given in the first argument in the form YYYY-MM-DD. If a NUMBER is given as second argument it will also give all files tagged with the same date and NUMBER of days before and after this date.

# bg-bg.rb
A misspelling corector when typing with the wrong layout on the keyboard.

If I want to write in the search engine "where can i buy honey" but did not switch the keyboard to English layout, I will have "угеие ъьх с фкщ гдхещ". Now to not need to type it althogether, I open a terminal application type bg-bg.rb and paste the above mistaken string (without the quotes). The result is a correct string which now I copy and paste in the search engine.

```
> bg-bg.rb угеие ъьх с фкщ гдхещ
where can i buy honey
```
TODO
- [ ] To change the name bg-bg to something more sensible
- [ ] to make it copy directly into the clipboard so I can waste no time.

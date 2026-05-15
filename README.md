# ptjournal
A simple shell script for arranging and accessing weekly notes in plaintext.

## Installing
```sh
sudo make install
```
Will install the script into /usr/local/bin, and the template into /usr/share/notes.

## Usage

Typing `notes` into your terminal will create a new file for the current week and open that file in vim.  
Every file is named after the Monday which the week commences on, and is placed in the directory structure: ~/notes/$year/$month/$day.
The result looks like this:
```
xdxs71@37MDCK3:~/notes$ tree
.
└── 26
    ├── 04
    │   ├── 20
    │   └── 27
    └── 05
        ├── 04
        ├── 08
        └── 11

4 directories, 5 files
```

To open the previous week's file, use `notes -p`, and to open a specific date's file, `notes -d "%d %m %y"`.
Opening a specific date is a bit cumbersome, and I need to add something that will correct the date to the Monday of that week, rather than opening a new file if you type in a day which isn't Monday.

One of the advantages to using plaintext is that you can just run a recursive grep on the notes directory if you need to find a reference to something specific.  
I may add a shortcut way of doing this to the script so that you can check these things from anywhere in the filesystem without having to type out paths.

## Customising

If you'd like to use an editor besides vim, just replace the final line in the script.

If you'd like to alter the template (to add weekends for example), do so before installing.  
I may add a way to pick up user-defined templates from ~/.config/notes/template or something similar.

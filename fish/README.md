# Fish Setup

Fish shell comes with many quality of life features such as auto suggestion.

## Abbreviations

This is one of best quality of life feature.
It replaces user-defined words to longer phrases.
Comes in very handy on frequently used commands such as `cd ..`, `git status`
and `git commit -m`.  
Highly recommended to read the
[documentation](https://fishshell.com/docs/current/cmds/abbr.html).  
You can easily copy my setup by `source abbreviations.txt`

### Notable abbr setups

#### Navigating directory

`b 'cd .. && ls'`: go up one directory  
`bb 'cd - && ls'`: go to previous directory  

#### Git commands

`gaa 'git add --a && git status'`: git stage all changes  
`gcm 'git commit -m'`: git commit message  
`gs 'git status'`: git status  

#### **`exa`** style of `ls`  

`ls 'exa --oneline --icons --color=always'`: typical ls  
`la 'exa --oneline --icons --color=always -a'`: show everything  
`ll 'exa --oneline --icons --color=always -l --git'`: show in detail  
`lla exa --oneline --icons --color=always -la'`: show everything in detail  

#### Others

`logout 'loginctl kill-user $USER'`: terminate current session using
`loginctl`  
`vim nvim`: use neovim  

## Greeting Message

Use custom message when new shell is opened.  
Required packages: [cowsay](https://github.com/piuccio/cowsay) and
[fortune](https://github.com/shlomif/fortune-mod)

Example:

```fish
 _____________________________________ 
/ Diplomacy is the art of letting the \
| other party have things your way.   |
|                                     |
\ -- Daniele Vare                     /
 ------------------------------------- 
     \     .-.
      \  .'   `.
       \ :g g   :
        \: o    `.
        :         ``.
       :             `.
      :  :         .   `.
      :   :          ` . `.
       `.. :            `. ``;
          `:;             `:'
             :              `.
              `.              `.     .
                `'`'`'`---..,___`;.-'
danny@geofront ~> 
```

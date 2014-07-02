# Notes On Sublime Text 2 LaTeXTools Plugin
This LaTeX template is to be used with the [LaTeXTools plugin](https://github.com/SublimeText/LaTeXTools) for [Sublime Text](http://www.sublimetext.com/).  
It will work with other code editing environments, but you probably have to edit the steering command in the first lines of each file (beginning with `%!`).

Here are some notes on some key functions of the plugin as well as a list of commands not to be forgotten.  
Probably most interesting for you is the table at the end of this document.

### Head of File Directives
  * `%!TEX root = template.tex` lets you choose the master file. In this project it's `template.tex`.
  * `%!TEX program = xelatex` lets you chose the compilation engine. Here it is xelatex because of its custom font support.

### Features and Their Keys
Given are the shortcuts for OS X. For windows, usually simply replace `Cmd/⌘` with `Ctrl`. Key symbols used are `⌘` for `Cmd`, `⌥` for `Alt` (/ *Option*), `⌃` for `Ctrl`, `⇧` for `Shift`.

#### Standard Sublime Text Feature
  * `⇧+⌘+p` opens up the **command palette** (easily set *everything* from the menu with fuzzy searching)
  * `⌘+p` will **go to anything**. Switch files with this.  
  Remember, 
    * `⌘+1` … `⌘+9` switches to tabs 1 … 9,
    * `⌥+⌘+→` and `⌥+⌘+←` will go to the tab right or left, respectively 
  * `⌘+r` will **go to symbol**. In LaTeXTools this will let you go to every headline (`C`hapter, `S`ection, …) as well as every label (`L`) in your current file. This is equal to `⌘+p` and writing an `@`.
  * `⌘+b` will **build** the current LaTeX file, compiling here meaning type-setting.

#### LaTeXTools Features
Generally, LaTeXTools keys consist of two keystrokes. First off, `⌘+l` to get yourself in the LaTeXTools surroundings (*mnemonic*: `l` for LaTeX) directly followed by second key to access on particular shortcut.  
Here, they are seperated by a comma, like `⌘+l,x`. First hit `⌘+l`, directly afterwards `x`.

  * Typing `\cite{` will open up a drawer to search for **citation** names in your BibTeX.bib file specified in `\bibliography{}` (it is disableable)
  * Typing `\ref` opens a drawer to browse through all `label`s of the current file, fuzzy-searchable -- typing a `,` after the `label` (/`cite` name) lets you type a second one
  * `⌘+l,j` jumps to the current **cursor position in the PDF** file
    * maybe you need to toggle the state of the option for this forward search after compilation? use `⌘+l,t,s` and glance at the status bar
    * `⌘+⇧+click` in Skim will get you back to the clicked position in the LaTeX document
  * `⌘+l,backspace` **removes all temporary** files

#### LaTeXTools LaTeX Text Manipulation
##### Shortcuts
Most of the following commands wrap selected text in commands. If there's no word to wrap selected it will give a `\command{}` with the cursor located between the brackets.

  * `⌘+l,⌘+e` **emphasizes** the selected text with `\emph{text}`
  * `⌘+l,⌘+b` wraps the selected text **bold** with `\textbf{text}`
  * `⌘+l,⌘+u` **underlines** the selected text, `\underline{text}`
  * `⌘+l,⌘+t` gives you fixed-size text with `\texttt{text}`
  * `⌘+l,c` replaces the current word with a **command** based on the word -- hitting the keystroke after `bla` will give you `\bla{}`
  * `⌘+l,⌘+c` wraps the current word in a `\cmd{}` surrounding, with `cmd` begin highlighted to be overwritten
  * `⌘+l,e` replaces the current word with an **environment** based on the word -- hitting the keystroke after `align` will give you `\begin{align} … \end{align}`

##### Tab Completion
Additionally to the `⌘+l` shortcuts, there are the usual Sublime Text `Tab` (`⇥`) completion operations.  
Here are some of the more interesting ones, for all of them look into `~/Library/Application Support/Sublime Text 2/Packages/LaTeXTools/LaTeX math.sublime-completions` and `LaTeX.sublime-completions` (you find the directory by going to `Sublime Text → Preferences → Browse Packages` in your Sublime Text menu bar) or look to the code online ([1](https://github.com/SublimeText/LaTeXTools/blob/master/LaTeX%20math.sublime-completions), [2](https://github.com/SublimeText/LaTeXTools/blob/master/LaTeX.sublime-completions)).

They have different meaning when invoked in regular text or in math environment. Additionally, I included the `⌘+l,x` commands from above.  
So, this might a **master table** to print out and learn by heart.

| Tab completion  | `⌘+l,x` command | Text expands to           | Math expands to  | Comment | 
| --------------- | ----------- |-------------| -----| --- |
| `e⇥`,`em⇥`    | `⌘+l,⌘+e` | `\emph{}` | `\epsilon` | | 
| `bf⇥`          | `⌘+l,⌘+b` | `\textbf{}`      |   `\mathbf{}` | | 
| `un⇥`          | `⌘+l,⌘+u` | `\underline{}` | | | 
| `tt⇥`          | `⌘+l,⌘+t` |  `\texttt{}` | | | 
| `i⇥`           | `textit ⌘+l,c` |  `\textit{}`      |    `\mathit{}` | | 
| `rm⇥`          | … | | `\mathrm` | |
| `a⇥`           | | | `\alpha` | In math mode, most of the letters of the alphabet complete to greek letters | 
| `f⇥`           | | | `\phi`| | 
| `phi⇥`         | | | `\varphi` | `\varphi⇥ = \phi` and vice versa |
| `cha⇥`         | | `\chapter{}` || Also adds corresponding `\label{}` |
| `sec⇥`         | | `\section{}`|| … etc … |
| `baln⇥`        | | `\begin{align} … \end{align}` || | 
| `lp⇥`          | | | `\left( … \right)` | | 
| `use⇥`         | | `\usepackage{}` || |

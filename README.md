# LaTeX Template

Pre-configured LaTeX template with some useful features. The basis for our PhD theses (in High Energy Physics, you will notice). Quickstart: Look [at the PDF](https://github.com/Nepomuk/LaTeX-Template/blob/master/template.pdf).

A previous version of this document used XeTeX with custom fonts. We decided to discontinue custom fonts (and, with this, XeTeX) and switch back to pdflatex. You still can find the custom font files in the [xetex branch](https://github.com/Nepomuk/LaTeX-Template/tree/xetex) of this repo and some more info [in Andrés blogpost](http://drlog.andregoerres.de/use-truetype-fonts-with-latex/).

This project is the combined result of year-long LaTeX stuff gathering and nitpicky preparations.

The most important features are shortly outlined below in this `README.md`, are explained in the template's Showcase chapter (chapter 1) -- and documented inside the .tex code (as good as possible).

Why you should use LaTeX, you ask? Because [it's beautiful](http://nitens.org/taraborelli/latex)! And, once set up (you're welcome!), easy to use.


## Basic TeX Setup
### MacTex & Sublime Text
This project is run on and tested with [MacTeX-2014](http://tug.org/mactex/).

We typeset it out of Sublime Text (3) with the great [LaTeXTools plugin](https://github.com/SublimeText/LaTeXTools). It should work with any tool, including the command line, though. (Best, if it involes `latexmk` for typesetting.)

### Files in This Project
The notation is as follows: Files, starting with a underscore, are considered steering files. Files with proper file names contain actual information.

#### Folder structure
* **`./`**: Basic files, project configuration, final PDF.
* **`./1_Chapter/`**: Each chapter gets its own directory, but feel free to use a different approach for structuring.


#### `./`, root folder
* `template.sublime-project`: The project file for Sublime Text. Adjust the path inside, otherwise you can't use it.
* `template.tex`: The master LaTeX file.
* `_packages.tex`: Loading packages and styles, the basic stuff.
* `_settings.tex`: Settings for the document.
* `_newcommands.tex`: New defined commands.
* `glossaries.tex`: A place to define your acronyms (and other glossary entries).
* `_titlepage.tex`: The title page, who would have suspected it.



### Editing LaTeX

We use **[Sublime Text 3](http://www.sublimetext.com/)** with its LaTeXTools plugin for editing LaTeX. If you do so as well, you might want to check out SublimeLinter with the chktex linter to check your code on the fly.

`Cmd`+`B` (B as in *build*) typesets your document (using `latexmk` per default).

LaTeXTools offers some great shortcuts and snippets. Because we always forget them when not using LaTeX for an extended period of time, we noted them down in the `ST-LaTeXTools-Notes.md` file.  
Handy for making a multi file project in Sublime Text is the meta command `%!TEX root = template.tex` to be put at the first line in your LaTeX file. Do that. And you can *build* from everywhere.

Spell checking can be enabled as explained in the [Sublime Text documentation](http://www.sublimetext.com/docs/2/spell_checking.html).

### Helpful Shellscripts
There are some shell scripts with frequently used shell commands.
* `cleanBiberCache.sh`: This template, per default, uses Biber with BibLaTeX to create the bibliography. Sometimes, though, Biber gets confused and puts its binary into a strange temp folder, resulting in references being not found. This shell script cleans the cache and you should be done with another compilation (or two).
* `reducePdfSize.sh`: You might end up with a quite big PDF file. While this might be useful for printing, some external limitations impose smaller file sizes. The script will convert your PDF into smaller-sized PDF by means of Ghostscript and Bitmap resolution reduction. Based on [this StackExchange comment](http://tex.stackexchange.com/a/41273/56326). Check `./reducePdfSize.sh -h` for help with invoking.

## LaTeX Feature List

### Basic Look
The document class is `memoir`. It has some built-in functionality for which you normally would need special classes.

The typeface used is the serif typeface of Bitstream Charter, as made available through the `mathdesign`package. If you have Charter Pro font versions, you might want to modify the included `mathdesign` option.

### Type Setting with `microtype`
The [microtype](http://ctan.org/tex-archive/macros/latex/contrib/microtype) package enhances the already excellent type setting features of LaTeX by adjusting spacing between characters to improve greyness or margin kerning (protrusion). And some other stuff, of course.

### Units with `siunitx`
The [siunitx package](http://www.ctan.org/pkg/siunitx) provides great ways to print numbers (`num{}`) and numbers with units (`\SI{}{}`).

### High Energy Physics Stuff
* `feynmf` is included for creating Feynman graphs
* Different small packages for writing in Feynman notation and Bra-Ket are included
* `hepparticles` is used for basic particle writing infrastructure, `heppennames` and `hepnicenames` provides easy-access shorthands for this. Note that greek letter particles have been redefined in `_settings.text` to their upright symbols (because particles should be printed upright).

### References & Acronyms
BibTeX is used, or BibLaTeX depending on what we currently consider giving the best look. There's a custom, unfinished design for the former.  
(Un)Commented lines are there for both BibTeX and BibLaTeX.

The great `glossaries` package is used for generating glossaries, in general, and acronym glossaries, specifically. Glossary entries are defined in `glossaries.tex`, can be used with `gls{id}` and will, for the acronym case, be printed in the long version at their first use and as the shorted version for subsequent uses.  
As `latexmk` takes care for LaTeXTools to typeset the document, there's a `.latexmkrc` file included in this template to add the automatic generation of the glossaries to the latex make chain.


## Screenshots
![Titelpage](https://raw.githubusercontent.com/Nepomuk/LaTeX-Template/master/exampleimages/template-0-shrunk.png "Titelpage")
![Content 1](https://raw.githubusercontent.com/Nepomuk/LaTeX-Template/master/exampleimages/template-4-shrunk.png "Content 1")
![Content 2](https://raw.githubusercontent.com/Nepomuk/LaTeX-Template/master/exampleimages/template-5-shrunk.png "Content 2")
![Content 3](https://raw.githubusercontent.com/Nepomuk/LaTeX-Template/master/exampleimages/template-6-shrunk.png "Content 4")

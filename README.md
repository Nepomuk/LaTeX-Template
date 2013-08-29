# ! IMPORTANT !

**This project is not yet complete. There are some features, I just didn't have time to implement yet, but are required for a proper article (like bibliography).**

_This paragraph will remove itself after completion._


# LaTeX Template

Pre-configured XeLaTeX-using LaTeX template with some useful features. And custom fonts.

This project is the result of year-long LaTeX stuff gathering. It might be overkill for small projects though. Some features are explained downwards on this document, for all the configuration look inside the files. I tried to comment everything important.

Why you should use LaTeX, you ask? Because [it's beautiful](http://nitens.org/taraborelli/latex)! And, once set up (you're welcome!), easy to use.


## Install Fonts

One necessary step to get this example to compile is download the required fonts. In this case it is the RobotoSlab font from [Google's Web Font library](http://www.google.com/fonts/).

[Go over there](http://www.google.com/fonts/), search for "roboto" and add all styles from Roboto Slab to your collection. Then download the collection compressed as a `.zip` file via the little arrow button on the top right **or use the [direct link](http://www.google.com/fonts/download?kit=XjkaEzzmSNN61VxmbyFKHIfD-WQWLbF4rYwcBGowFYY)** (I don't know how long this will work though).

After you downloaded the archive, extract the files inside and put the `.ttf` inside the `./font/` directory from this project.

I bit more about using arbitrary fonts with XeLaTeX I wrote [in a small blogpost](http://drlog.andregoerres.de/use-truetype-fonts-with-latex/).


## Basic TeX Setup
### MacTex
This project is run on and tested with [MacTeX-2012](http://tug.org/mactex/).

### Files in This Project

#### Folder structure
* **`./`**: Basic files, project configuration, final PDF.
* **`./font/`**: TrueType fonts to use in the document.
* **`./1_Chapter/`**: Each chapter gets its own directory, but feel free to use a different approach for structuring.


#### `./`, root folder
* `template.sublime-project`: The project file for Sublime Text 2. Adjust the path inside, otherwise you can't use it.
* `template.tex`: The master LaTeX file.
* `_preamble.tex`: Loading packages and styles, the basic stuff.
* `_settings.tex`: Settings for the document.
* `_newcommands.tex`: New defined commands.
* `_titlepage.tex`: The title page, who would have suspected it.



### The Editor of Choice

#### General comments
I use **[Sublime Text 2](http://www.sublimetext.com/)** for editing LaTeX. It is a great, lightweight but highly customizable editor for writing any kind of text files. Of course it is not a complete development environment, but it comes with syntax highlighting and nice shortcuts to quickly get stuff done.
For LaTeX I never needed a fancy tool, I just wanted to write the code and compile the PDF at the end. Consequently, Sublime Text is a perfect match for me. But feel free to use something different.

#### Workflow in Sublime Text 2
Write your stuff - hit `Cmd`+`B` (compile) - enjoy the PDF. Just as simple as that.

To get this running, install the `LaTeXTools` package and you are ready to go.

#### Spell Checking
When you are writing a text instead of code, you need to check for spelling. Experienced people in writing might not need that, but I certainly do :).
Sublime Text 2 comes with a spell check engine, we just have to get it a dictionary. As it is explained in the [Sublime Text 2 documentation](http://www.sublimetext.com/docs/2/spell_checking.html), you get dictionaries from the [OpenOffice extension list](http://extensions.services.openoffice.org/en/search?f[0]=field_project_tags%3A157).

After downloading, rename the extension of the file to `.zip` and extract it. In the new directory you have to search for a folder with a `.aff` and `.dic` file. Move and rename this folder to `Packages/Language - YourLanguage/` inside your Sublime Text directory. In my case (Mac OS X) this is

    ~/Library/Application Support/Sublime Text 2/Packages/Language - English/

Finally activate it in the Sublime Text project file.

#### Marking a Master Tex File
When looking at the files you will notice that the first line is always a bit strange:

    %!TEX root = template.tex

With this command you tell Sublime Text, where the master `.tex` file is located. In that way you can hit `Cmd`+`B` in every child file and it will compile a valid PDF.

#### Compiler Selection
In the same manner the used compiler is selected in the master file.

    %!TEX program = xelatex

It means, it uses ´xelatex´ instead of the more common, but older ´pdflatex´. A feature that requires ´xelatex´ is the use of TrueType fonts as it is done in this project.


## LaTeX Feature List

### Custom Fonts
When designing the looks of the project you are working on, you'll notice rather quickly that your options are a bit limited. It would be especially nice to select custom fonts for headlines or the title page.

To get this running, you need to follow four steps:

1. Download the fonts you like, see [Install fonts](#install-fonts) for the description of an example. But you are free to put any TrueType fonts (`.tty` files) inside the `./font/` directory.

2. Tell Sublime Text which compiler it should use. `pdflatex` doesn't support TrueType fonts, the newer `xelatex` does. Add the following line on the very top in your master file:

        %!TEX program = xelatex

3. Define the font family. This is done by the first block in the `_settings.tex` file.

        \newfontfamily\RobotoSlab[
          Path = font/,
          UprightFont = RobotoSlab-Light,
          ItalicFont = RobotoSlab-Thin,
          BoldFont = RobotoSlab-Bold,
          BoldItalicFont = RobotoSlab-Bold
        ]{RobotoSlab}

    The names after the equal signs have to match the file names in the font directory. In this case the matching is a bit more creative because Roboto Slab isn't shipped with an italic style.

4. Use the font in the code by calling the newly defined command

        \RobotoSlab

    One example for using it is in the title page (`_titlepage.tex`).



### Type setting with `microtype`
The [microtype](http://ctan.org/tex-archive/macros/latex/contrib/microtype) package enhances the already excellent type setting features of LaTeX by adjusting spacing between characters to improve greyness or margin kerning (protrusion, which, unfortunately, doesn't work with XeTeX right now). And some other stuff, of course.

But because many functions don't work, there are basically no settings to this package right now and it is just included.



## Screenshots
![Titelpage](http://senfi.github.io/LaTeX-Template/Screenshots/titel.png "Titelpage")
![Content](http://senfi.github.io/LaTeX-Template/Screenshots/content.png "Content")
![Chapter](http://senfi.github.io/LaTeX-Template/Screenshots/chapter.png "Chapter")

! IMPORTANT !
=============

**This project is not yet complete. There are some features, I just didn't have time to implement yet, but are required for a proper article (like bibliography).**

_This paragraph will remove itself after completion._


LaTeX-Template
==============

A LaTeX template with some interesting stuff I found over the years. Might be overkill for small projects though. Some features I explain here, for all the configuration look inside the files. I tried to comment everything important.


Files in this project
---------------------

### Folder structure
* **`/`**: Basic files, project configuration, final PDF.
* **`/font/`**: TrueType fonts to use in the document.
* **`/1_Chapter/`**: Each chapter gets its own directory, but feel free to use a different approach for structuring.


### `/`, root folder
* `template.sublime-project`: The project file for Sublime Text 2. Adjust the path inside, otherwise you can't use it.
* `template.tex`: The master LaTeX file.
* `_preamble.tex`: Loading packages and styles, the basic stuff.
* `_settings.tex`: Settings for the document.
* `_newcommands.tex`: New defined commands.
* `_titlepage.tex`: The title page, who would have suspected it.


The editor of choice
--------------------

### General comments
I use Sublime Text 2 for editing LaTeX. It is a great, lightweight but highly customizable editor for writing any kind of text files. Of course it is not a complete development environment, but it comes with syntax highlighting and nice shortcuts to quickly get stuff done.
For LaTeX I never needed a fancy tool, I just wanted to write the code and compile the PDF at the end. Consequently, Sublime Text is a perfect match for me. But feel free to use something different.

### Workflow in Sublime Text 2
Write your stuff - hit `Cmd`+`B` (compile) - enjoy the PDF. Just as simple as that.

To get this running, install the `LaTeXTools` package and you are ready to go.

### Spell checking
When you are writing a text instead of code, you need to check for spelling. Experienced people in writing might not need that, I certainly need it :)
Sublime Text 2 comes with a spell check engine, we just have to get it a dictionary. As it is explained in the [Sublime Text 2 documentation](http://www.sublimetext.com/docs/2/spell_checking.html), you get dictionaries from the [OpenOffice extension list](http://extensions.services.openoffice.org/en/search?f[0]=field_project_tags%3A157).

After downloading, rename the extension of the file to `.zip` and extract it. In the new directory you have to search for a folder with a `.aff` and `.dic` file. Move and rename this folder to `Packages/Language - YourLanguage/` inside your Sublime Text directory. In my case (Mac OS X) this is

    ~/Library/Application Support/Sublime Text 2/Packages/Language - English/

Finally activate it in the Sublime Text project file.

### Marking a master file
When looking at the files you will notice that the first line is always a bit strange:

    %!TEX root = template.tex

With this command you tell Sublime Text, where the master `.tex` file is. In that way you can hit `Cmd`+`B` in every file and it will compile a valid PDF.

### Compiler selection
In the same manner the used compiler is selected in the master file.

    %!TEX program = xelatex

It means, it uses ´xelatex´ instead of the more common, but older ´pdflatex´. A feature that requires ´xelatex´ is the use of TrueType fonts as it is done in this project.


LaTeX feature list
------------------


### Custom fonts
When designing the looks of the project you are working on, you'll notice rather quickly that your options are a bit limited. It would be especially nice to select custom fonts for headlines or the title page.

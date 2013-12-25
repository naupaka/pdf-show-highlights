What is this?
=============

This is a simple console tool written in C, which extracts highlighted text and text notes from a PDF file. Originally written by Vladimir S. Ivanov, modified by Naupaka Zimmerman. It is licensed under the GNU GPL.


Installation
============

Be sure that you have all needed packages installed. You need `gcc` compiler, and package `poppler` (Gentoo) or `libpoppler-glib-dev` (Debian). 

If you want to learn more about the `poppler` methods for C, [this is
the best site I've come across](https://developer.gnome.org/poppler/unstable/PopplerAnnot.html#PopplerAnnotText).

It also works on OS X (manually installing dependencies through homebrew), although you may need to be very pedantic on telling the compiler where to find stuff before running make, e.g.:

```sh
export PC_CFLAGS="-I/usr/local/opt -I/usr/local/include/pygtk-2.0 -I/usr/local/Cellar/glib/2.38.2/include/glib-2.0/ -I/usr/local/Cellar/glib/2.38.2/lib/glib-2.0/include/ -I/usr/local/Cellar/gtk+/2.24.22/include/gtk-2.0/ -I/opt/X11/include/cairo/ -I/usr/local/Cellar/pango/1.36.1/include/pango-1.0/ -I/usr/local/Cellar/gtk+/2.24.22/lib/gtk-2.0/include/ -I/usr/local/Cellar/gdk-pixbuf/2.30.1/include/gdk-pixbuf-2.0/ -I/usr/local/Cellar/atk/2.10.0/include/atk-1.0/ -I/usr/local/Cellar/poppler/0.24.4/include/poppler/ -I/usr/local/Cellar/py2cairo/1.10.0/include/pycairo/"
```

I recommend the use of `git` utility to clone the repo:

```sh
git clone https://github.com/naupaka/pdf-show-highlights.git
cd pdf-show-highlights
```

Otherwise download source files manually.

To make the `pdf-show-highlights` executable, run

```sh
make
```

Usage
=====

To extract highlighted text from `sample.pdf`, run

```sh
./pdf-show-highlights sample.pdf
```

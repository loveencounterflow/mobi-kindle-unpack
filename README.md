# mobi-kindle-unpack


<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Overview](#overview)
- [Extract HTML from `*.mobi` Files with `mobiunpack\ 32.py`](#extract-html-from-mobi-files-with-mobiunpack%5C-32py)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

# Overview

This repo contains software to extract content from `*.mobi` and `*.epub` eBook reader formats (not written
by me).


# Extract HTML from `*.mobi` Files with `mobiunpack\ 32.py`


From
[https://www.mobileread.com/forums/showthread.php?t=61986](https://www.mobileread.com/forums/showthread.php?t=61986):

> KindleUnpack (MobiUnpack): Extracts text, images and metadata from Kindle/Mobi files
>
> KindleUnpack is a set of python scripts that take a Kindle/Mobipocket ebook and extracts the HTML, images
> and metadata contained in the ebook, and puts them in a form suitable for passing to KindleGen.
>
> For KF8 files and combined Mobipocket and KF8 files, it also can produce separated mobipocket and KF8
> files, and also the original source files if those are included in the ebook. In addition, for KF8 files
> it can produce an 'ePub', although if the HTML isn't compliant with ePub standards, the 'ePub' won't be
> either.
>
> For Amazon's .azw4 files, it will extract the PDF that's been wrapped up in Amazon's .azw4 file format.
>
> Downloads available:
> * Version 0.81 of the python scripts (including .pyw graphics front end)
> * Version 0.81 of a drag&drop AppleScript version.
> * Version 0.81 of a drag&drop 64-bit AppleScript version fo Mac OS X 10.6 and later..
> * A calibre plugin version of the scripts is available in this thread.
>
> For anyone not interested in KindeGen and KF8, there's a copy of the last version of the single-file
> script, mobiunpack 0.32.
>
> The name of the script was changed to KindleUnpack with version 0.6.1.
>
> The Python scripts are released under GPLv3. The AppleScript Wrapper is released with unlicense.
>
> The 0.81 version includes all bug fixes made at the git repository up until 1st December, 2018.
>
> Many thanks to adamselene for the base code which has been built on by many of the participants of this
> thread.
>
> pdurrant
>
>
>
> [Original Post:]
> I reimplemented huff/cdic compression in Python, and did a few other things while I was at it. The new script:
>
> * decompresses about 25x faster than mobihuff.py
> * uses much less memory (about 16x on my largest test file)
> * implements conversion of uncompressed and Palmdoc-compressed files
> * handles trailing data correctly in all cases
>
> Check it out: http://www.mit.edu/afs/athena/user/m.../mobiunpack.py
>
> **PLEASE NOTE** that this tool is only for decompressing unencrypted Mobipocket files. It does not decrypt
> DRMed files. Do not ask me for help breaking DRM.
>
> ## Attached Files
>
> File Type: zip  mobiunpack 32.py.zip (18.4 KB, 17614 views)
> File Type: zip  KindleUnpack v0.81.app.zip (442.4 KB, 729 views)
> File Type: zip  KindleUnpack 64 v0.81.app.zip (437.5 KB, 1247 views)
> File Type: zip  KindleUnpack-081.zip (124.7 KB, 2316 views)
> Last edited by pdurrant; 11-30-2018 at 04:58 PM.
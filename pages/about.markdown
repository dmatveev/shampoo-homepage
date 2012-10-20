About
=====

The first proposal on remote Smalltalk development environment
been posted in the Russian Smalltalk User Group mailing list in
February, 2010. The proposal has met an acclaim of the community
members, and... nothing happened then.

I have returned to the idea of the SLIME/SWANK analogue for
Smalltalk in the end of December, 2010, on GNU Smalltalk sprint.
During that weekend the core communication protocol has been
drafted, and the first repository commit has been made.

Then I started working on the server part for GNU Smalltalk.
That time I have used NetBSD as primary operating system, and
found some issues with GSt's socket functioning there. I have
started to debug it and... found a bug in the kernel.

The Shampoo development continued some months later, the productivity
has reached its peak April/May and the work was stopped again in July,
2011. During this period the most of the work was been done: the
communication protocol has been implemented in GNU Smalltalk, the
Emacs mode has started functioning.

In autumn, 2011, the code has been imported into Pharo for the further
port development.

In 2012, the code of the both ports has been polished, the Emacs mode
has got a major refactoring (i.e. rewritten almost from scratch), and
some bugs have been fixed. And now it is here.

Shampoo Emacs mode uses some portions of code adopted from the other
open-source projects:

* XML escaping function is taken from the Emacs-Jabber,
  <http://emacs-jabber.sourceforge.net>
* Syntax highlighting rules are taken from the Emacs Smalltalk mode
  bundled with GNU Smalltalk, <http://smalltalk.gnu.org>

I would like to thank the appropriate developers for these awesome tools.

Dmitry
---
title: Shampoo reaches its first release
author: Dmitry Matveev
date: October 20, 2012
---
After two years of passive and lazy development I am proud to
introduce you Shampoo -- an Emacs mode for remote Smalltalk development.

With Shampoo you can:

* Connect to your Smalltalk image and browse its classes and methods;
* Modify existing classes and methods and add new ones;
* Evaluate Smalltalk code and examine its results;
* View everything printed on Transcript.

Obviously, to achieve this functionality the Emacs mode is not enough.
Shampoo is bundled with the Smalltalk server applications that actually
provide the access to an image. Servers are available for GNU Smalltalk
and Pharo.

Shampoo is inspired by the awesome Common Lisp development tools SLIME
and SWANK. I hope that one day Shampoo will reach the same level of
coolness.

Of course, the first release is not very stable, it has bugs and does not
provide a rich end user experience. And that is why I release it! The more
people will try it, the more issues and ideas how to improve it I am going
to mine. Thanks to Kent Beck for [opening my eyes][].

So now please [download][], [install][], [try][] it out and [send me][] your
feedback!

Thanks.

[download]:         download.html
[install]:          installation.html
[try]:              usage.html
[send me]:          contribution.html
[opening my eyes]:  http://twitter.com/KentBeck/status/257871484880572416
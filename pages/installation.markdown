Installation
============

Emacs
-----

Shampoo was tested with Emacs 24.1 on Windows and with Emacs 23.3.1
on GNU/Linux. Download the [latest release][1] and extract the Emacs
mode into a suitable location (`~/.emacs.d` is a good one):

        $ wget -c http://dmitrymatveev.co.uk/shampoo/files/shampoo-emacs-0.0.1.tar.gz
        $ tar -xzvf shampoo-emacs-0.0.1.tar.gz

Then add the following lines to your `~/.emacs` file:

        (add-to-list 'load-path "/path/to/shampoo-emacs")
        (require 'shampoo)

That's all! Refer to the [usage][2] page and learn how to use the
Emacs mode.

Important note: currently the Shampoo mode is designed to work in the
window system environments, like X11 and Windows, since it uses multiple
top-level window frames. The support of the console Emacs version (`-nw`)
is planned in the further releases.

GNU Smalltalk
-------------

Shampoo was tested with GNU Smalltalk 3.2.4 on Ubuntu 11.10. 
GNU Smalltalk version uses the standard packages and has no additional
dependencies. [Download][1] and extract the latest release into 
a suitable location:

        $ wget -c http://dmitrymatveev.co.uk/shampoo/files/shampoo-gst-0.0.1.tar.gz
        $ tar -xzvf shampoo-gst-0.0.1.tar.gz

and then create and install the GNU Smalltalk package:

        $ cd shampoo-gst-0.0.1
        $ gst-package -t ~/.st package.xml

You can ensure that this version works ok on your system by running tests:

        $ gst-sunit -p Shampoo

Pharo
-----

Shampoo for Pharo was developed in Pharo 1.4 (one-click image).
You will need to install the `XML Support` set of packages first by
evaluating this code:

        Gofer new
            squeaksource: 'XMLSupport';
            package: 'ConfigurationOfXMLSupport';
            load.
        (Smalltalk at: #ConfigurationOfXMLSupport) perform: #loadDefault.

Now you can install Shampoo:

        Gofer new
            squeaksource: 'Shampoo';
            version: 'Shampoo-DmitryMatveev.15';
            load


[1]: download.html
[2]: usage.html

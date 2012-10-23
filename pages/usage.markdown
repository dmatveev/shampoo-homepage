Usage
=====

Starting an image-side server
-----------------------------

At first, you need to start the server in your image. To try Shampoo out with GNU Smalltalk, you can create a basic image, load Shampoo into it and start it as a daemon process:

        $ gst-load -iI shampoo.im Shampoo
        $ gst-remote -I shampoo.im --daemon
        $ gst-remote -e "Shampoo.ShampooServer startOn: 9092 login: 'login' pass: '1234'"

The last line does the work. Shampoo will start listening for incoming connections on port `9092`.

In Pharo, you can start Shampoo directly from a Workspace by evaulating this code:

        ShampooServer startOn: 9090 login: 'login' pass: '1234'

*There is a bug with Transcript in version 0.0.1 for Pharo*. You need to evaluate `ShampooTranscript install` after loading the package to make Transcript work with Shampoo. It will be fixed in version 0.0.2.

Connecting with Emacs client
----------------------------

Now you can connect to the image from Emacs. Open Emacs and issue this command:

        M-x shampoo-connect

Shampoo will ask you for login information. The login information is a string in format `username@server:port`. To connect to the GNU Smalltalk image from the example above, type

        login@localhost:9092

and press `Enter`. To connect to the Pharo image from the example above, use

        login@localhost:9090

instead.

If the Shampoo client will connect successfully, you will be asked for a password. Type the one you've specified as `pass:` earlier and press `Enter`. After a successfull authentification the Class Browser will appear on the screen and the image's classes will be loaded into it.

To disconnect from a Shampoo image, invoke

        M-x shampoo-disconnect

Shampoo aims to provide the behavior similar to the popular Smalltalk environments, like Squeak. If you are familiar with any of the existing Smalltalk implementations, you will get into Shampoo quickly.

Shampoo implements the commonly used Smalltalk development environment tools -- the Class Browser, Workspaces and Transcript. 

Class Browser
-------------

Class browser is the main Shampoo frame (yes, frame, not a window -- I will use the Emacs terminology here). This frame is divided into four lists (namespaces, classes, categories and methods) in its top half and has a large source code window in its bottom half. There are some hotkeys to access these windows:

* `C-c n` -- jump to Namespaces;
* `C-c c` -- jump to Classes;
* `C-c [` -- jump to Categories;
* `C-c ]` -- jump to Methods;
* `C-c SPC` -- jump to source code.

Pressing `Enter` in any list window opens the appropriate item. Press `Enter` on any namespace in the Namespaces to view its classes, then press `Enter` on any class to view its method categories, and so on.

Note for Pharo users: since there is no namespaces in Pharo, the Namespaces list displays class categories (i.e. to behave exactly as the System Browser in Pharo).

By default, Shampoo displays the instance side of the classes. Pressing `C-c C-t` switches side from "instance" to "class" and back. Current side is displayed in the header line of the Categories list.

Pressing `C-c C-c` submits the code from the source code window. Depending on what you've opened before from a lists, you can introduce a new class or a method or modify the existing one.

For example, to add a new class:

1. Open a namespace from the Namespaces list;
2. In the source code window, modify the standard subclassing template and press `C-c C-c`.

To change a method in the class:

1. Open a namespace from the Namespaces list;
2. Choose a class from the Classes list;
3. Find a method in the Methods list (you can filter out methods by selecting a particular category in the Categories list);
4. Change the method's code in the source code window and press `C-c C-c`.

In any case, after pressing `C-c C-c` you will receive an informational message about the status of your operation. The message will appear in the Emacs's minibuffer.

If you've closed any Class Browser's window, you always can restore the Class Browser window layout with command

        M-x shampoo-restore-layout

Workspaces
----------

A Workspace is (the only) place in Shampoo where you can evaluate any Smalltalk code. You can open a new Workspace by issuing the command

        M-x shampoo-open-workspace

Type Smalltalk code in the workspace buffer. Select the region you would like to evaluate and press:

* `C-c C-d` to run the code ("Do it");
* `C-c C-p` to run the code and print out the value of the selected expression ("Print it").

For "Print it", the value will be inserted right after the current cursor position. And, again, for any action you will try to "Do" or "Print", you will receive an informational message about the status of your operation. The message will appear in the Emacs's minibuffer.

Transcript
----------

Shampoo Transcript displays all the text being displayed by the Smalltalk's system Transcript. You can not open Transcript frame manually, its appears on the first use. To try it out, open a Workspace and evaluate:

        20 timesRepeat: [Transcript show: 'Hello world'; cr]

In Shampoo, the Transcript buffer is output-only. You can not evaluate code there like in Squeak/Pharo.

WoltLab® Community Framework™ Package Builder
=============================================

Command line interface for building WoltLab® Community Framework™ Packages.

Code Status:
------------

* [![build status](https://secure.travis-ci.org/heikobornholdt/wpb.png)](https://travis-ci.org/heikobornholdt/wpb) travis-ci.org (master branch)

Installation:
-------------

    [heiko@hades ~]$ wget -O /usr/local/bin/wpb https://raw.github.com/heikobornholdt/wpb/master/wpb
    [heiko@hades ~]$ chmod +x /usr/local/bin/wpb

Usage:
------

The source directory looks like this:

    [heiko@hades ~]$ tree -L 1 ~/Development/inactiveUsers/com.wainox.wcf.user.inactive/
    /Users/heiko/Development/inactiveUsers/com.wainox.wcf.user.inactive/
    ├── acpmenu.xml
    ├── acptemplates
    ├── cronjobs.xml
    ├── de-informal.xml
    ├── de.xml
    ├── en.xml
    ├── eventlistener.xml
    ├── files
    ├── fr.xml
    ├── groupoptions.xml
    ├── inactiveactiontypes.xml
    ├── install.sql
    ├── optionals
    ├── options.xml
    ├── package.xml
    ├── pip
    ├── requirements
    └── update.sql    

    5 directories, 13 files

Build a package from source:

    [heiko@hades ~]$ wpb ~/Development/inactiveUsers/com.wainox.wcf.user.inactive/
    Create package /Users/heiko/com.wainox.wcf.user.inactive.tar...done!
    All done. Rejoice!

Build a compressed package from source:

    [heiko@hades ~]$ wpb -z ~/Development/inactiveUsers/com.wainox.wcf.user.inactive/
    Create package /Users/heiko/com.wainox.wcf.user.inactive.tar...done!
    Compress package /Users/heiko/com.wainox.wcf.user.inactive.tar...done!
    All done. Rejoice!

Build a package to a specific target directory from source:

    [heiko@hades ~]$ wpb -t ~/Downloads ~/Development/inactiveUsers/com.wainox.wcf.user.inactive/
    Create package /Users/heiko/Downloads/com.wainox.wcf.user.inactive.tar...done!
    All done. Rejoice!

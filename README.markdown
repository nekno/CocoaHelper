# CocoaHelper

This project began because I was interested in git submodules. There are many "category collections" out there, and this is just another one that happens to contain extensions I have found useful or interesting. This project has recently been restructured to better support build the framework for both OSX and iOS.

## Install As A Sub Project

#### Add A Submodule To Project

    cd <Project Directory>
    git submodule add git@github.com:michaelreneer/CocoaHelper.git

- Drag the project file from Finder into the Frameworks folder in the Xcode Project Navigator.
- Add the framework to the *Target Dependencies* phase in the *Build Phases* of the *Target*.
- Add the framework to the *Link Binary With Libraries* phase in the *Build Phases* of the *Target*.
- Commit changes.

    git commit -am 'Added CocoaHelper framework to project.'

#### Update A Submodule In A Project

    cd <Project Directory>/CocoaHelper
    git pull
    cd <Project Directory>
    git commit -am 'Updated CocoaHelper framework in project.'

For more information see the git documentation on [submodules][]

## License

Copyright (c) 2012-2013 Michael Reneer. See LICENSE for details.

[submodules]: http://git-scm.com/book/en/Git-Tools-Submodules "Submodules"

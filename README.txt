Premake generator for Conan C/C++ Package manager https://conan.io

It is a **dynamic generator**, it is not embedded in the conan codebase,
but rather is published as a package, you can depend on it to retrieve it
and use it in your projects.

That will allow also to version and fork it easily. 

It is still very early stage, it works only with the feature/dynamic_generators
of my conan fork, but probably will be released in conan 0.9.

Tested with a very simple example:

To register the generator:
$ conan export memsharded/testing

To use the generator (together with the "hello" example lib)
$ cd example
$ conan install  # with your settings
# e.g. conan install --build -s compiler=gcc -s compiler.version=4.9 ...
$ premake4 gmake  # also, the build config must match the install config
$ make

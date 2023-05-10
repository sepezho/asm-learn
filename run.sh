#/bin/bash
rm -rf ./hello
rm -rf ./hello.o 
nasm -f macho64 hello.asm
ld -e _start -macosx_version_min 13.1 -lSystem -o hello hello.o -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib
./hello

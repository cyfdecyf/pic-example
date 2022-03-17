# What happens when link to PIC enabled static lib?

Take a look at [diffu](./dis/diffu.patch), which is the diff of executable assembly code.

[gen.sh](./gen.sh) compiles and generates assembly code and diff.

Generated on ArchWsl2 with GCC 11.2.0.

## References:

- [Position Independent Code (PIC) in shared libraries on x64](https://eli.thegreenplace.net/2011/11/11/position-independent-code-pic-in-shared-libraries-on-x64)

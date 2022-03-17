# What happens when link to PIC enabled static lib?

Take a look at [diffu](./dis/diffu.patch), which is the diff of executable assembly code.

[gen.sh](./gen.sh) compiles and generates assembly code and diff.

Outputs in this repo are generated on ArchWsl2 with GCC 11.2.0.

## Some observations

non-PIC compilation may do more inlining for simple function. Here's the assembly code
in [e.s](./dis/e.s):

```assembly
0000000000001130 <ml_util_func>:
    1130:	8d 47 01             	lea    0x1(%rdi),%eax
    1133:	c3                   	ret    
    1134:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    113b:	00 00 00 00 
    113f:	90                   	nop

0000000000001140 <ml_func>:
    1140:	8d 44 3e 01          	lea    0x1(%rsi,%rdi,1),%eax
    1144:	03 05 de 2e 00 00    	add    0x2ede(%rip),%eax        # 4028 <myglob>
    114a:	89 05 d8 2e 00 00    	mov    %eax,0x2ed8(%rip)        # 4028 <myglob>
    1150:	01 f0                	add    %esi,%eax
    1152:	c3                   	ret    
```

`ml_util_func` is too trivial and this kind of optimization can also be done in
PIC version, but it's not.

### On macOS

On x86\_64, macOS 12.0.1 with Apple clang-1300.0.29.30, non-PIC and PIC compile
gets exactly the same output.

## References:

- [Position Independent Code (PIC) in shared libraries on x64](https://eli.thegreenplace.net/2011/11/11/position-independent-code-pic-in-shared-libraries-on-x64)

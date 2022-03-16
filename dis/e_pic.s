
build/e_pic:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .text:

0000000000001020 <main>:
    1020:	be 02 00 00 00       	mov    $0x2,%esi
    1025:	bf 01 00 00 00       	mov    $0x1,%edi
    102a:	e9 11 01 00 00       	jmp    1140 <ml_func>
    102f:	90                   	nop

0000000000001030 <_start>:
    1030:	f3 0f 1e fa          	endbr64 
    1034:	31 ed                	xor    %ebp,%ebp
    1036:	49 89 d1             	mov    %rdx,%r9
    1039:	5e                   	pop    %rsi
    103a:	48 89 e2             	mov    %rsp,%rdx
    103d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1041:	50                   	push   %rax
    1042:	54                   	push   %rsp
    1043:	45 31 c0             	xor    %r8d,%r8d
    1046:	31 c9                	xor    %ecx,%ecx
    1048:	48 8d 3d d1 ff ff ff 	lea    -0x2f(%rip),%rdi        # 1020 <main>
    104f:	ff 15 83 2f 00 00    	call   *0x2f83(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1055:	f4                   	hlt    
    1056:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    105d:	00 00 00 

0000000000001060 <deregister_tm_clones>:
    1060:	48 8d 3d c9 2f 00 00 	lea    0x2fc9(%rip),%rdi        # 4030 <__TMC_END__>
    1067:	48 8d 05 c2 2f 00 00 	lea    0x2fc2(%rip),%rax        # 4030 <__TMC_END__>
    106e:	48 39 f8             	cmp    %rdi,%rax
    1071:	74 15                	je     1088 <deregister_tm_clones+0x28>
    1073:	48 8b 05 66 2f 00 00 	mov    0x2f66(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    107a:	48 85 c0             	test   %rax,%rax
    107d:	74 09                	je     1088 <deregister_tm_clones+0x28>
    107f:	ff e0                	jmp    *%rax
    1081:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1088:	c3                   	ret    
    1089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001090 <register_tm_clones>:
    1090:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4030 <__TMC_END__>
    1097:	48 8d 35 92 2f 00 00 	lea    0x2f92(%rip),%rsi        # 4030 <__TMC_END__>
    109e:	48 29 fe             	sub    %rdi,%rsi
    10a1:	48 89 f0             	mov    %rsi,%rax
    10a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10a8:	48 c1 f8 03          	sar    $0x3,%rax
    10ac:	48 01 c6             	add    %rax,%rsi
    10af:	48 d1 fe             	sar    %rsi
    10b2:	74 14                	je     10c8 <register_tm_clones+0x38>
    10b4:	48 8b 05 35 2f 00 00 	mov    0x2f35(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10bb:	48 85 c0             	test   %rax,%rax
    10be:	74 08                	je     10c8 <register_tm_clones+0x38>
    10c0:	ff e0                	jmp    *%rax
    10c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10c8:	c3                   	ret    
    10c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010d0 <__do_global_dtors_aux>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	80 3d 51 2f 00 00 00 	cmpb   $0x0,0x2f51(%rip)        # 402c <completed.0>
    10db:	75 33                	jne    1110 <__do_global_dtors_aux+0x40>
    10dd:	55                   	push   %rbp
    10de:	48 83 3d 12 2f 00 00 	cmpq   $0x0,0x2f12(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10e5:	00 
    10e6:	48 89 e5             	mov    %rsp,%rbp
    10e9:	74 0d                	je     10f8 <__do_global_dtors_aux+0x28>
    10eb:	48 8b 3d 2e 2f 00 00 	mov    0x2f2e(%rip),%rdi        # 4020 <__dso_handle>
    10f2:	ff 15 00 2f 00 00    	call   *0x2f00(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10f8:	e8 63 ff ff ff       	call   1060 <deregister_tm_clones>
    10fd:	c6 05 28 2f 00 00 01 	movb   $0x1,0x2f28(%rip)        # 402c <completed.0>
    1104:	5d                   	pop    %rbp
    1105:	c3                   	ret    
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 
    1110:	c3                   	ret    
    1111:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1118:	00 00 00 00 
    111c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001120 <frame_dummy>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	e9 67 ff ff ff       	jmp    1090 <register_tm_clones>
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <ml_util_func>:
    1130:	8d 47 01             	lea    0x1(%rdi),%eax
    1133:	c3                   	ret    
    1134:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    113b:	00 00 00 00 
    113f:	90                   	nop

0000000000001140 <ml_func>:
    1140:	53                   	push   %rbx
    1141:	89 f3                	mov    %esi,%ebx
    1143:	e8 e8 ff ff ff       	call   1130 <ml_util_func>
    1148:	48 8d 15 d9 2e 00 00 	lea    0x2ed9(%rip),%rdx        # 4028 <myglob>
    114f:	01 d8                	add    %ebx,%eax
    1151:	03 02                	add    (%rdx),%eax
    1153:	89 02                	mov    %eax,(%rdx)
    1155:	01 d8                	add    %ebx,%eax
    1157:	5b                   	pop    %rbx
    1158:	c3                   	ret    

Disassembly of section .fini:

000000000000115c <_fini>:
    115c:	f3 0f 1e fa          	endbr64 
    1160:	48 83 ec 08          	sub    $0x8,%rsp
    1164:	48 83 c4 08          	add    $0x8,%rsp
    1168:	c3                   	ret    

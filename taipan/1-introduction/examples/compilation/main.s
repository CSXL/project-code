	.file	"main.faed492c2dc42a7f-cgu.0"
	.section	.text._ZN3std2rt10lang_start17hc4448fa6cc4235b5E,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17hc4448fa6cc4235b5E
	.globl	_ZN3std2rt10lang_start17hc4448fa6cc4235b5E
	.p2align	4
	.type	_ZN3std2rt10lang_start17hc4448fa6cc4235b5E,@function
_ZN3std2rt10lang_start17hc4448fa6cc4235b5E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%ecx, %eax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, (%rsp)
	movq	%rsp, %rdi
	leaq	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.0(%rip), %rsi
	movzbl	%al, %r8d
	callq	*_ZN3std2rt19lang_start_internal17h6eef6ef33d841fb9E@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std2rt10lang_start17hc4448fa6cc4235b5E, .Lfunc_end0-_ZN3std2rt10lang_start17hc4448fa6cc4235b5E
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E","ax",@progbits
	.p2align	4
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f931349dd3f1ddbE
	callq	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fb65e3760848f17E
	movzbl	%al, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E, .Lfunc_end1-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E
	.cfi_endproc

	.section	.text._ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f931349dd3f1ddbE,"ax",@progbits
	.p2align	4
	.type	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f931349dd3f1ddbE,@function
_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f931349dd3f1ddbE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZN4core3ops8function6FnOnce9call_once17h73c57d24464eedf5E
	#APP
	#NO_APP
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f931349dd3f1ddbE, .Lfunc_end2-_ZN3std3sys9backtrace28__rust_begin_short_backtrace17h0f931349dd3f1ddbE
	.cfi_endproc

	.section	".text._ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha134bb68f874cea4E","ax",@progbits
	.p2align	4
	.type	_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha134bb68f874cea4E,@function
_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha134bb68f874cea4E:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rsi, (%rdi)
	movq	$2, 8(%rdi)
	movq	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.1(%rip), %rsi
	movq	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.1+8(%rip), %rcx
	movq	%rsi, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rdx, 16(%rdi)
	movq	$1, 24(%rdi)
	retq
.Lfunc_end3:
	.size	_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha134bb68f874cea4E, .Lfunc_end3-_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha134bb68f874cea4E
	.cfi_endproc

	.section	.text._ZN4core3fmt2rt8Argument11new_display17h692b6872ab6eafc3E,"ax",@progbits
	.p2align	4
	.type	_ZN4core3fmt2rt8Argument11new_display17h692b6872ab6eafc3E,@function
_ZN4core3fmt2rt8Argument11new_display17h692b6872ab6eafc3E:
	.cfi_startproc
	movq	%rdi, %rax
	movq	%rsi, -16(%rsp)
	movq	_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17hbe287860da927f4dE@GOTPCREL(%rip), %rcx
	movq	%rcx, -8(%rsp)
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rdi)
	movq	-8(%rsp), %rcx
	movq	%rcx, 8(%rdi)
	retq
.Lfunc_end4:
	.size	_ZN4core3fmt2rt8Argument11new_display17h692b6872ab6eafc3E, .Lfunc_end4-_ZN4core3fmt2rt8Argument11new_display17h692b6872ab6eafc3E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcdb0454452c07e98E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcdb0454452c07e98E,@function
_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcdb0454452c07e98E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rdi
	callq	_ZN4core3ops8function6FnOnce9call_once17h8067ebe9e705bc48E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcdb0454452c07e98E, .Lfunc_end5-_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcdb0454452c07e98E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h73c57d24464eedf5E,"ax",@progbits
	.p2align	4
	.type	_ZN4core3ops8function6FnOnce9call_once17h73c57d24464eedf5E,@function
_ZN4core3ops8function6FnOnce9call_once17h73c57d24464eedf5E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*%rdi
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ops8function6FnOnce9call_once17h73c57d24464eedf5E, .Lfunc_end6-_ZN4core3ops8function6FnOnce9call_once17h73c57d24464eedf5E
	.cfi_endproc

	.section	.text._ZN4core3ops8function6FnOnce9call_once17h8067ebe9e705bc48E,"ax",@progbits
	.p2align	4
	.type	_ZN4core3ops8function6FnOnce9call_once17h8067ebe9e705bc48E,@function
_ZN4core3ops8function6FnOnce9call_once17h8067ebe9e705bc48E:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
.Ltmp0:
	leaq	8(%rsp), %rdi
	callq	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E
.Ltmp1:
	movl	%eax, 4(%rsp)
	jmp	.LBB7_3
.LBB7_1:
	movq	24(%rsp), %rdi
	callq	_Unwind_Resume@PLT
.LBB7_2:
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 24(%rsp)
	movl	%eax, 32(%rsp)
	jmp	.LBB7_1
.LBB7_3:
	movl	4(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	_ZN4core3ops8function6FnOnce9call_once17h8067ebe9e705bc48E, .Lfunc_end7-_ZN4core3ops8function6FnOnce9call_once17h8067ebe9e705bc48E
	.cfi_endproc
	.section	.gcc_except_table._ZN4core3ops8function6FnOnce9call_once17h8067ebe9e705bc48E,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end7-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2, 0x0

	.section	".text._ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf7a5255f0b5e0c9E","ax",@progbits
	.p2align	4
	.type	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf7a5255f0b5e0c9E,@function
_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf7a5255f0b5e0c9E:
	.cfi_startproc
	retq
.Lfunc_end8:
	.size	_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf7a5255f0b5e0c9E, .Lfunc_end8-_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17haf7a5255f0b5e0c9E
	.cfi_endproc

	.section	".text._ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fb65e3760848f17E","ax",@progbits
	.p2align	4
	.type	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fb65e3760848f17E,@function
_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fb65e3760848f17E:
	.cfi_startproc
	xorl	%eax, %eax
	retq
.Lfunc_end9:
	.size	_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fb65e3760848f17E, .Lfunc_end9-_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h4fb65e3760848f17E
	.cfi_endproc

	.section	.text._ZN4main7add_one17h6adf6d066fc773b5E,"ax",@progbits
	.p2align	4
	.type	_ZN4main7add_one17h6adf6d066fc773b5E,@function
_ZN4main7add_one17h6adf6d066fc773b5E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	incl	%edi
	movl	%edi, 4(%rsp)
	seto	%al
	jo	.LBB10_2
	movl	4(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:
	.cfi_def_cfa_offset 16
	leaq	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.3(%rip), %rdi
	callq	*_ZN4core9panicking11panic_const24panic_const_add_overflow17h4bcf97257811fecfE@GOTPCREL(%rip)
.Lfunc_end10:
	.size	_ZN4main7add_one17h6adf6d066fc773b5E, .Lfunc_end10-_ZN4main7add_one17h6adf6d066fc773b5E
	.cfi_endproc

	.section	.text._ZN4main4main17h4bb54176a320b11fE,"ax",@progbits
	.p2align	4
	.type	_ZN4main4main17h4bb54176a320b11fE,@function
_ZN4main4main17h4bb54176a320b11fE:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movl	$10, %edi
	callq	_ZN4main7add_one17h6adf6d066fc773b5E
	movl	%eax, 4(%rsp)
	leaq	72(%rsp), %rdi
	leaq	4(%rsp), %rsi
	callq	_ZN4core3fmt2rt8Argument11new_display17h692b6872ab6eafc3E
	movq	72(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	8(%rsp), %rdi
	leaq	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.6(%rip), %rsi
	leaq	56(%rsp), %rdx
	callq	_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117ha134bb68f874cea4E
	leaq	8(%rsp), %rdi
	callq	*_ZN3std2io5stdio6_print17h8388db5f12d6470aE@GOTPCREL(%rip)
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZN4main4main17h4bb54176a320b11fE, .Lfunc_end11-_ZN4main4main17h4bb54176a320b11fE
	.cfi_endproc

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	movslq	%edi, %rsi
	leaq	_ZN4main4main17h4bb54176a320b11fE(%rip), %rdi
	xorl	%ecx, %ecx
	callq	_ZN3std2rt10lang_start17hc4448fa6cc4235b5E
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	main, .Lfunc_end12-main
	.cfi_endproc

	.type	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.0,@object
	.section	.data.rel.ro..Lanon.e8952c3684e1b86e3fe707b0810e9e1c.0,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.0:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hcdb0454452c07e98E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h150625209606f352E
	.size	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.0, 48

	.type	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.1,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.1:
	.zero	8
	.zero	8
	.size	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.1, 16

	.type	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.2,@object
	.section	.rodata..Lanon.e8952c3684e1b86e3fe707b0810e9e1c.2,"a",@progbits
.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.2:
	.ascii	"main.rs"
	.size	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.2, 7

	.type	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.3,@object
	.section	.data.rel.ro..Lanon.e8952c3684e1b86e3fe707b0810e9e1c.3,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.3:
	.quad	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.2
	.asciz	"\007\000\000\000\000\000\000\000\003\000\000\000\003\000\000"
	.size	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.3, 24

	.type	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.4,@object
	.section	.rodata..Lanon.e8952c3684e1b86e3fe707b0810e9e1c.4,"a",@progbits
.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.4:
	.ascii	"The result is: "
	.size	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.4, 15

	.type	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.5,@object
	.section	.rodata..Lanon.e8952c3684e1b86e3fe707b0810e9e1c.5,"a",@progbits
.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.5:
	.byte	10
	.size	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.5, 1

	.type	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.6,@object
	.section	.data.rel.ro..Lanon.e8952c3684e1b86e3fe707b0810e9e1c.6,"aw",@progbits
	.p2align	3, 0x0
.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.6:
	.quad	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.4
	.asciz	"\017\000\000\000\000\000\000"
	.quad	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.5
	.asciz	"\001\000\000\000\000\000\000"
	.size	.Lanon.e8952c3684e1b86e3fe707b0810e9e1c.6, 32

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"awG",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3, 0x0
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality
	.ident	"rustc version 1.89.0-nightly (414482f6a 2025-05-13)"
	.section	".note.GNU-stack","",@progbits

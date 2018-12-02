# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	1
_bool_tag:
	.word	2
_string_tag:
	.word	0
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const11:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const1
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const3
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	0
	.word	5
	.word	String_dispTab
	.word	int_const4
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	0
	.word	6
	.word	String_dispTab
	.word	int_const2
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const5
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	0
	.word	7
	.word	String_dispTab
	.word	int_const6
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	0
	.word	8
	.word	String_dispTab
	.word	int_const7
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	0
	.word	10
	.word	String_dispTab
	.word	int_const8
	.ascii	"tests/default_str.cl"
	.byte	0	
	.align	2
	.word	-1
int_const8:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	20
	.word	-1
int_const7:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const6:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const5:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const4:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const3:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const2:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const1:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const0:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	1
	.word	-1
Object_protObj:
	.word	3
	.word	3
	.word	Object_dispTab
	.word	-1
IO_protObj:
	.word	4
	.word	3
	.word	IO_dispTab
	.word	IO_protObj
	.word	-1
Main_protObj:
	.word	5
	.word	3
	.word	Main_dispTab
	.word	-1
Int_protObj:
	.word	1
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
Bool_protObj:
	.word	2
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
String_protObj:
	.word	0
	.word	5
	.word	String_dispTab
	.word	Int_protObj
	.word	0
class_nameTab:
	.word	str_const9
	.word	str_const7
	.word	str_const8
	.word	str_const5
	.word	str_const6
	.word	str_const10
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
	.word	Main.main
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Int_init:
	sw	$zero 12($a0)
	jr	$ra	
Object_init:
	jr	$ra	
Bool_init:
	sw	$zero 12($a0)
	jr	$ra	
String_init:
	jr	$ra	
Main_init:
# preparing init frame
	move	$s0 $a0
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 12
# prepared init frame
	jal	IO_init
	move	$a0 $s0
# unwinding init frame
	lw	$ra 0($fp)
	lw	$fp -8($fp)
	addiu	$sp $sp 12
# unwinded init frame
	jr	$ra	
IO_init:
# preparing init frame
	move	$s0 $a0
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 12
# prepared init frame
	jal	Object_init
	move	$a0 $s0
# unwinding init frame
	lw	$ra 0($fp)
	lw	$fp -8($fp)
	addiu	$sp $sp 12
# unwinded init frame
	jr	$ra	
Main.main:
# preparing frame
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	addiu	$fp $sp 12
# prepared frame
	# begin code to output debug message executing Main:main(0)

	# end code to output debug message executing Main:main(0)

# let class begin
	# begin code to output debug message entered let statement with symbol s of type String

	# end code to output debug message entered let statement with symbol s of type String

	sw	$a0 0($sp)
	addiu	$sp $sp -4
	# begin code to output debug message Allocated position  in stack at $fp + -3

	# end code to output debug message Allocated position  in stack at $fp + -3

	lw	$t1 -12($fp)
# dispatch class begin
	# begin code to output debug message going to emit a dispatch (static type) Main:out_string(1)

	# end code to output debug message going to emit a dispatch (static type) Main:out_string(1)

	move	$a0 $s0
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	move	$s1 $a0
# looking up local variable s at $fp + -3
	lw	$a0 -12($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$t1 8($s1)
	lw	$t2 12($t1)
	la	$t1 IO.out_string
	la	$t3 IO.out_int
	b	label1001
label1000:
	# begin code to output debug message -------> 
	# end code to output debug message -------> 
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	b	label1002
label1001:
	beq	$t2 $t1 label1000
	beq	$t2 $t3 label1000
label1002:
	jalr		$t2
	lw	$s0 -4($fp)
	lw	$ra 0($fp)
	addiu	$sp $sp 8
	# begin code to output debug message exiting dispatch (static type) Main:out_string(1)

	# end code to output debug message exiting dispatch (static type) Main:out_string(1)

# dispatch class end
	lw	$a0 4($sp)
	addiu	$sp $sp 4
# let class end
	addiu	$sp $sp 0
	# begin code to output debug message about to exit Main:main

	# end code to output debug message about to exit Main:main

# unwinding frame
	lw	$ra 0($fp)
	lw	$fp -8($fp)
	addiu	$sp $sp 12
# unwinded frame
	# begin code to output debug message exiting Main:main

	# end code to output debug message exiting Main:main

	jr	$ra	
runtime_type_check:
	li	$t2 3
	bne	$a0 $t2 label1003
	li	$t1 1
	li	$t3 3
	bne	$a1 $t3 label1004
	jr	$ra	
label1004:
	li	$t3 0
	bne	$a1 $t3 label1005
	jr	$ra	
label1005:
	li	$t1 0
	jr	$ra	
label1003:
	li	$t2 4
	bne	$a0 $t2 label1006
	li	$t1 1
	li	$t3 4
	bne	$a1 $t3 label1007
	jr	$ra	
label1007:
	li	$t3 3
	bne	$a1 $t3 label1008
	jr	$ra	
label1008:
	li	$t3 0
	bne	$a1 $t3 label1009
	jr	$ra	
label1009:
	li	$t1 0
	jr	$ra	
label1006:
	li	$t2 1
	bne	$a0 $t2 label1010
	li	$t1 1
	li	$t3 1
	bne	$a1 $t3 label1011
	jr	$ra	
label1011:
	li	$t3 3
	bne	$a1 $t3 label1012
	jr	$ra	
label1012:
	li	$t3 0
	bne	$a1 $t3 label1013
	jr	$ra	
label1013:
	li	$t1 0
	jr	$ra	
label1010:
	li	$t2 2
	bne	$a0 $t2 label1014
	li	$t1 1
	li	$t3 2
	bne	$a1 $t3 label1015
	jr	$ra	
label1015:
	li	$t3 3
	bne	$a1 $t3 label1016
	jr	$ra	
label1016:
	li	$t3 0
	bne	$a1 $t3 label1017
	jr	$ra	
label1017:
	li	$t1 0
	jr	$ra	
label1014:
	li	$t2 0
	bne	$a0 $t2 label1018
	li	$t1 1
	li	$t3 0
	bne	$a1 $t3 label1019
	jr	$ra	
label1019:
	li	$t3 3
	bne	$a1 $t3 label1020
	jr	$ra	
label1020:
	li	$t3 0
	bne	$a1 $t3 label1021
	jr	$ra	
label1021:
	li	$t1 0
	jr	$ra	
label1018:
	li	$t2 5
	bne	$a0 $t2 label1022
	li	$t1 1
	li	$t3 5
	bne	$a1 $t3 label1023
	jr	$ra	
label1023:
	li	$t3 4
	bne	$a1 $t3 label1024
	jr	$ra	
label1024:
	li	$t3 3
	bne	$a1 $t3 label1025
	jr	$ra	
label1025:
	li	$t3 0
	bne	$a1 $t3 label1026
	jr	$ra	
label1026:
	li	$t1 0
	jr	$ra	
label1022:
	jr	$ra	

# end of generated code

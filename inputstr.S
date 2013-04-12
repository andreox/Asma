.data

  str : .space 128
	str_len = .-str

.text

	.global main

main :

		movl	$3 , %eax
		movl	$0 , %ebx
		movl	$str , %ecx
		movl	$str_len , %edx
		int		$0x80

		movl	$4 , %eax
		movl	$1 , %ebx
		movl	$str , %ecx
		movl	$str_len , %edx
		int		$0x80

		movl	$1 , %eax
		movl	$0 , %ebx
		int		$0x80

		leave
		ret

.data

      	    hello : .string "Hello World!\n"
	    hello_len = .-hello

.text

	    .global main

main :
	
	    movl	$4 , %eax
	    movl	$1 , %ebx
	    movl 	$hello , %ecx
	    movl	$hello_len , %edx
	    int	        $0x80

	    movl	$1 , %eax
	    movl	$0 , %ebx
	    int	        $0x80

.data
msg1: .asciiz "Enter the temperature in F: "
msg2: .asciiz "The temperature in Celcius is "

.text
addi $v0, $zero, 4	#print msg1
la $a0, msg1
syscall 

li $v0, 5
syscall

add $t1, $v0, $zero	#t1 = v0
addi $t1, $t1, -32	#t1 = t1 - 32
li $t2, 5		#t2 = 5
mul $t1, $t1, $t2	#t1 = t1 * t2
li $t3, 9		#t3 = 9 
div $t1, $t1, $t3	#t1 = t1 / $t3

addi $v0, $zero, 4	#print msg2
la $a0, msg2
syscall

li $v0, 1
addi $a0, $t1, 0
syscall 

li $v0, 10
syscall


 

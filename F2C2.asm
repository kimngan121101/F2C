.data
	p: .asciiz "Temperature (F): " 
	m: .asciiz "Temperature (C): "
	C: .float 0.0
	F: .float 0.0
	c1: .float 32.0
	c2: .float 9.0
	c3: .float 5.0

.text
	li $v0, 4
	la $a0, p
	syscall
	
	li $v0, 6
	syscall
	
	l.s $f1, c1
	l.s $f2, c2
	l.s $f3, c3
	
	sub.s $f0, $f0, $f1
	mul.s $f0, $f0, $f3
	div.s $f0, $f0, $f2
	
	li $v0, 4
	la $a0, m
	syscall
	
	li $v0, 2
	mov.s $f12, $f0
	syscall
	
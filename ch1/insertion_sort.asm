
global _start
section .text
_start: mov rax,1
        mov rdi,1
        mov rsi, message
        mov rdx, 14
        syscall
        mov rax,1
        mov rdi,1
        mov rsi, message2
        mov rdx, 1
        syscall


        mov r8,1
        mov r9,14

        mov rsi, message
outer_loop: 
        cmp r8, r9
        jge done

        mov r10, r8
inner_loop:
        xor r12,r12
        xor r11, r11
        mov al, byte [message + r10]
        mov bl, byte [message + r10 - 1]

        cmp bl, al        
        jle inner_loop_next
        
        mov byte [message + r10], bl
        mov byte [message + r10 - 1], al

        

inner_loop_next:
        dec r10
        cmp r10, 0
        jne inner_loop

        inc r8
        jmp outer_loop
done:
        mov rax,1
        mov rdi,1
        mov rsi, message
        mov rdx, 14
        syscall
        mov rax,1
        mov rdi,1
        mov rsi, message2
        mov rdx, 1
        syscall
        
        mov rax, 60
        xor rdi, rdi
        syscall
        section .data
message: db "NMLKJIHGFEDCBA", 10
message2: db  10

.model compact
.code
org 100h
.386

;							Mohammed Hossain
;							Professor M. Vulis
;							CSC210 
;							PROJECT 1
;							Game of Fifteen


START:
    ;Sets Video Mode
	mov ah, 13h 
	mov al, 13h 
	int 10h

GAME:

	 mov ax,0600h ;scroll entire screen
	 mov bh,30h ;normal attribute
	 mov cx,0000h ;start at 00,00
	 mov dx,184FH ;end at 24,79 (hex=18,4F)
	 int 10H ;invoke the interrupt 
	
				;Game Wakening Screen 
				mov al, 0
				mov bx, 0060h
				mov cx, msg0end - offset msg0
				mov dl, 28
				mov dh, 1
				push cs
				pop es
				mov bp, offset msg0
				mov ah, 13h
				int 10h
				jmp msg0end
				msg0 db '                      '
				msg0end:	
				
				mov al, 0
				mov bh, 0
				mov bl, 60h
				mov cx, msgxend - offset msgx
				mov dl, 28  ;mov dl changes the x-axis starting point
				mov dh, 2   ;mov dh changes the y-axis starting point 
				push cs
				pop es
				mov bp, offset msgx
				mov ah, 13h
				int 10h
				jmp msgxend
				msgx db '  '
				msgxend:


				mov al, 0
				mov bh, 0
				mov bl, 9fh
				mov cx, msgwend - offset msgw
				mov dl, 30  ;mov dl changes the x-axis starting point
				mov dh, 2   ;mov dh changes the y-axis starting point 
				push cs
				pop es
				mov bp, offset msgw
				mov ah, 13h
				int 10h
				jmp msgwend
				msgw db '  GAME OF FIFTEEN   '
				msgwend:	
				
				
				mov al, 0
				mov bh, 0
				mov bl, 60h
				mov cx, msgpend - offset msgp
				mov dl, 48  ;mov dl changes the x-axis starting point
				mov dh, 2   ;mov dh changes the y-axis starting point 
				push cs
				pop es
				mov bp, offset msgp
				mov ah, 13h
				int 10h
				jmp msgpend
				msgp db '  '
				msgpend:
				
				
				mov al, 0
				mov bh, 0
				mov bl, 60h ;changes the color of the text(foreground) color 
				mov cx, msgzend - offset msgz
				mov dl, 28
				mov dh, 3
				push cs
				pop es
				mov bp, offset msgz
				mov ah, 13h
				int 10h
				jmp msgzend
				msgz db '                      '
				msgzend:
				
				
				mov al,1
				mov bh, 0
				mov bl, 30h
				mov cx, msgn1end - offset msgn1
				mov dl, 24
				mov dh, 12
				push cs
				pop es
				mov bp, offset msgn1
				mov ah, 13h
				int 10h
				jmp msgn1end
				msgn1 db 'Press any key to continue!'
				msgn1end:
				
				
				mov al, 0
				mov bh, 0
				mov bl, 35h
				mov cx, msgz1end - offset msgz1
				mov dl, 8  ;mov dl changes the x-axis starting point
				mov dh, 22   ;mov dh changes the y-axis starting point 
				push cs
				pop es
				mov bp, offset msgz1
				mov ah, 13h
				int 10h
				jmp msgz1end
				msgz1 db '-by Mohammed Hossain'
				msgz1end:
	
	
			; The program will wait for any key input to enter the game screen
			mov     ah, 0 
			int     16h 
	
	
	;Enters the Game Screen
	mov ax, 0600h
	mov bh, 3eh
	mov cx, 0000h
	mov dx, 184Fh 
	int 10h
	
		mov al, 0
		mov bh, 0
		mov bl, 60h ;changes the color of the text(foreground) color 
		mov cx, msgn2end - offset msgn2
		mov dl, 28
		mov dh, 1
		push cs
		pop es
		mov bp, offset msgn2
		mov ah, 13h
		int 10h
		jmp msgn2end
		msgn2 db '                      '
		msgn2end:	
		
		mov al, 0
		mov bh, 0
		mov bl, 60h
		mov cx, msgn3end - offset msgn3
		mov dl, 28  
		mov dh, 2   
		push cs
		pop es
		mov bp, offset msgn3
		mov ah, 13h
		int 10h
		jmp msgn3end
		msgn3 db '  '
		msgn3end:


		mov al, 0
		mov bh, 0
		mov bl, 9fh
		mov cx, msgn4end - offset msgn4
		mov dl, 30  ;mov dl changes the x-axis starting point
		mov dh, 2   ;mov dh changes the y-axis starting point 
		push cs
		pop es
		mov bp, offset msgn4
		mov ah, 13h
		int 10h
		jmp msgn4end
		msgn4 db '  GAME OF FIFTEEN   '
		msgn4end:	
		
		
		mov al, 0
		mov bh, 0
		mov bl, 60h
		mov cx, msgn5end - offset msgn5
		mov dl, 48  ;mov dl changes the x-axis starting point
		mov dh, 2   ;mov dh changes the y-axis starting point 
		push cs
		pop es
		mov bp, offset msgn5
		mov ah, 13h
		int 10h
		jmp msgn5end
		msgn5 db '  '
		msgn5end:
		
		
		mov al, 0
		mov bh, 0
		mov bl, 60h ;changes the color of the text(foreground) color 
		mov cx, msgn6end - offset msgn6
		mov dl, 28
		mov dh, 3
		push cs
		pop es
		mov bp, offset msgn6
		mov ah, 13h
		int 10h
		jmp msgn6end
		msgn6 db '                      '
		msgn6end:
	
	
					;Instruction box for the player
					mov al,1
					mov bh, 0
					mov bl, 9fh
					mov cx, msgiend - offset msgi
					mov dl, 8
					mov dh, 7
					push cs
					pop es
					mov bp, offset msgi
					mov ah, 13h
					int 10h
					jmp msgiend
					msgi db 'Directions'
					msgiend:	

					mov al,1
					mov bh, 0
					mov bl, 30h
					mov cx, msguend - offset msgu
					mov dl, 8
					mov dh, 9
					push cs
					pop es
					mov bp, offset msgu
					mov ah, 13h
					int 10h
					jmp msguend
					msgu db " u               UP"
					msguend:

					mov al,1
					mov bh, 0
					mov bl, 30h
					mov cx, msguxxend - offset msguxx
					mov dl, 8
					mov dh, 11
					push cs
					pop es
					mov bp, offset msguxx
					mov ah, 13h
					int 10h
					jmp msguxxend
					msguxx db " j               DOWN"
					msguxxend:

					mov al,	1
					mov bh, 0
					mov bl, 30h
					mov cx, msgaend - offset msga
					mov dl, 8
					mov dh, 13
					push cs
					pop es
					mov bp, offset msga
					mov ah, 13h
					int 10h
					jmp msgaend
					msga db " h               LEFT"
					msgaend:
					
					mov al,1
					mov bh, 0
					mov bl, 30h
					mov cx, msguzzend - offset msguzz
					mov dl, 8
					mov dh, 15
					push cs
					pop es
					mov bp, offset msguzz
					mov ah, 13h
					int 10h
					jmp msguzzend
					msguzz db " k               RIGHT"
					msguzzend:

					mov al,	1
					mov bh, 0
					mov bl, 30h
					mov cx, msghend - offset msgh
					mov dl, 8
					mov dh, 19
					push cs
					pop es
					mov bp, offset msgh
					mov ah, 13h
					int 10h
					jmp msghend
					msgh db " ESC             QUIT"
					msghend:
					
					mov al,1
					mov bh, 0
					mov bl, 30h
					mov cx, msgxxuend - offset msgxxu
					mov dl, 8
					mov dh, 17
					push cs
					pop es
					mov bp, offset msgxxu
					mov ah, 13h
					int 10h
					jmp msgxxuend
					msgxxu db " SPACE_BAR       START OVER"
					msgxxuend:
					
					mov al, 0
					mov bh, 0
					mov bl, 35h
					mov cx, msgcredit1end - offset msgcredit1
					mov dl, 8  ;mov dl changes the x-axis starting point
					mov dh, 22   ;mov dh changes the y-axis starting point 
					push cs
					pop es
					mov bp, offset msgcredit1
					mov ah, 13h
					int 10h
					jmp msgcredit1end
					msgcredit1 db '-by Mohammed Hossain'
					msgcredit1end:

	
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgqend - offset msgq
	mov dl, 46
	mov dh, 6
	push cs
	pop es
	mov bp, offset msgq
	mov ah, 13h
	int 10h
	jmp msgqend
	msgq db '                     '
	msgqend:
		
			;prints the numbers of the first row
			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum15end - offset msgnum15
			mov dl, 48
			mov dh, 8
			push cs
			pop es
			mov bp, offset msgnum15
			mov ah, 13h
			int 10h
			jmp msgnum15end
			msgnum15 db '15'
			msgnum15end:

			mov al, 1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum2end - offset msgnum2
			mov dl, 53
			mov dh, 8
			push cs
			pop es
			mov bp, offset msgnum2
			mov ah, 13h
			int 10h
			jmp msgnum2end
			msgnum2 db ' 2'
			msgnum2end:


			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum1end - offset msgnum1
			mov dl, 58
			mov dh, 8
			push cs
			pop es
			mov bp, offset msgnum1
			mov ah, 13h
			int 10h
			jmp msgnum1end
			msgnum1 db ' 1'
			msgnum1end:	

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum12end - offset msgnum12
			mov dl, 63
			mov dh, 8
			push cs
			pop es
			mov bp, offset msgnum12
			mov ah, 13h
			int 10h
			jmp msgnum12end
			msgnum12 db '12'
			msgnum12end:
	
	
		mov al,1
		mov bh, 0
		mov bl, 60h
		mov cx, msgdend - offset msgd
		mov dl, 47
		mov dh, 9
		push cs
		pop es
		mov bp, offset msgd
		mov ah, 13h
		int 10h
		jmp msgdend
		msgd db '                   '
		msgdend:
		
			;Prints the numbers on the second row
			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnumcrsrend - offset msgnumcrsr
			mov dl, 48
			mov dh, 11
			push cs
			pop es
			mov bp, offset msgnumcrsr
			mov ah, 13h
			int 10h
			jmp msgnumcrsrend
			msgnumcrsr db 00h 
			msgnumcrsrend:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum5end - offset msgnum5
			mov dl, 53
			mov dh, 11
			push cs
			pop es
			mov bp, offset msgnum5
			mov ah, 13h
			int 10h
			jmp msgnum5end
			msgnum5 db ' 5'
			msgnum5end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum6end - offset msgnum6
			mov dl, 58
			mov dh, 11
			push cs
			pop es
			mov bp, offset msgnum6
			mov ah, 13h
			int 10h
			jmp msgnum6end
			msgnum6 db ' 6'
			msgnum6end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum11end - offset msgnum11
			mov dl, 63
			mov dh, 11
			push cs
			pop es
			mov bp, offset msgnum11
			mov ah, 13h
			int 10h
			jmp msgnum11end
			msgnum11 db '11'
			msgnum11end:
	
		mov al,1
		mov bh, 0
		mov bl, 60h
		mov cx, msgzzzend - offset msgzzz
		mov dl, 47
		mov dh, 12
		push cs
		pop es
		mov bp, offset msgzzz
		mov ah, 13h
		int 10h
		jmp msgzzzend
		msgzzz db '                   '
		msgzzzend:
		
			;Prints the numbers on the 3rd row
			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum4end - offset msgnum4
			mov dl, 48
			mov dh, 14
			push cs
			pop es
			mov bp, offset msgnum4
			mov ah, 13h
			int 10h
			jmp msgnum4end
			msgnum4 db ' 4'
			msgnum4end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum9end - offset msgnum9
			mov dl, 53
			mov dh, 14
			push cs
			pop es
			mov bp, offset msgnum9
			mov ah, 13h
			int 10h
			jmp msgnum9end
			msgnum9 db ' 9'
			msgnum9end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum10end - offset msgnum10
			mov dl, 58
			mov dh, 14
			push cs
			pop es
			mov bp, offset msgnum10
			mov ah, 13h
			int 10h
			jmp msgnum10end
			msgnum10 db '10'
			msgnum10end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum7end - offset msgnum7
			mov dl, 63
			mov dh, 14
			push cs
			pop es
			mov bp, offset msgnum7
			mov ah, 13h
			int 10h
			jmp msgnum7end
			msgnum7 db ' 7'
			msgnum7end:
		
		
		mov al,1
		mov bh, 0
		mov bl, 60h
		mov cx, msgzzzzend - offset msgzzzz
		mov dl, 47
		mov dh, 15
		push cs
		pop es
		mov bp, offset msgzzzz
		mov ah, 13h
		int 10h
		jmp msgzzzzend
		msgzzzz db '                   '
		msgzzzzend:
		
			;Prints the numbers on the last(4th) row
			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum3end - offset msgnum3
			mov dl, 48
			mov dh, 17
			push cs
			pop es
			mov bp, offset msgnum3
			mov ah, 13h
			int 10h
			jmp msgnum3end
			msgnum3 db ' 3'
			msgnum3end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum14end - offset msgnum14
			mov dl, 53
			mov dh, 17
			push cs
			pop es
			mov bp, offset msgnum14
			mov ah, 13h
			int 10h
			jmp msgnum14end
			msgnum14 db '14'
			msgnum14end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum13end - offset msgnum13
			mov dl, 58
			mov dh, 17
			push cs
			pop es
			mov bp, offset msgnum13
			mov ah, 13h
			int 10h
			jmp msgnum13end
			msgnum13 db '13'
			msgnum13end:

			mov al,1
			mov bh, 0
			mov bl, 3fh
			mov cx, msgnum8end - offset msgnum8
			mov dl, 63
			mov dh, 17
			push cs
			pop es
			mov bp, offset msgnum8
			mov ah, 13h
			int 10h
			jmp msgnum8end
			msgnum8 db ' 8'
			msgnum8end:
		
		
		mov al,1
		mov bh, 0
		mov bl, 60h
		mov cx, msgeeend - offset msgee
		mov dl, 46
		mov dh, 18
		push cs
		pop es
		mov bp, offset msgee
		mov ah, 13h
		int 10h
		jmp msgeeend
		msgee db '                     '
		msgeeend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgfend - offset msgf
	mov dl, 46
	mov dh, 6
	push cs
	pop es
	mov bp, offset msgf
	mov ah, 13h
	int 10h
	jmp msgfend
	msgf db ' '
	msgfend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgbend - offset msgb
	mov dl, 46
	mov dh, 7
	push cs
	pop es
	mov bp, offset msgb
	mov ah, 13h
	int 10h
	jmp msgbend
	msgb db ' '
	msgbend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgcend - offset msgc
	mov dl, 46
	mov dh, 8
	push cs
	pop es
	mov bp, offset msgc
	mov ah, 13h
	int 10h
	jmp msgcend
	msgc db ' '
	msgcend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgdeend - offset msgde
	mov dl, 46
	mov dh, 9
	push cs
	pop es
	mov bp, offset msgde
	mov ah, 13h
	int 10h
	jmp msgdeend
	msgde db ' '
	msgdeend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgeend - offset msge
	mov dl, 46
	mov dh, 10
	push cs
	pop es
	mov bp, offset msge
	mov ah, 13h
	int 10h
	jmp msgeend
	msge db ' '
	msgeend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msggend - offset msgge
	mov dl, 46
	mov dh, 11
	push cs
	pop es
	mov bp, offset msgge
	mov ah, 13h
	int 10h
	jmp msggend
	msgge db ' '
	msggend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msghhend - offset msghh
	mov dl, 46
	mov dh, 12
	push cs
	pop es
	mov bp, offset msghh
	mov ah, 13h
	int 10h
	jmp msghhend
	msghh db ' '
	msghhend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgjend - offset msgj
	mov dl, 46
	mov dh, 13
	push cs
	pop es
	mov bp, offset msgj
	mov ah, 13h
	int 10h
	jmp msgjend
	msgj db ' '
	msgjend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgaaend - offset msgaa
	mov dl, 46
	mov dh, 14
	push cs
	pop es
	mov bp, offset msgaa
	mov ah, 13h
	int 10h
	jmp msgaaend
	msgaa db ' '
	msgaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgbbend - offset msgbb
	mov dl, 46
	mov dh, 15
	push cs
	pop es
	mov bp, offset msgbb
	mov ah, 13h
	int 10h
	jmp msgbbend
	msgbb db ' '
	msgbbend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgccend - offset msgcc
	mov dl, 46
	mov dh, 16
	push cs
	pop es
	mov bp, offset msgcc
	mov ah, 13h
	int 10h
	jmp msgccend
	msgcc db ' '
	msgccend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgddend - offset msgdd
	mov dl, 46
	mov dh, 17
	push cs
	pop es
	mov bp, offset msgdd
	mov ah, 13h
	int 10h
	jmp msgddend
	msgdd db ' ' 
	msgddend:
	
	;;
	;;
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgfaend - offset msgfa
	mov dl, 66
	mov dh, 6
	push cs
	pop es
	mov bp, offset msgfa
	mov ah, 13h
	int 10h
	jmp msgfaend
	msgfa db ' '
	msgfaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgbaaend - offset msgbaa
	mov dl, 66
	mov dh, 7
	push cs
	pop es
	mov bp, offset msgbaa
	mov ah, 13h
	int 10h
	jmp msgbaaend
	msgbaa db ' '
	msgbaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgcaaend - offset msgcaa
	mov dl, 66
	mov dh, 8
	push cs
	pop es
	mov bp, offset msgcaa
	mov ah, 13h
	int 10h
	jmp msgcaaend
	msgcaa db ' '
	msgcaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgdaaend - offset msgdaa
	mov dl, 66
	mov dh, 9
	push cs
	pop es
	mov bp, offset msgdaa
	mov ah, 13h
	int 10h
	jmp msgdaaend
	msgdaa db ' '
	msgdaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgeaaend - offset msgeaa
	mov dl, 66
	mov dh, 10
	push cs
	pop es
	mov bp, offset msgeaa
	mov ah, 13h
	int 10h
	jmp msgeaaend
	msgeaa db ' '
	msgeaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msggaend - offset msggae
	mov dl, 66
	mov dh, 11
	push cs
	pop es
	mov bp, offset msggae
	mov ah, 13h
	int 10h
	jmp msggaend
	msggae db ' '
	msggaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msghhaend - offset msghha
	mov dl, 66
	mov dh, 12
	push cs
	pop es
	mov bp, offset msghha
	mov ah, 13h
	int 10h
	jmp msghhaend
	msghha db ' '
	msghhaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgjaaend - offset msgjaa
	mov dl, 66
	mov dh, 13
	push cs
	pop es
	mov bp, offset msgjaa
	mov ah, 13h
	int 10h
	jmp msgjaaend
	msgjaa db ' '
	msgjaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgaaaaend - offset msgaaaa
	mov dl, 66
	mov dh, 14
	push cs
	pop es
	mov bp, offset msgaaaa
	mov ah, 13h
	int 10h
	jmp msgaaaaend
	msgaaaa db ' '
	msgaaaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgbbaaend - offset msgbbaa
	mov dl, 66
	mov dh, 15
	push cs
	pop es
	mov bp, offset msgbbaa
	mov ah, 13h
	int 10h
	jmp msgbbaaend
	msgbbaa db ' '
	msgbbaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgccaaend - offset msgccaa
	mov dl, 66
	mov dh, 16
	push cs
	pop es
	mov bp, offset msgccaa
	mov ah, 13h
	int 10h
	jmp msgccaaend
	msgccaa db ' '
	msgccaaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgddaaend - offset msgddaa
	mov dl, 66
	mov dh, 17
	push cs
	pop es
	mov bp, offset msgddaa
	mov ah, 13h
	int 10h
	jmp msgddaaend
	msgddaa db ' ' 
	msgddaaend:
	
	
;;

	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgacend - offset msgac
	mov dl, 51
	mov dh, 7
	push cs
	pop es
	mov bp, offset msgac
	mov ah, 13h
	int 10h
	jmp msgacend
	msgac db ' '
	msgacend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgadend - offset msgad
	mov dl, 51
	mov dh, 8
	push cs
	pop es
	mov bp, offset msgad
	mov ah, 13h
	int 10h
	jmp msgadend
	msgad db ' '
	msgadend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgaddend - offset msgadd
	mov dl, 51
	mov dh, 9
	push cs
	pop es
	mov bp, offset msgadd
	mov ah, 13h
	int 10h
	jmp msgaddend
	msgadd db ' '
	msgaddend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgaccend - offset msgacc
	mov dl, 51
	mov dh, 10
	push cs
	pop es
	mov bp, offset msgacc
	mov ah, 13h
	int 10h
	jmp msgaccend
	msgacc db ' '
	msgaccend:
	
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgacccend - offset msgaccc
	mov dl, 51
	mov dh, 11
	push cs
	pop es
	mov bp, offset msgaccc
	mov ah, 13h
	int 10h
	jmp msgacccend
	msgaccc db ' '
	msgacccend:
	
	
	
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgacbend - offset msgacb
	mov dl, 51
	mov dh, 12
	push cs
	pop es
	mov bp, offset msgacb
	mov ah, 13h
	int 10h
	jmp msgacbend
	msgacb db ' '
	msgacbend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgadbend - offset msgadb
	mov dl, 51
	mov dh, 13
	push cs
	pop es
	mov bp, offset msgadb
	mov ah, 13h
	int 10h
	jmp msgadbend
	msgadb db ' '
	msgadbend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgaebend - offset msgaeb
	mov dl, 51
	mov dh, 14
	push cs
	pop es
	mov bp, offset msgaeb
	mov ah, 13h
	int 10h
	jmp msgaebend
	msgaeb db ' '
	msgaebend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgbbcend - offset msgbbc
	mov dl, 51
	mov dh, 15
	push cs
	pop es
	mov bp, offset msgbbc
	mov ah, 13h
	int 10h
	jmp msgbbcend
	msgbbc db ' '
	msgbbcend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgccaend - offset msgcca
	mov dl, 51
	mov dh, 16
	push cs
	pop es
	mov bp, offset msgcca
	mov ah, 13h
	int 10h
	jmp msgccaend
	msgcca db ' '
	msgccaend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgddaend - offset msgdda
	mov dl, 51
	mov dh, 17
	push cs
	pop es
	mov bp, offset msgdda
	mov ah, 13h
	int 10h
	jmp msgddaend
	msgdda db ' ' 
	msgddaend:
	
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgnnend - offset msgnn
	mov dl, 56
	mov dh, 7
	push cs
	pop es
	mov bp, offset msgnn
	mov ah, 13h
	int 10h
	jmp msgnnend
	msgnn db ' '
	msgnnend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgooend - offset msgoo
	mov dl, 56
	mov dh, 8
	push cs
	pop es
	mov bp, offset msgoo
	mov ah, 13h
	int 10h
	jmp msgooend
	msgoo db ' '
	msgooend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgppend - offset msgpp
	mov dl, 56
	mov dh, 9
	push cs
	pop es
	mov bp, offset msgpp
	mov ah, 13h
	int 10h
	jmp msgppend
	msgpp db ' '
	msgppend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgqqend - offset msgqq
	mov dl, 56
	mov dh, 10
	push cs
	pop es
	mov bp, offset msgqq
	mov ah, 13h
	int 10h
	jmp msgqqend
	msgqq db ' '
	msgqqend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgqaqend - offset msgqaq
	mov dl, 56
	mov dh, 11
	push cs
	pop es
	mov bp, offset msgqaq
	mov ah, 13h
	int 10h
	jmp msgqaqend
	msgqaq db ' '
	msgqaqend:
	
	
	
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgrrend - offset msgrr
	mov dl, 56
	mov dh, 12
	push cs
	pop es
	mov bp, offset msgrr
	mov ah, 13h
	int 10h
	jmp msgrrend
	msgrr db ' '
	msgrrend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgssend - offset msgss
	mov dl, 56
	mov dh, 13
	push cs
	pop es
	mov bp, offset msgss
	mov ah, 13h
	int 10h
	jmp msgssend
	msgss db ' '
	msgssend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgttend - offset msgtt
	mov dl, 56
	mov dh, 14
	push cs
	pop es
	mov bp, offset msgtt
	mov ah, 13h
	int 10h
	jmp msgttend
	msgtt db ' '
	msgttend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msguuend - offset msguu
	mov dl, 56
	mov dh, 15
	push cs
	pop es
	mov bp, offset msguu
	mov ah, 13h
	int 10h
	jmp msguuend
	msguu db ' '
	msguuend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgvvend - offset msgvv
	mov dl, 56
	mov dh, 16
	push cs
	pop es
	mov bp, offset msgvv
	mov ah, 13h
	int 10h
	jmp msgvvend
	msgvv db ' '
	msgvvend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgwwend - offset msgww
	mov dl, 56
	mov dh, 17
	push cs
	pop es
	mov bp, offset msgww
	mov ah, 13h
	int 10h
	jmp msgwwend
	msgww db ' ' 
	msgwwend:
	;
	;
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgnnnend - offset msgnnn
	mov dl, 61
	mov dh, 7
	push cs
	pop es
	mov bp, offset msgnnn
	mov ah, 13h
	int 10h
	jmp msgnnnend
	msgnnn db ' '
	msgnnnend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgoooend - offset msgooo
	mov dl, 61
	mov dh, 8
	push cs
	pop es
	mov bp, offset msgooo
	mov ah, 13h
	int 10h
	jmp msgoooend
	msgooo db ' '
	msgoooend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgpppend - offset msgppp
	mov dl, 61
	mov dh, 9
	push cs
	pop es
	mov bp, offset msgppp
	mov ah, 13h
	int 10h
	jmp msgpppend
	msgppp db ' '
	msgpppend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgqqqend - offset msgqqq
	mov dl, 61
	mov dh, 10
	push cs
	pop es
	mov bp, offset msgqqq
	mov ah, 13h
	int 10h
	jmp msgqqqend
	msgqqq db ' '
	msgqqqend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgqaqqend - offset msgqaqq
	mov dl, 61
	mov dh, 11
	push cs
	pop es
	mov bp, offset msgqaqq
	mov ah, 13h
	int 10h
	jmp msgqaqqend
	msgqaqq db ' '
	msgqaqqend:
	
	
	
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgrrrend - offset msgrrr
	mov dl, 61
	mov dh, 12
	push cs
	pop es
	mov bp, offset msgrrr
	mov ah, 13h
	int 10h
	jmp msgrrrend
	msgrrr db ' '
	msgrrrend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgsssend - offset msgsss
	mov dl, 61
	mov dh, 13
	push cs
	pop es
	mov bp, offset msgsss
	mov ah, 13h
	int 10h
	jmp msgsssend
	msgsss db ' '
	msgsssend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgtttend - offset msgttt
	mov dl, 61
	mov dh, 14
	push cs
	pop es
	mov bp, offset msgttt
	mov ah, 13h
	int 10h
	jmp msgtttend
	msgttt db ' '
	msgtttend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msguuuend - offset msguuu
	mov dl, 61
	mov dh, 15
	push cs
	pop es
	mov bp, offset msguuu
	mov ah, 13h
	int 10h
	jmp msguuuend
	msguuu db ' '
	msguuuend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgvvvend - offset msgvvv
	mov dl, 61
	mov dh, 16
	push cs
	pop es
	mov bp, offset msgvvv
	mov ah, 13h
	int 10h
	jmp msgvvvend
	msgvvv db ' '
	msgvvvend:
	
	mov al,1
	mov bh, 0
	mov bl, 60h
	mov cx, msgwwwend - offset msgwww
	mov dl, 61
	mov dh, 17
	push cs
	pop es
	mov bp, offset msgwww
	mov ah, 13h
	int 10h
	jmp msgwwwend
	msgwww db ' ' 
	msgwwwend:

	;Set cursor to blank space
	mov ah,2
	mov dh,11
	mov dl,48
	mov bh,00h
	int 10h


INPUT:
	mov ah, 08h 
	int 21h 

	cmp al, 117
	je UP

	cmp al, 106
	je DOWN
	
	cmp al, 104
	je LEFT

	cmp al, 107
	je RIGHT

	cmp al, 32
	je GAME

    cmp al, 27
	je FINISH 
	
	jmp INPUT


UP:

	;Current Pos
	;Gets the current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h


	;Limiting The Upper Bound
	cmp dh,8
	je INPUT
	
	;Brings up the cursor by 3 unit where the next upper number is located
	add dh,-3	
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h
	
	;Scans the number stored in the new position and stores in ax 
	mov ah,08h
	mov bh,00
	int 10h

	mov bl, ah
	add dh,3	;adds 3 to cursor column
	
	;sets cursor to Previous Pos again
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Writes Current Pos Char into Previous Pos
	mov ah,	09h
	mov al,	al
	mov bl,	bl
	mov cx,	01h
	int 	10h		
	
	add dh,-3 ;Subtracts 3 from the cursor column
	

	;Moves cursor back up	
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Set the Current Pos to Blank Spot
	mov ah, 09h
	mov al, 00h
	mov bh, 0
	mov cx, 1
	mov bl,bl
	int 10h

	;New Pos
	;Gets the Current Size and Position of the Newly Declared Cursor
	mov ah,3
	mov bh,00
	int 10h
	
	;Cursor is ready to move one digit to the left; takes care of the single digit numbers
	add dl, 1

	;Moves Cursor to right by 1 digit for the current num
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h

	;Scans the number stored in the new position and stores in ax 
	mov ah,08h
	mov bh,00
	int 10h
	mov bl,ah
	
	add dh, 3	;adds 3 to cursor row
	
	;sets cursor to right of original blank spot
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	
	;Writes the stored char into blank spot
	mov ah,09h
	mov al,al
	mov bl,bl
	mov cx,01h
	int 10h	

	;Gets Cursor position and size in the newly located spot
	mov ah,3
	mov bh,00
	int 10h
	
	add dh,-3
		
	;Sets cursor to the right digit
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the new pos to blank spot
	mov ah,09h
	mov al,00h
	mov bl,79h
	mov cx,01h
	int 10h	

	;Get the current size and position of the cursor in the new pos
	mov ah,3
	mov bh,00
	int 10h
	add dl, -1

	;sets cursor to blank space
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	jmp INPUT
	
DOWN:
	;Current Pos
	;Gets the current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h

	;Limiting the lower bound of the cursor
	cmp dh,17
	je INPUT
	
	add dh,3	;Brings down cursor by 3 units 
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h
	
	;Scans the number stored in the new position and stores in ax 
	mov ah,08h
	mov bh,00
	int 10h
	mov bl, ah

	add dh,-3 ;add 3 to cursor column
	
	;Brings down the cursor again
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Writes the stored character from the upper number into the original cursor pos 
	mov ah,09h
	mov al,al
	mov bl,bl
	mov cx,01h
	int 10h		
	add dh,3
	
	;Brings up the cursor back 
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets new pos to a blank spot
	mov ah, 09h
	mov al, 00h
	mov bh, 0
	mov cx,1
	mov bl,bl
	int 10h

	;New Pos
	;Gets the Current Size and Position of the Newly Declared Cursor
	mov ah,3
	mov bh,00
	int 10h
	
	;The cursor is ready to move one to the left;takes care of the single digit numbers
	add dl, 1

	;Moves Cursor to right by 1 digit for the current num
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h

	;Scans the number stored in the new position and stores in ax 
	mov ah,08h
	mov bh,00
	int 10h
	mov bl,ah
	add dh, -3	;Brigs up the cursor by 3 unit
	
	;Sets the right digit of the original pos as the cursor
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Writes the stored character into the blank spot
	mov ah,09h
	mov al,al
	mov bl,bl
	mov cx,01h
	int 10h	

	;gets current position and the size of the cursor
	mov ah,3
	mov bh,00
	int 10h
	add dh,3
		
	;Sets cursor to the right digit of its current pos
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the right digit of the current cursor pos as a blank spot
	mov ah,09h
	mov al,00h
	mov bl,79h
	mov cx,01h
	int 10h	

	;gets the current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h
	add dl, -1

	;Sets the current pos of the cursor as blank space
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h


	jmp INPUT

LEFT: 

	;Current Pos
	;Gets the current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h
	
	;Limiting The Left Bound
	cmp dl,48
	je INPUT

	;Brings left the cursor by 5 unit where the next upper number is located
	add dl,-5
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h
	
	;Scans the number stored in the new position and stores in ax
	mov ah,08h
	mov bh,00
	int 10h
	mov bl, ah

	add dl,5	;adds 5 to cursor row
	
	;Brings Cursor to Previous Pos Again
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Writes the number from new pos to original pos
	mov ah,09h
	mov al,al
	mov bl,bl
	mov cx,01h
	int 10h		
	
	add dl,-5
	
	;Moves cursor back to the left 	
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the new pos to blank spot
	mov ah, 09h
	mov al, 00h
	mov bh, 0
	mov cx, 1
	mov bl,bl
	int 10h


	;New Pos
	;Get the current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h
	
	;Cursor is ready to move one to the left, takes care of the single digit numbers
	add dl, 1


	;Moves Cursor to right by 1 digit for the current num
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h

	;Scans character from the left and stores the char in ax
	mov ah,08h
	mov bh,00
	int 10h
	mov bl,ah
	
	add dl, 5; Brings cursor 5 unit to the right where the next right number is located
	
	;Sets cursor to the new position
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Writes the number in new pos to the right of the original num
	mov ah,09h
	mov al,al
	mov bl,bl
	mov cx,01h
	int 10h	

	;Gets the size and the position of the new pos cursor
	mov ah,3
	mov bh,00
	int 10h
	add dl, -5
		
	;Sets cursor to the new pos
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the right digit of the new pos number as blank spot
	mov ah,09h
	mov al,00h
	mov bl,79h
	mov cx,01h
	int 10h	

	;Gets the current size and position of the cursor at new pos
	mov ah,3
	mov bh,00
	int 10h
	add dl, -1

	;sets cursor to blank space
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	jmp INPUT

RIGHT:

	;Current Pos
	;Gets the current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h
	
	;Limiting the Right bound for the input
	cmp dl,63
	je INPUT

	add dl, 5	;adds 5 to the cursor row, Moves cursor from the current pos to the new pos
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h
	
	;Scans the character from the new pos and stores it into ax
	mov ah,08h
	mov bh,00
	int 10h
	mov bl, ah
	
	add dl,-5	;brings back the cursor to the previous pos again
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the stored char in the current pos
	mov ah,09h
	mov al,al
	mov bl,bl
	mov cx,01h
	int 10h		
	
	
	add dl,5	;Moves the cursor to the new position again	
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the new pos to be a blank space
	mov ah, 09h
	mov al, 00h
	mov bh, 0
	mov cx,1
	mov bl,bl
	int 10h

	;New Pos
	;Gets the current size and position of the cursor
	mov bh,00
	int 10h
	
	;the cursor is moves to the right digit of the blank space
	add dl, 1
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,00
	mov dl,dl
	int 10h

	;Scans character from the right number and stores it in ax
	mov ah,08h
	mov bh,00
	int 10h
	mov bl,ah
	
	add dl, -5;Moves back the cursor to its previous pos
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the stored char from the new pos to the current pos
	mov ah,09h
	mov al,al
	mov bl,bl
	mov cx,01h
	int 10h	

	;Gets the current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h

	;Sets the cursor back to the new pos
	add dl,5
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	;Sets the right digit of new pos num to be a blank space
	mov ah,09h
	mov al,00h
	mov bl,79h
	mov cx,01h
	int 10h	

	;gets current size and position of the cursor
	mov ah,3
	mov bh,00
	int 10h

	add dl, -1 ;Sets the cursor to the left digit of the number, takes care of the single digit numbers
	mov ah,2
	mov dh,dh
	mov dl,dl
	mov bh,0
	int 10h

	jmp INPUT

FINISH:	
	;Clears the Screen
	mov ax,0600H ;scroll the entire page
	mov bh,07 ;normal attribute
	mov cx,0000 ;row and column of the top left
	mov dx,184FH ;row and column of the bottom right
	int 10H ;invoke interrupt 10H 

	;Ends the program!!!
	mov ah, 4ch 
	int 21h 

ret 

END START


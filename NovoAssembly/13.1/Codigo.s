.data
.equ PontoJogador1, 0x860
.equ PontoJogador2, 0x870
.equ Reset, 0x850

.macro instr databits
	custom 0, r0, r0, \databits
.endm
#usado para dados no lcd
.macro data databits
	movi r1, 1
	custom 0, r0, r1, \databits
.endm

.global main
main:
call initialize
#Registradors de Retorno Jogador 1 r10,r9
#Registradors de Retorno Jogador 2 r11,r12

Aguardando:
movi r15, 0x1 
instr r15
movi r15,0x41 #A
data r15
movi r15,0x67 #g
data r15
movi r15,0x75 #u
data r15
movi r15,0x61 #a
data r15
movi r15,0x72 #r
data r15
movi r15,0x64 #d
data r15
movi r15,0x61 #a
data r15
movi r15,0x6e #n
data r15
movi r15,0x64 #d
data r15
movi r15,0x6f #o
data r15c

espera:
movi r15,Reset
movi r2,1
ldbio r1,0(r15)
beq r1,r2,jogando
br espera


jogando:
nextpc r9
br ponto1Jogador1_2
call delay
br jogando

ponto1Jogador1_2:
movi r15, 0x1 
instr r15
movi r15,0x4a #J
data r15 
movi r15,0x6f #o
data r15 
movi r15,0x67 #g
data r15 
movi r15,0x61 #a
data r15 
movi r15,0x64 #d
data r15 
movi r15,0x6f #o
data r15
movi r15,0x72 #r
data r15
movi r15,0x20 #espaco
data r15
movi r15,0x31 #1
data r15 
movi r15,0x20 #espaco
data r15
movi r1,PontoJogador1
ldbio r2,0(r1)
movi r3,10
beq r2,r3,jogador1Ganhou
movi r15,0x30
add r15,r15,r2
data r15
movi r15, 0xc0 #move para a segunda linha
instr r15 
movi r15,0x4a #J
data r15 
movi r15,0x6f #o
data r15 
movi r15,0x67 #g
data r15 
movi r15,0x61 #a
data r15 
movi r15,0x64 #d
data r15 
movi r15,0x6f #o
data r15
movi r15,0x72 #r
data r15
movi r15,0x20 #espaco
data r15
movi r15,0x32 #2
data r15 
movi r15,0x20 #espaco
data r15
movi r1,PontoJogador2
ldbio r2,0(r1)
beq r2,r3,jogador2Ganhou
movi r15,0x30
add r15,r15,r2
data r15
addi r9,r9,4
jmp r9

jogador1Ganhou:
movi r15, 0x1 
instr r15
movi r15,0x4a #J
data r15 
movi r15,0x6f #o
data r15 
movi r15,0x67 #g
data r15 
movi r15,0x61 #a
data r15 
movi r15,0x64 #d
data r15 
movi r15,0x6f #o
data r15
movi r15,0x72 #r
data r15
movi r15,0x20 #espaco
data r15
movi r15,0x31 #1
data r15
movi r15,0x20 #espaco
data r15
movi r15,0x67 #g
data r15 
movi r15,0x61 #a
data r15 
movi r15,0x6e #n
data r15
movi r15,0x68 #h
data r15
movi r15,0x6f #o
data r15
movi r15,0x75 #u
data r15
call delay
call delay
call delay
br Aguardando
jogador2Ganhou:
movi r15, 0x1 
instr r15
movi r15,0x4a #J
data r15 
movi r15,0x6f #o
data r15 
movi r15,0x67 #g
data r15 
movi r15,0x61 #a
data r15 
movi r15,0x64 #d
data r15 
movi r15,0x6f #o
data r15
movi r15,0x72 #r
data r15
movi r15,0x20 #espaco
data r15
movi r15,0x32 #1
data r15
movi r15,0x20 #espaco
data r15
movi r15,0x67 #g
data r15 
movi r15,0x61 #a
data r15 
movi r15,0x6e #n
data r15
movi r15,0x68 #h
data r15
movi r15,0x6f #o
data r15
movi r15,0x75 #u
data r15 
call delay
call delay
call delay
br Aguardando

initialize:
movi r15, 0x30 #Seleciona função
instr r15
movi r15, 0x30 #Seleciona função
instr r15
movi r15, 0x39 #Seleciona função
instr r15
movi r15, 0x14 #Ajuste de clock interno
instr r15
movi r15, 0x56 #Power/ICON/Contrast
instr r15
movi r15, 0x6d #Folower control
instr r15
movi r15, 0x0c #Liga o Display
instr r15
movi r15, 0x06 #Entra em mode de cursor
instr r15
movi r15, 0x01 #Limpa o Display
instr r15
ret




delay:
	movi r8,32000
	movi r1,0
	movi r3,200
	movi r5,0
loop:
	bgt r1,r8,endDelay
	addi r1,r1,1
	br loop

endDelay:
	movi r1,0
	bgt r5,r3,fim	
	addi r5,r5,1
	br loop
fim:
	ret

end:
br end

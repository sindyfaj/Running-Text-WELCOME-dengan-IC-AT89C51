 org 00h
start :
mov p1,#11111110b
mov p3,#00000000b
acall delay
mov p1,#11111101b
mov p3,#11111111b
acall delay
mov p1,#11111011b
mov p3,#00000000b
acall delay
mov p1,#11110111b
mov p3,#11111111b
acall delay
mov p1,#11101111b
mov p3,#00000000b
acall delay
mov p1,#11011111b
mov p3,#11111111b
acall delay
mov p1,#10111111b
mov p3,#00000000b
acall delay
mov p1,#01111111b
mov p3,#11111111b
acall delay
sjmp start

delay :
mov r0,#2

delay1:
mov r1,#255

delay2:
mov r2,#255

djnz r2,$
djnz r1,delay2
djnz r0,delay1
ret
end
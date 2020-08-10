REM	Creator:	ANANT PRAKASH SINGH
REM	Year:		2015
REM	Environment:	QBASIC

CLS
a1 = 290: a2 = 10: b1 = 300: b2 = 15: c1 = 340: c2 = 350
start:
SCREEN 12
PAINT (1, 1), 11
LINE (240, 0)-(400, 480), 0, BF
LINE (240, 120)-(400, 360), 9, BF
CIRCLE (320, 240), 125, 1
PAINT (220, 240), 1
CIRCLE (320, 240), 115, 2
PAINT (320, 240), 2
CIRCLE (320, 240), 110, 10
PAINT (320, 240), 10
LINE (240, 200)-(280, 280), 7, BF
LINE (300, 200)-(340, 280), 7, BF
LINE (360, 200)-(400, 280), 7, BF
LINE (185, 230)-(195, 250), 15, BF
LINE (a1, a2)-(b1, b2), 15, BF
FOR i = 1 TO 100 STEP 17
LINE (a1, a2 + i)-(b1, b2 + i), 15, BF
LINE (c1, a2 + i)-(c2, b2 + i), 15, BF
NEXT i
LOCATE 1, 1
INPUT "LAST TIME in SECOND :::>", n
n2 = n: n3 = n
ms = ms * 100
FOR a = 1 TO n * 100
FOR t = 1 TO 13500: NEXT t
ms = a MOD 100
sec = a \ 100
seco = sec MOD 60
min = sec \ 60
mino = min MOD 60
LOCATE 16, 47: PRINT ms
LOCATE 16, 39: PRINT seco
LOCATE 16, 31: PRINT mino
NEXT a
LOCATE 1, 1
INPUT "DO YOU WANT TO RE USE THE StopWatch ", cho$
cho$ = UCASE$(cho$)
IF cho$ = "Y" THEN GOTO start
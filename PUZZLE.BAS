REM	Creator:	ANANT PRAKASH SINGH
REM	Year:		2015
REM	Environment:	QBASIC

CLS
SCREEN 7
FOR a = 1 TO 2
LINE (70 - a, 20 - a)-(110 + a, 100 + a), 6, B
LINE (140 - a, 50 - a)-(180 + a, 100 + a), 6, B
LINE (210 - a, 70 - a)-(250 + a, 100 + a), 6, B
NEXT
LINE (68, 18)-(112, 19), 0, B
LINE (138, 48)-(182, 49), 0, B
LINE (208, 68)-(252, 69), 0, B
LINE (70, 20)-(110, 100), 1, BF

REM Print text
LOCATE 2, 12: COLOR 4: PRINT "A"
LOCATE 5, 20: COLOR 4: PRINT "B"
LOCATE 8, 29: COLOR 4: PRINT "C"
LOCATE 15, 12: COLOR 4: PRINT "/"; : COLOR 1: PRINT "8"
LOCATE 15, 20: COLOR 4: PRINT "/"; : COLOR 1: PRINT "5"
LOCATE 15, 29: COLOR 4: PRINT "/"; : COLOR 1: PRINT "3"
LOCATE 15, 11: COLOR 2: PRINT "8"
LOCATE 15, 19: COLOR 2: PRINT "0"
LOCATE 15, 28: COLOR 2: PRINT "0"

REM MAIN PROGRAM

REM Ask Move
askmove:
LOCATE 17, 1: PRINT SPACE$(40)
LOCATE 18, 1: PRINT SPACE$(40)
LOCATE 19, 1: PRINT SPACE$(40)
LOCATE 20, 1: PRINT SPACE$(40)
LOCATE 17: COLOR 5: PRINT "Your Move: ";
COLOR 2: INPUT "", move$
IF move$ = "" THEN xyz = xyz + 1
IF move$ <> "" THEN xyz = 0
IF xyz = 3 THEN COLOR 0
IF xyz = 3 THEN END
IF move$ = "" THEN GOTO askmove

REM Remove Spaces
DO WHILE INSTR(move$, " ") <> 0
move$ = LEFT$(move$, INSTR(move$, " ") - 1) + MID$(move$, INSTR(move$, " ") + 1)
LOOP

REM Remove Hyphen (-)
DO WHILE INSTR(move$, "-") <> 0
move$ = LEFT$(move$, INSTR(move$, "-") - 1) + MID$(move$, INSTR(move$, "-") + 1)
LOOP

REM Check input and store variable in cont
IF LEN(move$) <> 2 THEN GOTO wrong
cont1$ = UCASE$(MID$(move$, 1, 1))
cont2$ = UCASE$(MID$(move$, 2, 1))
IF cont1$ <> "A" AND cont1$ <> "B" AND cont1$ <> "C" THEN GOTO wrong
IF cont2$ <> "A" AND cont2$ <> "B" AND cont2$ <> "C" THEN GOTO wrong

REM Set values of top
IF cont1$ = "A" THEN top1 = 20
IF cont2$ = "A" THEN top2 = 20
IF cont1$ = "B" THEN top1 = 50
IF cont2$ = "B" THEN top2 = 50
IF cont1$ = "C" THEN top1 = 70
IF cont2$ = "C" THEN top2 = 70

REM Set values of bottom
IF cont1$ = "A" THEN bot1 = 100
IF cont2$ = "A" THEN bot2 = 100
IF cont1$ = "B" THEN bot1 = 100
IF cont2$ = "B" THEN bot2 = 100
IF cont1$ = "C" THEN bot1 = 100
IF cont2$ = "C" THEN bot2 = 100

REM Set values of side
IF cont1$ = "A" THEN side1 = 70
IF cont2$ = "A" THEN side2 = 70
IF cont1$ = "B" THEN side1 = 140
IF cont2$ = "B" THEN side2 = 140
IF cont1$ = "C" THEN side1 = 210
IF cont2$ = "C" THEN side2 = 210

REM Check cont1 is not empty and cont2 is not full
IF POINT(side1, bot1) = 0 OR POINT(side2, top2) = 1 THEN GOTO wrong

REM Find height of water (h1 and h2) of cont1 and cont2

h1 = 0: h2 = 0

REM For cont1
FOR a = top1 TO bot1
IF POINT(side1, a) = 1 AND POINT(side1, a - 1) = 0 THEN
h1 = a
EXIT FOR
END IF
NEXT
IF h1 = 0 THEN h1 = 101
REM For cont2
FOR a = top2 TO bot2
IF POINT(side2, a) = 1 AND POINT(side2, a - 1) = 0 THEN
h2 = a
EXIT FOR
END IF
NEXT
IF h2 = 0 THEN h2 = 101

DO WHILE POINT(side1, bot1) = 1 AND POINT(side2, top2) = 0
LINE (side1, h1)-(side1 + 40, h1), 0
h1 = h1 + 1
LINE (side2, h2 - 1)-(side2 + 40, h2 - 1), 1
h2 = h2 - 1
FOR a = 1 TO 5000: NEXT
LOOP

cap1 = .1: cap2 = .1: cap3 = .1

REM Calculate the capacity(cap) of cont1 ,cont2 and cont3
FOR a = 100 TO 20 STEP -1
IF POINT(70, a) = 1 THEN cap1 = cap1 + .1
IF POINT(140, a) = 1 THEN cap2 = cap2 + .1
IF POINT(210, a) = 1 THEN cap3 = cap3 + .1
NEXT
cap1 = INT(cap1)
cap2 = INT(cap2)
cap3 = INT(cap3)
LOCATE 15, 10: COLOR 2: PRINT cap1
LOCATE 15, 18: COLOR 2: PRINT cap2
LOCATE 15, 27: COLOR 2: PRINT cap3
LOCATE 15, 12: COLOR 4: PRINT "/"
LOCATE 15, 20: COLOR 4: PRINT "/"
LOCATE 15, 29: COLOR 4: PRINT "/"

REM Check correct or not
IF cap1 = 4 OR cap2 = 4 THEN GOTO winner

GOTO askmove

wrong:
BEEP
GOTO askmove

winner:
FOR a = 1 TO 100000: NEXT
FOR a = 0 TO 640
LINE (0 + a, 0 + a)-(320 - a, 200 - a), 1, B
LINE (-320 + a, -200 + a)-(640 - a, 400 - a), 0, B
FOR B = 1 TO 1000: NEXT
NEXT

a1$ = "       ": b1$ = "           ": c1$ = "  "
a2$ = "         ": b2$ = "                    ": c2$ = "        "
a3$ = "         ": b3$ = "               ": c3$ = "        "
a4$ = "          ": b4$ = "                    ": c4$ = "        "
a5$ = "      ": b5$ = "         ": c5$ = "      "

col1 = 0: col2 = 1: col3 = 2

DO
col1 = col1 + 1
col1 = col1 MOD 4
IF col1 = 3 THEN col1 = 4

col2 = col2 + 1
col2 = col2 MOD 4
IF col2 = 3 THEN col2 = 4

col3 = col3 + 1
col3 = col3 MOD 4
IF col3 = 3 THEN col3 = 4

l1 = 20 - INT(LEN(a1$) / 2)
l2 = 20 - INT(LEN(b1$) / 2)
l3 = 20 - INT(LEN(c1$) / 2) + 1

COLOR col3
LOCATE 3, l1: PRINT a1$
LOCATE 4, l1: PRINT a2$
LOCATE 5, l1: PRINT a3$
LOCATE 6, l1: PRINT a4$
LOCATE 7, l1: PRINT a5$

COLOR col2
LOCATE 2 + 8, l2: PRINT b1$
LOCATE 3 + 8, l2: PRINT b2$
LOCATE 4 + 8, l2: PRINT b3$
LOCATE 5 + 8, l2: PRINT b4$
LOCATE 6 + 8, l2: PRINT b5$

COLOR col1
LOCATE 2 + 15, l3: PRINT c1$
LOCATE 3 + 15, l3: PRINT c2$
LOCATE 4 + 15, l3: PRINT c3$
LOCATE 5 + 15, l3: PRINT c4$
LOCATE 6 + 15, l3: PRINT c5$

FOR a = 1 TO 20000: NEXT

LOOP UNTIL INKEY$ <> ""

COLOR 0


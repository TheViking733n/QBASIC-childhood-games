REM     Creator:        ANANT PRAKASH SINGH
REM     Year:           2015
REM     Environment:    QBASIC

CLS
SCREEN 12
LINE (0, 0)-(640, 480), 14, BF
COLOR 14

DATA "PRESS Z,X,C,V,B,N & M TO PLAY","PRESS + or - TO REDUCE OR INCREASE TIME","PRESS SPACE THREE TIMES TO EXIT"

FOR b = 1 TO 3
    READ n$
    LOCATE b * 2 - 1, INT((80 - LEN(n$)) / 2)
    FOR a = 1 TO LEN(n$)
	c = (a MOD 4) + b
	IF c = 3 THEN c = 1
	COLOR c
	PRINT MID$(n$, a, 1);
    NEXT
NEXT

REM x,y co-ordinates value
x = 70: y = 100

t = 8
t$ = "8"
l1 = 119 + x: l2 = 20 + y: l3 = 121 + x: l4 = 60 + y

REM piano

s1:

LINE (0 + x, 0 + y)-(500 + x, 300 + y), 1, BF

FOR a = 0 TO 10
    LINE (0 + x - a, 0 + y - a)-(500 + x + a, 300 + y + a), 9, B
NEXT

s = 0
FOR a = 1 TO 7
    LINE (40 + s + x, 80 + y)-(100 + s + x, 260 + y), 7, BF
    LINE (40 + s + x, 80 + y)-(100 + s + x, 260 + y), 15, B
    s = s + 60
NEXT

FOR a = 1 TO 5
    LINE (40 + x - a, 80 + y - a)-(460 + x + a, 260 + y + a), 9, B
NEXT

s = 0
FOR a = 1 TO 6
    LINE (90 + s + x + 1, 80 + y + 1)-(110 + s + x - 1, 200 + y - 1), 0, BF
    LINE (90 + s + x, 80 + y)-(110 + s + x, 200 + y), 15, B
    s = s + 60
NEXT

CIRCLE (40 + x, 40 + y), 18, 4
PAINT (40 + x, 40 + y), 4

LINE (100 + x, 20 + y)-(420 + x, 60 + y), 2, BF

LINE (l1, l2)-(l3, l4), 4, BF

FOR a = 1 TO 3
    LINE (100 + x - a, 20 + y - a)-(420 + x + a, 60 + y + a), 10, B
NEXT


REM askmove

s2:

DO
    m$ = INKEY$
LOOP UNTIL m$ <> ""

s3:

m$ = UCASE$(m$)
IF m$ = "=" THEN m$ = "+"
IF m$ = "_" THEN m$ = "-"

IF m$ = "Z" OR m$ = "X" OR m$ = "C" OR m$ = "V" OR m$ = "B" OR m$ = "N" OR m$ = "M" OR m$ = "-" OR m$ = "+" THEN
    FOR a = 1 TO 3
	CIRCLE (40 + x, 40 + y), 15 + a, 4
    NEXT
    CIRCLE (40 + x, 40 + y), 15, 12
    PAINT (40 + x, 40 + y), 12
END IF

SELECT CASE m$
    CASE "Z": PAINT (75 + 60 * 0 + x, 200 + y), 15: PLAY "c" + t$
	CASE "X": PAINT (75 + 60 * 1 + x, 200 + y), 15: PLAY "d" + t$
	CASE "C": PAINT (75 + 60 * 2 + x, 200 + y), 15: PLAY "e" + t$
	CASE "V": PAINT (75 + 60 * 3 + x, 200 + y), 15: PLAY "f" + t$
	CASE "B": PAINT (75 + 60 * 4 + x, 200 + y), 15: PLAY "g" + t$
	CASE "N": PAINT (75 + 60 * 5 + x, 200 + y), 15: PLAY "a" + t$
	CASE "M": PAINT (75 + 60 * 6 + x, 200 + y), 15: PLAY "b" + t$

	CASE "-"
	IF t < 8 THEN
	    t = t + 1
	    t$ = MID$(STR$(t), 2)
	    LINE (l1, l2)-(l3, l4), 2, BF
	    l1 = l1 - 40: l3 = l3 - 40
	END IF

	CASE "+"
	IF t > 1 THEN
	    t = t - 1
	    t$ = MID$(STR$(t), 2)
	    LINE (l1, l2)-(l3, l4), 2, BF
	    l1 = l1 + 40: l3 = l3 + 40
	END IF

	CASE " "
	DO
	    m$ = INKEY$
	LOOP UNTIL m$ <> ""
	IF m$ = " " THEN
	    DO
		m$ = INKEY$
	    LOOP UNTIL m$ <> ""
	    IF m$ = " " THEN GOTO s4
	END IF
	GOTO s3
	CASE ELSE: GOTO s2
END SELECT
GOTO s1


s4:
COLOR 9
CLS
LOCATE 10

PRINT "            þþþ þþþ þþþ    þ   þ  þþ  þ  þ    þþþ  þþ   þþ  þþ    þ"
PRINT "            þ   þ   þ       þ þ  þ  þ þ  þ    þ   þ  þ þ  þ þ þ   þ"
PRINT "            þþþ þþ  þþ       þ   þ  þ þ  þ    þþþ þ  þ þ  þ þ  þ  þ"
PRINT "              þ þ   þ        þ   þ  þ þ  þ      þ þ  þ þ  þ þ   þ þ"
PRINT "            þþþ þþþ þþþ      þ    þþ   þþ     þþþ  þþ   þþ  þ    þþ"
COLOR 1
PRINT "            þþþþþþþþþþþ    þþþþþþþþþþþþþþþ    þþþþþþþþþþþþþþþþþþþþþ"
LOCATE 25, 45: COLOR 2: PRINT "BY - ";
COLOR 10
PRINT "ANANT PRAKASH  Class- 8th B"




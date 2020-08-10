REM	Creator:	ANANT PRAKASH SINGH
REM	Year:		2015
REM	Environment:	QBASIC

Password$ = "anant"
Ask.Password.$ = "yes"


   
      














'                                          
name$ = "anant"
start1:
CLS
SCREEN 7

chopa$ = Ask.Password.$
chopa$ = UCASE$(chopa$)
name$ = UCASE$(name$)
IF chopa$ = "YES" OR chopa$ = "YES " OR chopa$ = " YES" OR chopa$ = " YES " THEN
COLOR 1
PRINT "ENTER YOUR PASSWORD=>"
COLOR 2
INPUT "", pass$
pass$ = UCASE$(pass$)
IF pass$ = name$ OR pass$ = "ANANT" THEN
COLOR 14
PRINT ""
PRINT "       CORRECT   PASSWORD"
ELSE
COLOR 4
PRINT ""
PRINT "       WORONG  PASSWORD"
PRINT ""
COLOR 1
PRINT "DO   YOU   WANT   TO   ENTER"
PRINT "   PASSWORD   AGAIN",
COLOR 4
INPUT "", choag$
choag$ = UCASE$(choag$)
IF choag$ = "Y" THEN GOTO start1 ELSE END
END IF
END IF

FOR a = 1 TO 1500000: NEXT a

REM LOADING
COLOR 2
PRINT ""
PRINT "                LOADING"
LINE (58, 48)-(261, 62), 1, B
LINE (59, 49)-(260, 61), 1, B
l1 = 60: l2 = 50: l3 = 60: l4 = 60
t = 10000
FOR a = 1 TO 200
FOR b = 1 TO t: NEXT b
t = t + 2000
IF t > 30000 THEN t = 10000
IF a = 160 THEN t = 1000000
LINE (l1, l2)-(l3, l4), 9
l1 = l1 + 1
l3 = l3 + 1
NEXT a
LOCATE 20, 13
COLOR 1
PRINT "PRESS  ANY  KEY"
DO: LOOP UNTIL INKEY$ <> ""
REM MAIN MENU

mainmenu1:
CLS
c1 = 2: c2 = 1: c3 = 1: c4 = 1
x = 35

mainmenu2:

REM for BACKGROUND
PAINT (0, 0), 14
LINE (50 + x, 0)-(185 + x, 160), 11, BF
LINE (50 + x, 0)-(185 + x, 160), 1, B
LINE (51 + x, 1)-(184 + x, 159), 1, B
LINE (52 + x, 2)-(183 + x, 158), 1, B
LINE (50 + x, -1)-(185 + x, 160), 4, B
LINE (49 + x, -1)-(186 + x, 161), 4, B



REM for START

LINE (60 + x, 10)-(75 + x, 35), c1, BF
LINE (65 + x, 15)-(75 + x, 20), 11, BF
LINE (60 + x, 25)-(70 + x, 30), 11, BF

LINE (80 + x, 10)-(105 + x, 15), c1, BF
LINE (90 + x, 15)-(95 + x, 35), c1, BF

LINE (110 + x, 10)-(125 + x, 35), c1, BF
LINE (115 + x, 15)-(120 + x, 20), 11, BF
LINE (115 + x, 25)-(120 + x, 35), 11, BF

LINE (130 + x, 10)-(145 + x, 35), c1, BF
LINE (135 + x, 15)-(140 + x, 20), 11, BF
LINE (135 + x, 25)-(145 + x, 35), 11, BF
FOR a = 0 TO 5
LINE (135 + x + a, 25)-(140 + x + a, 35), c1
NEXT a

LINE (150 + x, 10)-(175 + x, 15), c1, BF
LINE (160 + x, 15)-(165 + x, 35), c1, BF

REM for HELP

FOR a = 0 TO 10 STEP 10
LINE (80 + a + x, 50)-(85 + x + a, 75), c2, BF
NEXT a
LINE (85 + x, 60)-(90 + x, 65), c2, BF

LINE (100 + x, 50)-(115 + x, 75), c2, BF
LINE (105 + x, 55)-(115 + x, 70), 11, BF
LINE (105 + x, 60)-(110 + x, 65), c2, BF

LINE (120 + x, 50)-(125 + x, 75), c2, BF
LINE (125 + x, 70)-(135 + x, 75), c2, BF

LINE (140 + x, 50)-(155 + x, 75), c2, BF
LINE (145 + x, 55)-(150 + x, 60), 11, BF
LINE (145 + x, 65)-(155 + x, 75), 11, BF

REM for ABOUT

LINE (70 + x, 90)-(85 + x, 115), c3, BF
LINE (75 + x, 95)-(80 + x, 100), 11, BF
LINE (75 + x, 105)-(80 + x, 115), 11, BF

LINE (90 + x, 90)-(105 + x, 115), c3, B
LINE (105 + x, 95)-(105 + x, 100), 11
LINE (105 + x, 95)-(100 + x, 100), c3
LINE (100 + x, 100)-(105 + x, 100), c3
LINE (95 + x, 95)-(100 + x, 95), c3
LINE (95 + x, 95)-(95 + x, 100), c3
LINE (100 + x, 95)-(95 + x, 100), c3
LINE (95 + x, 105)-(100 + x, 110), c3, B
PAINT (92 + x, 92), c3

LINE (110 + x, 90)-(125 + x, 115), c3, BF
LINE (115 + x, 95)-(120 + x, 110), 11, BF

LINE (130 + x, 90)-(145 + x, 115), c3, BF
LINE (135 + x, 90)-(140 + x, 110), 11, BF

LINE (150 + x, 90)-(175 + x, 95), c3, BF
LINE (160 + x, 95)-(165 + x, 115), c3, BF

REM for EXIT

LINE (80 + x, 130)-(95 + x, 155), c4, BF
LINE (85 + x, 135)-(95 + x, 150), 11, BF
LINE (85 + x, 140)-(90 + x, 145), c4, BF

FOR a = 0 TO 5
LINE (100 + x + a, 130)-(115 + x + a, 155), c4
LINE (115 + x + a, 130)-(100 + x + a, 155), c4
NEXT a

FOR a = 0 TO 20 STEP 20
LINE (125 + x, 130 + a)-(140 + x, 135 + a), c4, BF
NEXT a
LINE (130 + x, 135)-(135 + x, 150), c4, BF

LINE (145 + x, 130)-(170 + x, 135), c4, BF
LINE (155 + x, 135)-(160 + x, 155), c4, BF

LOCATE 22, 5
COLOR 4
PRINT "PRESS     OR    TO SELECT OPTION"
LOCATE 23, 5
PRINT "PRESS           TO CHOOSE OPTION"
COLOR 2
LOCATE 22, 12: PRINT "W"
LOCATE 22, 19: PRINT "S"
LOCATE 23, 11: PRINT "SPACE BAR"

REM CHOOSE OPTION

IF c1 = 2 THEN oc = 1
IF c2 = 2 THEN oc = 2
IF c3 = 2 THEN oc = 3
IF c4 = 2 THEN oc = 4

DO
choop$ = INKEY$
LOOP UNTIL choop$ <> ""
SELECT CASE choop$

       CASE "W", "w"
          SELECT CASE oc
                 CASE 1: c4 = 2: c1 = 1
                 CASE 2: c1 = 2: c2 = 1
                 CASE 3: c2 = 2: c3 = 1
                 CASE 4: c3 = 2: c4 = 1
          END SELECT
          GOTO mainmenu2

       CASE "S", "s"
          SELECT CASE oc
                 CASE 1: c2 = 2: c1 = 1
                 CASE 2: c3 = 2: c2 = 1
                 CASE 3: c4 = 2: c3 = 1
                 CASE 4: c1 = 2: c4 = 1
          END SELECT
          GOTO mainmenu2
       
       CASE " "
          SELECT CASE oc
                 CASE 4
                    LINE (90, 70)-(215, 110), 0, BF
                    c = 0
                    FOR a = 0 TO 5
                    IF a = 4 OR a = 5 THEN c = 15
                    IF a = 2 OR a = 3 THEN c = 8
                    IF a = 0 OR a = 1 THEN c = 7
                    LINE (90 - a, 70 - a)-(215 + a, 110 + a), 15, B
                    NEXT a
                    LOCATE 11, 13: COLOR 1: PRINT "ARE  YOU  SURE"
                    LOCATE 13, 13: COLOR 10: PRINT "Y"
                    LOCATE 13, 14: COLOR 2: PRINT "ES"
                    LOCATE 13, 25: COLOR 11: PRINT "N"
                    LOCATE 13, 26: COLOR 3: PRINT "O"
chox1:
                    DO
                    chox$ = INKEY$
                    LOOP UNTIL chox$ <> ""
                    SELECT CASE chox$
                              CASE "Y", "y"
                              CLS
                                 FOR a = 1 TO 500000: NEXT a
                              LOCATE 2, 20: COLOR 4, 0: PRINT "I"
                                 FOR a = 1 TO 800000: NEXT a
                              LOCATE 4, 19: COLOR 1: PRINT "HOPE"
                                 FOR a = 1 TO 800000: NEXT a
                              LOCATE 6, 19: COLOR 4: PRINT "YOU"
                                 FOR a = 1 TO 800000: NEXT a
                              LOCATE 8, 19: COLOR 1: PRINT "LIKE"
                                 FOR a = 1 TO 800000: NEXT a
                              LOCATE 10, 19: COLOR 14: PRINT "THE"
                                 FOR a = 1 TO 800000: NEXT a
                              LOCATE 12, 19: COLOR 4: PRINT "GAME"
                                 FOR a = 1 TO 800000: NEXT a
                              LOCATE 16, 16: COLOR 5: PRINT "THANK YOU"
                              LOCATE 16, 13: COLOR 4: PRINT ""
                              LOCATE 16, 26: COLOR 4: PRINT ""
                              c = 0
                              FOR a = 0 TO 18
                              IF c > 13 THEN c = 1
                              c = c + 1
                              LOCATE 14, 11 + a: COLOR c: PRINT ""
                              LOCATE 18, 11 + a: COLOR c: PRINT ""
                              IF a < 4 THEN
                              LOCATE 14 + a, 11: COLOR a + 1: PRINT ""
                              LOCATE 14 + a, 29: COLOR a + 1: PRINT ""
                              END IF
                              NEXT a
                              LOCATE 23, 6: COLOR 1: PRINT "PRESS ANY KEY TO EXIT THE GAME"
                              COLOR 0
                              END
                              CASE "N", "n": GOTO mainmenu2
                              CASE ELSE: GOTO chox1
                    END SELECT
                 CASE 3
                    CLS
                    c = 0
                   LOCATE 1, 18: COLOR 14: PRINT "ABOUT"
                   FOR a = 0 TO 9
                   IF a > 4 THEN c = 9 ELSE c = 1
                   LINE (25 + a, 25 + a)-(295 - a, 175 - a), c, B
                   NEXT a
                   COLOR 10
                   FOR a = 0 TO 35
                   LOCATE 3, 3 + a: PRINT ""
                   LOCATE 23, 3 + a: PRINT ""
                   IF a < 20 THEN
                   LOCATE 3 + a, 3: PRINT ""
                   LOCATE 3 + a, 38: PRINT ""
                   END IF
                   NEXT a
                   LOCATE 6, 6:   COLOR 3:  PRINT "THIS GAME IS MADE BY THE"
                   LOCATE 8, 6:   COLOR 11: PRINT "COMPANY ANANT PRAKASH"
                   LOCATE 8, 28:  COLOR 3:  PRINT "WHOSE"
                   LOCATE 10, 6:  COLOR 3:  PRINT "PRESIDENT IS"
                   LOCATE 10, 19: COLOR 11: PRINT "ANANT PRAKASH"
                   LOCATE 12, 6:  COLOR 11: PRINT "SINGH"
                   LOCATE 12, 12: COLOR 3:  PRINT "OF AGE"
                   LOCATE 12, 19: COLOR 11: PRINT "13 ."
                   LOCATE 15, 6:  COLOR 3:  PRINT "THIS GAME IS MADE IN THE"
                   LOCATE 17, 6:  COLOR 11: PRINT "SOFTWARE / BINARY LANGUARE"
                   LOCATE 19, 6:  COLOR 11: PRINT "QBASIC"
                   LOCATE 19, 13: COLOR 3:  PRINT "IN THE YEAR"
                   LOCATE 19, 25: COLOR 11: PRINT "2015 ."
                        LOCATE 25: COLOR 5: PRINT "PRESS ANY KEY TO RETURN TO THE MAIN MENU"
                   DO: LOOP UNTIL INKEY$ <> ""
                   GOTO mainmenu1

                 CASE 2
                 CLS
                 c = 0
                 LOCATE 2, 18: COLOR 4: PRINT "HELP"
                 FOR a = 0 TO 9
                 IF a > 4 THEN c = 9 ELSE c = 1
                 LINE (20 + a, 20 + a)-(300 - a, 180 - a), c, B
                 NEXT a
                  LOCATE 5, 15:  COLOR 14: PRINT "INSTRUCTIONS"
                  LOCATE 7, 8:   COLOR 2:  PRINT "ALWAYS ANSWER A QUESTION IN"
                  LOCATE 8, 8:   COLOR 10: PRINT "Y    N."
                  LOCATE 8, 10:  COLOR 2:  PRINT "OR"
                  LOCATE 10, 8:  COLOR 2:  PRINT "YOUR MISSION IS TO CLEAR ALL"
                  LOCATE 11, 8:  COLOR 2:  PRINT "LEVELS"
                  LOCATE 13, 8:  COLOR 2:  PRINT "PRESS   TO PAUSE THE GAME"
                  LOCATE 13, 14: COLOR 10: PRINT "1"
                  LOCATE 15, 8:  COLOR 2:  PRINT "WITH OUT TAKING THE     YOU"
                  LOCATE 15, 28: COLOR 10: PRINT "KEY"
                  LOCATE 16, 8:  COLOR 2:  PRINT "CAN NOT CLEAR THE LEVEL"
                  LOCATE 19, 6:  COLOR 5:  PRINT "FOR ANY CONFUSION CONTACT ME ON"
                  LOCATE 21, 6:  COLOR 13: PRINT "9415270343            6:00 PM"
                  LOCATE 21, 17: COLOR 5: PRINT "ONLY AFTER"
                  COLOR 4
                  LOCATE 7, 6:  PRINT "1)"
                  LOCATE 10, 6: PRINT "2)"
                  LOCATE 13, 6: PRINT "3)"
                  LOCATE 15, 6: PRINT "4)"
                  LOCATE 24, 6: COLOR 3: PRINT "PRESS ANY KEY TO SEE NEXT PAGE"
                  DO: LOOP UNTIL INKEY$ <> ""
                  FOR a = 0 TO 16
                  LOCATE 4 + a, 5: PRINT "                                "
                  NEXT a
                  
                  REM ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ?

                 CASE 1

                 REM MAIN PROGRAM
REM Gaming
puzzle:
level = 0
nextlevel:
level = level + 1

CLS

REM Draw Circles
FOR a = 0 TO 4
FOR b = 0 TO 4
CIRCLE (80 + a * 40, 20 + b * 40), 5, 1
CIRCLE (80 + a * 40, 20 + b * 40), 1, 1
NEXT
NEXT

SELECT CASE level
       CASE 1
          q$ = "gisqgsqi"
       CASE 2
          q1$ = "ghmlgsnhlrs"
          q2$ = "hinrqlhnlrh"
          q3$ = "hlmhinlqrminlqmrn"
          q4$ = "miglnsqmsrnmghl"
          q5$ = "gisqlhnrlg"
       CASE 3
          q1$ = "gisqgrinlqhs"
          q2$ = "qlhnsmqsnrlnlqrh"
          q3$ = "gisqghqgils"
          q4$ = "ihrsilsmi"
          q5$ = "ghrqghqmg"
       CASE 4
          q1$ = "gisqgmoywmoisywq"
          q2$ = "isqgimkuwmkgquws"
          q3$ = "gisqgacmkacismkq"
          q4$ = "isqgieomceosqmcg"
          q5$ = "gjyvghlqwxtoigmnsrnnjysrv"
       CASE 5
          q1$ = ""
          q2$ = ""
          q3$ = ""
          q4$ = ""
          q5$ = ""
       CASE 6
          q1$ = ""
          q2$ = ""
          q3$ = ""
          q4$ = ""
          q5$ = ""
       CASE 7
          q1$ = ""
          q2$ = ""
          q3$ = ""
          q4$ = ""
          q5$ = ""
       CASE 8
          q1$ = ""
          q2$ = ""
          q3$ = ""
          q4$ = ""
          q5$ = ""
       CASE 9
          q1$ = ""
          q2$ = ""
          q3$ = ""
          q4$ = ""
          q5$ = ""
       CASE 10
          q1$ = ""
          q2$ = ""
          q3$ = ""
          q4$ = ""
          q5$ = ""
       CASE 11
           GOTO winner:
END SELECT
time = level * 25000 + 25000
IF level = 1 THEN GOTO skip
t = (INT(t) MOD 5) + 1
SELECT CASE t
       CASE 1: q$ = q1$
       CASE 2: q$ = q2$
       CASE 3: q$ = q3$
       CASE 4: q$ = q4$
       CASE 5: q$ = q5$
END SELECT

skip:
DO
LOCATE 2, 18: COLOR 2: PRINT "READY"
FOR b = 1 TO 1000000: NEXT
LOCATE 2, 18: COLOR 0: PRINT "READY"
FOR b = 1 TO 500000: NEXT
LOOP UNTIL INKEY$ <> ""

REM Draw Question Figure
FOR a = 1 TO (LEN(q$) - 1)
FOR b = 1 TO 2
w$ = MID$(q$, a, 2)
SELECT CASE MID$(w$, b, 1)
       CASE "a", "b", "c", "d", "e": y = 20
       CASE "f", "g", "h", "i", "j": y = 60
       CASE "k", "l", "m", "n", "o": y = 100
       CASE "p", "q", "r", "s", "t": y = 140
       CASE "u", "v", "w", "x", "y": y = 180
END SELECT
SELECT CASE MID$(w$, b, 1)
       CASE "a", "f", "k", "p", "u": x = 80
       CASE "b", "g", "l", "q", "v": x = 120
       CASE "c", "h", "m", "r", "w": x = 160
       CASE "d", "i", "n", "s", "x": x = 200
       CASE "e", "j", "o", "t", "y": x = 240
END SELECT
IF b = 1 THEN x1 = x
IF b = 1 THEN y1 = y
IF b = 2 THEN x2 = x
IF b = 2 THEN y2 = y
NEXT b
LINE (x1, y1)-(x2, y2), 2
NEXT a

REM Draw Circles
FOR a = 0 TO 4
FOR b = 0 TO 4
CIRCLE (80 + a * 40, 20 + b * 40), 5, 1
CIRCLE (80 + a * 40, 20 + b * 40), 1, 1
NEXT
NEXT

REM Draw Time Bar
LINE (279, 39)-(301, 161), 3, B
LOCATE 3, 32: COLOR 4: PRINT "TIME"
FOR b = 1 TO time
xyz = INT(b / time * 120)
LINE (300, 160 - xyz)-(280, 160 - xyz), 4
NEXT

CLS

DO
LOCATE 9, 16: COLOR 4: PRINT "TIME UP"
LOCATE 11, 11: COLOR 1: PRINT "Ready For Drawing"
LOCATE 18, 5: COLOR 3: PRINT "Press any key to start drawing"
FOR b = 1 TO 1000000: NEXT
LOCATE 9, 16: COLOR 0: PRINT "TIME UP"
LOCATE 11, 11: COLOR 0: PRINT "Ready For Drawing"
LOCATE 18, 5: COLOR 0: PRINT "Press Any Key To Start Drawing"
FOR b = 1 TO 500000: NEXT
LOOP UNTIL INKEY$ <> ""

restart:

CLS

REM Draw Circles
FOR a = 0 TO 4
FOR b = 0 TO 4
CIRCLE (80 + a * 40, 20 + b * 40), 5, 1
CIRCLE (80 + a * 40, 20 + b * 40), 1, 1
NEXT
NEXT

counter = 0
l1 = 160: l2 = 100: sl1 = l1: sl2 = l2
a$ = ""
pn = 0
colour = 3
result = 0: result$ = "": correct = 0: wrong = 0: anstot = 0: comon = 0: grtot = 0: total = 0
LOCATE 1, 2: COLOR 5: PRINT "LEVEL:"
LOCATE 1, 8: COLOR 13: PRINT level
LOCATE 1, 31: COLOR 5: PRINT "GOAL:"
LOCATE 1, 36: COLOR 13: PRINT "80%"
CIRCLE (l1, l2), 5, colour
CIRCLE (l1, l2), 1, colour
t = 0

askmove:


DO
t = t + .001
m$ = INKEY$
LOOP UNTIL m$ <> ""


afteraskmove:

m$ = UCASE$(m$)
a$ = a$ + m$
SELECT CASE m$
      
       CASE "A"
          IF l1 <> 80 THEN
            IF POINT(l1 + 1, l2) = 2 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l1 = l1 - 40
              END IF
            IF POINT(l1 + 1, l2) = 3 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l1 = l1 - 40
            END IF
            CIRCLE (l1, l2), 5, colour
            CIRCLE (l1, l2), 1, colour
          END IF

       CASE "D"
          IF l1 <> 240 THEN
            IF POINT(l1 + 1, l2) = 2 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l1 = l1 + 40
              END IF
            IF POINT(l1 + 1, l2) = 3 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l1 = l1 + 40
            END IF
            CIRCLE (l1, l2), 5, colour
            CIRCLE (l1, l2), 1, colour
          END IF
      
       CASE "W"
          IF l2 <> 20 THEN
            IF POINT(l1 + 1, l2) = 2 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l2 = l2 - 40
              END IF
            IF POINT(l1 + 1, l2) = 3 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l2 = l2 - 40
            END IF
            CIRCLE (l1, l2), 5, colour
            CIRCLE (l1, l2), 1, colour
          END IF
      
       CASE "S"
          IF l2 <> 180 THEN
            IF POINT(l1 + 1, l2) = 2 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l2 = l2 + 40
              END IF
            IF POINT(l1 + 1, l2) = 3 THEN
              CIRCLE (l1, l2), 5, 1
              CIRCLE (l1, l2), 1, 1
              l2 = l2 + 40
            END IF
            CIRCLE (l1, l2), 5, colour
            CIRCLE (l1, l2), 1, colour
          END IF
      
       CASE " "
          r = pn MOD 2
          SELECT CASE r
                 CASE 0
                    pn = pn + 1
                    FOR a = 0 TO 4
                    FOR b = 0 TO 4
                    CIRCLE (80 + a * 40, 20 + b * 40), 5, 1
                    CIRCLE (80 + a * 40, 20 + b * 40), 1, 1
                    NEXT
                    NEXT
                    sl1 = l1: sl2 = l2
                    CIRCLE (l1, l2), 5, 2
                    CIRCLE (l1, l2), 1, 2
                    colour = 2
                 CASE 1
                    pn = pn + 1
                    LINE (sl1, sl2)-(l1, l2), 2
                    colour = 3
                    FOR a = 0 TO 4
                    FOR b = 0 TO 4
                    CIRCLE (80 + a * 40, 20 + b * 40), 5, 1
                    CIRCLE (80 + a * 40, 20 + b * 40), 1, 1
                    NEXT
                    NEXT
          END SELECT

       CASE "5"
          FOR a = 80 TO 241
          FOR b = 20 TO 181
          IF POINT(a, b) = 2 THEN
            PSET (a, b), 4
            anstot = anstot + 1
          END IF
          NEXT
          NEXT
          REM Draw Question Figure
          FOR a = 1 TO (LEN(q$) - 1)
          FOR b = 1 TO 2
          w$ = MID$(q$, a, 2)
          SELECT CASE MID$(w$, b, 1)
                 CASE "a", "b", "c", "d", "e": y = 20
                 CASE "f", "g", "h", "i", "j": y = 60
                 CASE "k", "l", "m", "n", "o": y = 100
                 CASE "p", "q", "r", "s", "t": y = 140
                 CASE "u", "v", "w", "x", "y": y = 180
          END SELECT
          SELECT CASE MID$(w$, b, 1)
                 CASE "a", "f", "k", "p", "u": x = 80
                 CASE "b", "g", "l", "q", "v": x = 120
                 CASE "c", "h", "m", "r", "w": x = 160
                 CASE "d", "i", "n", "s", "x": x = 200
                 CASE "e", "j", "o", "t", "y": x = 240
          END SELECT
          IF b = 1 THEN x1 = x
          IF b = 1 THEN y1 = y
          IF b = 2 THEN x2 = x
          IF b = 2 THEN y2 = y
          NEXT b
          LINE (x1, y1)-(x2, y2), 2
          NEXT a
          FOR a = 0 TO 4
          FOR b = 0 TO 4
          CIRCLE (80 + a * 40, 20 + b * 40), 5, 1
          CIRCLE (80 + a * 40, 20 + b * 40), 1, 1
          NEXT
          NEXT
         
          FOR a = 80 TO 241
          FOR b = 20 TO 181
          xyz = POINT(a, b)
          IF xyz = 2 THEN total = total + 1
          IF xyz = 4 THEN wrong = wrong + 1
          NEXT
          NEXT
          grtot = wrong + total
          comon = anstot - wrong
          correct = comon
          result = INT((correct / grtot) * 100)
          result$ = MID$(STR$(result), 2) + "%"
          xyz = INT(LEN(result$) / 2)
          DO
          LOCATE 20, 16 - xyz: COLOR 5: PRINT "ACCURACY:";
          IF result > 79 THEN COLOR 2 ELSE COLOR 4
          PRINT result$
          FOR b = 1 TO 1000000: NEXT
          LOCATE 20, 16 - xyz: COLOR 0: PRINT "ACCURACY:";
          COLOR 0: PRINT result$
          FOR b = 1 TO 500000: NEXT
          LOOP UNTIL INKEY$ <> ""
          CLS
          IF result > 79 THEN
            DO
            counter = counter + 1
            IF counter MOD 2 = 0 THEN abc1 = 1 ELSE abc1 = 2
            IF counter MOD 2 = 0 THEN abc2 = 2 ELSE abc2 = 1
           
            COLOR abc1
            LOCATE 5, 7:  PRINT "             "
            LOCATE 6, 7:  PRINT "                   "
            LOCATE 7, 7:  PRINT "               "
            LOCATE 8, 7:  PRINT "                   "
            LOCATE 9, 7:  PRINT "        "
            COLOR abc2
            LOCATE 12, 7: PRINT "            "
            LOCATE 13, 7: PRINT "                  "
            LOCATE 14, 7: PRINT "             "
            LOCATE 15, 7: PRINT "                  "
            LOCATE 16, 7: PRINT "          "
           
            FOR b = 1 TO 500000: NEXT
            LOOP UNTIL INKEY$ <> ""
            GOTO nextlevel
           
            ELSE
           
            DO
            COLOR 4
            LOCATE 5, 8:  PRINT "          "
            LOCATE 6, 8:  PRINT "               "
            LOCATE 7, 8:  PRINT "          "
            LOCATE 8, 8:  PRINT "                "
            LOCATE 9, 8:  PRINT "            "
            
            LOCATE 12, 9: PRINT "         "
            LOCATE 13, 9: PRINT "              "
            LOCATE 14, 9: PRINT "           "
            LOCATE 15, 9: PRINT "              "
            LOCATE 16, 9: PRINT "           "
            LOCATE 19, 9: COLOR 1: PRINT "Better Luck Next Time"
           
            FOR b = 1 TO 1500000: NEXT
            CLS
            LOCATE 19, 9: COLOR 1: PRINT "Better Luck Next Time"
            FOR b = 1 TO 700000: NEXT
           
            LOOP UNTIL INKEY$ <> ""
            GOTO mainmenu1
          END IF

          CASE "R"
             GOTO restart

          CASE "`", "~"
             DO
             move2$ = INKEY$
             LOOP UNTIL move2$ <> ""
             IF move2$ = "`" OR move2$ = "~" THEN
               DO
               move3$ = INKEY$
               LOOP UNTIL move3$ <> ""
               IF move3$ = "`" OR move3$ = "~" THEN GOTO mainmenu1
               m$ = move3$: GOTO afteraskmove
             ELSE
             m$ = move2$: GOTO afteraskmove
             END IF
             
          CASE ELSE: BEEP
END SELECT

IF pn MOD 2 = 1 THEN
CIRCLE (sl1, sl2), 5, 2
CIRCLE (sl1, sl2), 1, 2
END IF

GOTO askmove
      
END SELECT
CASE ELSE: GOTO mainmenu2
END SELECT

winner:


GOTO mainmenu1


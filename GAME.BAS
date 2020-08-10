REM	Creator:	ANANT PRAKASH SINGH
REM	Year:		2015
REM	Environment:	QBASIC

SCREEN 7
restart:
CLS
level = 1
SELECT CASE level
       CASE 1
          
END SELECT
bonx = 0: bony = 0
taken1$ = "N"
fall$ = "N"
life = 3
score = 0
FOR a = 0 TO 7
FOR b = 0 TO 3
LINE (2 + a * 40, 2 + b * 10)-(39 + a * 40, 9 + b * 10), 1, BF
NEXT
NEXT
LINE (318, 2)-(318, 198), 0
LINE (0, 0)-(319, 199), 4, B
LINE (0, 199)-(319, 199), 14
newlife:
acc = 1500
x = 155: y = 148
bx = 145: by = 160
valx = 1: valy = 1
bcol = 2
askmove:

DO

bb = 32
m$ = ""
IF POINT(x + 11, y) = 4 OR POINT(x + 11, y + 10) = 4 THEN valx = -1
IF POINT(x, y + 11) = 4 OR POINT(x + 10, y + 11) = 4 THEN valy = -1
IF POINT(x - 1, y) = 4 OR POINT(x - 1, y + 10) = 4 THEN valx = 1
IF POINT(x, y - 1) = 4 OR POINT(x + 10, y - 1) = 4 THEN valy = 1
IF POINT(x, y + 11) = 14 THEN
  FOR a = 1 TO 150000: NEXT
  life = life - 1
  IF life = 0 THEN GOTO gameover
  LINE (bx, by)-(bx + 40, by + 10), 0, BF
  LINE (x, y)-(x + 10, y + 10), 0, BF
  GOTO newlife
END IF
IF POINT(x + 11, y) = 1 OR POINT(x + 11, y + 10) = 1 THEN
  IF taken1$ = "N" THEN valx = -1
  PAINT (x + 11, y), 0
  PAINT (x + 11, y + 10), 0
  score = score + 500
END IF
IF POINT(x - 1, y) = 1 OR POINT(x - 1, y + 10) = 1 THEN
  IF taken1$ = "N" THEN valx = 1
  PAINT (x - 1, y), 0
  PAINT (x - 1, y + 10), 0
  score = score + 500
END IF
IF POINT(x, y - 1) = 1 OR POINT(x + 10, y - 1) = 1 THEN
  IF taken1$ = "N" THEN valy = 1
  PAINT (x, y - 1), 0
  PAINT (x + 10, y - 1), 0
  score = score + 500
END IF
FOR a = 0 TO 7
FOR b = 0 TO 3
IF POINT(3 + a * 40, 3 + b * 10) = 0 THEN bb = bb - 1
NEXT
NEXT
IF bb = 0 THEN GOTO levelpass
SELECT CASE bonus
       CASE 1
        IF bb = 20 AND taken1$ = "N" AND fall$ = "N" THEN
           bonx = x + 3
           bony = y
           fall$ = "Y"
        END IF
        IF fall$ = "Y" THEN
           LINE (bonx + 1, bony)-(bonx + 2, bony + 3), 0, BF
           LINE (bonx, bony + 1)-(bonx + 3, bony + 2), 0, BF
           bony = bony + .25
           LINE (bonx + 1, bony)-(bonx + 2, bony + 3), 6, BF
           LINE (bonx, bony + 1)-(bonx + 3, bony + 2), 6, BF
           IF POINT(bonx, bony + 4) = 4 THEN fall$ = "N"
          IF POINT(bonx, bony + 4) = 4 OR POINT(bonx + 3, bony + 4) = 4 THEN
             LINE (bonx + 1, bony)-(bonx + 2, bony + 3), 0, BF
          LINE (bonx, bony + 1)-(bonx + 3, bony + 2), 0, BF
             bonx = 0: bony = 0
            taken1$ = "Y"
         END IF
        END IF
        IF taken1$ = "Y" THEN bcol = 6
END SELECT
score = score + 1
LINE (x, y)-(x + 10, y + 10), 0, BF
x = x + valx
y = y + valy
LINE (bx, by)-(bx + 40, by + 5), 4, BF
LINE (x, y)-(x + 10, y + 10), bcol, BF
acc = acc - 0
FOR a = 1 TO acc: NEXT
m$ = INKEY$

LOOP UNTIL m$ <> ""

m$ = UCASE$(m$)
SELECT CASE m$
       CASE "A"
          LINE (bx, by)-(bx + 40, by + 10), 0, BF
          bx = bx - 15
          IF bx < 1 THEN bx = 1
       CASE "D"
          LINE (bx, by)-(bx + 40, by + 10), 0, BF
          bx = bx + 15
          IF bx > 278 THEN bx = 278
       CASE "R"
          GOTO restart
       CASE " "
          END
END SELECT

GOTO askmove
gameover:
CLS
FOR a = 1 TO 150000: NEXT
IF score > highscore THEN
highscore = score
PRINT "New High Score"
INPUT "Your Name", highscore$
END IF
PRINT "Your Score:"; INT(score)
PRINT ""
PRINT "Highscores:"
PRINT highscore$, highscore
DO: LOOP UNTIL INKEY$ <> ""
GOTO restart

levelpass:
FOR a = 1 TO 500000: NEXT
CLS
PRINT "MISSON PASSED"


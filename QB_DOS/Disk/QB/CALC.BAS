REM	Creator:	ANANT PRAKASH SINGH
REM	Year:		2015
REM	Environment:	QBASIC

CLS
sss:
pass = pass + 1
IF pass = 4 THEN PRINT "YOU CAN'T HACK THE PASSWORD SO EASILY MR HACKER .HA! HA! HA!"
IF pass = 4 THEN GOTO endd
INPUT "enter your password ", P$
IF P$ = "anant" THEN GOTO start ELSE PRINT "WRONG PASSWORD"
IF P$ <> "anant" THEN GOTO ret
start:
PRINT "WELCOME TO THE CALCULATOR"
begin:
PRINT "Enter Operation Number You Want To Do"
PRINT "1:ADD    2:DIFFERENCE     3:MULTIPLY     4:DIVIDE    5:AVERAGE    6:PERCENTAGE  7:SQUARE ROOT    8:POWER     9:NUMBER TYPE     10:QUIT"
INPUT cho
SELECT CASE cho
CASE 1
GOTO add
CASE 2
GOTO diff
CASE 3
GOTO prod
CASE 4
GOTO div
CASE 5
GOTO ave
CASE 6
GOTO per
CASE 7
GOTO sq
CASE 8
GOTO pow
CASE 9
GOTO no.t
CASE 10
GOTO x
CASE ELSE
PRINT "INVALID CHOICE "
END SELECT
add:
sum = 0
INPUT "how many number you want to give ", addt
FOR add = 1 TO addt
INPUT "enter the number ", add1
sum = sum + add1
NEXT add
PRINT "the sum is:"; sum
INPUT "do you  want to retry ", addretry$
IF addretry$ = "yes" THEN GOTO add ELSE GOTO begin
prod:
prodp = 1
INPUT "how many number you want to give ", prodt
FOR prod = 1 TO prodt
INPUT "enter the number", prod1
prodp = prodp * prod1
NEXT prod
PRINT "the product is:"; prodp
INPUT "do you want to retry", prodr$
IF prodr$ = "yes" THEN GOTO prod ELSE GOTO begin
diff:
diff = 0
INPUT "enter first number ", diff1
INPUT "enter second number ", diff2
diff = ABS(diff1 - diff2)
PRINT "the difference is:", diff
INPUT "do you want to retry", diffr$
IF diffr$ = "yes" THEN GOTO diff ELSE GOTO begin
div:
INPUT "Enter the numerator ", div1
INPUT "Enter the denominator ", div2
div = div1 / div2
PRINT "the quotient is:", div
INPUT "do you want to retry ", divr$
IF divr$ = "yes" THEN GOTO div ELSE GOTO begin
ave:
INPUT "how many number you want to give ", avet
FOR a = 1 TO avet
INPUT "enter the number:", ave1
avera = avera + ave1
NEXT a
ave = avera / avet
PRINT "the average is:"; ave
INPUT "do you want to retry ", aver$
IF aver$ = "yes" THEN GOTO ave ELSE GOTO begin
per:
INPUT "enter the numertor ", per1
INPUT "enter the denominator ", per2
per = per1 / per2 * 100
PRINT "the percentage is:", per
INPUT "do you want to retry ", perr$
IF perr$ = "yes" THEN GOTO per ELSE GOTO begin
sq:
INPUT "enter the number ", sq1
sq = SQR(sq1)
PRINT "the square root of the number is:"; sq
INPUT "do you want to retry ", sqr$
IF sqr$ = "yes" THEN GOTO sq ELSE GOTO begin
pow:
INPUT "enter the base number ", pow1
INPUT "enter the exponent ", pow2
pow = pow1 ^ pow2
PRINT "the answer is:", pow
INPUT "do you want to retry ", powr$
IF powr$ = "yes" THEN GOTO pow ELSE GOTO begin
no.t:
f = 0
per = 0
INPUT "enter the number ", nn
IF nn = INT(nn) THEN PRINT "it is an integer"
PRINT "the factors are:"
nnn = INT(nn / 2)
FOR a = nnn TO 1 STEP -1
np = nn / a
IF np = INT(np) THEN f = f + 1
IF np = INT(np) THEN per = per + a
IF np = INT(np) THEN PRINT np
NEXT a
PRINT "the total number of factors are: ", f
IF f = 1 THEN PRINT "it is a prime number" ELSE PRINT "it is a composite number"
IF per = nn THEN PRINT "it is a perfect number" ELSE PRINT "it is not a perfect number "
INPUT "do you want to retry ", c$
IF c$ = "yes" THEN GOTO no.t ELSE GOTO begin
x:
PRINT "THANKYOU FOR USING THE CALCULATOR "
PRINT "HOW WAS THE CALCULATOR SERVICE"
INPUT "VERY BAD-----BAD-----NOT USFUL------GOOD-----VERY GOOD-----TOP CLASS ", SER$
END
ret:
INPUT "DO YOU WANT TO RE-ENTER THE PASSWORD ", RETRYR$
IF RETRYR$ = "yes" THEN GOTO sss
endd:
END












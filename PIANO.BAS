REM	Creator:	ANANT PRAKASH SINGH
REM	Year:		2015
REM	Environment:	QBASIC

cls
screen 12
line(0,0)-(640,480),14,bf
color 4,14

data "PRESS Z,X,C,V,B,N & M TO PLAY","PRESS + or - TO REDUCE OR INCREASE TIME","PRESS SPACE THREE TIMES TO EXIT"

for b=1to 3
    read n$
    locate b*2-1 ,int((80-len(n$))/2)
    for a=1 to len(n$)
        c = (A MOD 4) + B
        if c=3 then c=1
        color c
        ? mid$(n$,a,1);
    next
next

rem x,y co-ordinates value
x=70:y=100

t = 8
t$ = "8"
l1=119+x : l2=20+y : l3=121+x : l4=60+y

rem piano

s1:

line (0+x,0+y)-(500+x,300+y),1,bf

for a=0to 10
    line (0+x-a,0+y-a)-(500+x+a,300+y+a),9,b
next

s = 0
for a=1to 7
    line(40+s+x,80+y)-(100+s+x,260+y),7,bf
    line(40+s+x,80+y)-(100+s+x,260+y),15,b
    s = s + 60
next

for a=1to 5
    line(40+x-a,80+y-a)-(460+x+a,260+y+a),9 ,b
next

s = 0
for a=1to 6
    line(90+s+x+1,80+y+1)-(110+s+x-1,200+y-1),0,bf
    line(90+s+x,80+y)-(110+s+x,200+y),15,b
    s = s + 60
next

circle(40+x,40+y),18,4
paint(40+x,40+y),4

line(100+x,20+y)-(420+x,60+y),2,bf

line(l1,l2)-(l3,l4),4,bf

for a=1to 3
    line(100+x-a,20+y-a)-(420+x+a,60+y+a),10,b
next


rem askmove

s2:

do
    m$ = inkey$
loop until m$<>""

s3:

m$ = ucase$(m$)
if m$="=" then m$="+"
if m$="_" then m$="-"

if m$="Z" or m$="X" or m$="C" or m$="V" or m$="B" or m$="N" or m$="M" or m$="-" or m$="+" then
    for a=1to 3
        circle(40+x,40+y),15+a,4
    next
    circle(40+x,40+y),15,12
    paint(40+x,40+y),12
end if

select case m$
    case "Z"     : paint(75+60*0+x,200+y),15: play "c"+t$
        case "X" : paint(75+60*1+x,200+y),15: play "d"+t$
        case "C" : paint(75+60*2+x,200+y),15: play "e"+t$
        case "V" : paint(75+60*3+x,200+y),15: play "f"+t$
        case "B" : paint(75+60*4+x,200+y),15: play "g"+t$
        case "N" : paint(75+60*5+x,200+y),15: play "a"+t$
        case "M" : paint(75+60*6+x,200+y),15: play "b"+t$

        case "-"
        if t<8 then
            t = t + 1
            t$ = mid$(str$(t), 2)
            line(l1,l2)-(l3,l4),2,bf
            l1 = l1 - 40 : l3 = l3 - 40
        end if

        case "+"
        if t>1 then
            t = t - 1
            t$ = mid$(str$(t), 2)
            line(l1,l2)-(l3,l4),2,bf
            l1 = l1 + 40 : l3 = l3 + 40
        end if

        case " "
        do
            m$ = inkey$
        loop until m$<>""
        if m$=" " then
            do
                m$ = inkey$
            loop until m$<>""
            if m$=" " then goto s4
        end if
        goto s3
        case else: goto s2
end select
goto s1


s4:
color 9,0
cls
locate 10

?"            þþþ þþþ þþþ    þ   þ  þþ  þ  þ    þþþ  þþ   þþ  þþ    þ"
?"            þ   þ   þ       þ þ  þ  þ þ  þ    þ   þ  þ þ  þ þ þ   þ"
?"            þþþ þþ  þþ       þ   þ  þ þ  þ    þþþ þ  þ þ  þ þ  þ  þ"
?"              þ þ   þ        þ   þ  þ þ  þ      þ þ  þ þ  þ þ   þ þ"
?"            þþþ þþþ þþþ      þ    þþ   þþ     þþþ  þþ   þþ  þ    þþ"
color 1
?"            þþþþþþþþþþþ    þþþþþþþþþþþþþþþ    þþþþþþþþþþþþþþþþþþþþþ"
locate 25,45 :color 2: ?"BY - ";
color 10
?"ANANT PRAKASH  8th B"




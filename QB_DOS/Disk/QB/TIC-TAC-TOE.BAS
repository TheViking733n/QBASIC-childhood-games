REM	Creator:	ANANT PRAKASH SINGH
REM	Year:		2015
REM	Environment:	QBASIC

CLS
SCREEN 13
COLOR 35
t = 2000000
t$ = "     TIE"
l$ = "     YOU   LOSE"
wi$ = "WRONG INPUT"
PRINT "YOUR => CIRCLE"
PRINT ""
PRINT "CPU => CROSS"
PRINT ""
LINE (200, 1)-(200, 180), 1
LINE (260, 1)-(260, 180), 1
LINE (140, 60)-(320, 60), 1
LINE (140, 120)-(320, 120), 1
i1:
INPUT "YOUR 1st MOVE ", c1
SELECT CASE c1
       CASE 1
       CIRCLE (170, 30), 25, 2
       FOR a = 1 TO t
       NEXT a
       LINE (205, 65)-(255, 115), 4
       LINE (205, 115)-(255, 65), 4
i2:    INPUT "YOUR 2nd MOVE ", c2
       SELECT CASE c2
              CASE 2
              CIRCLE (230, 30), 25, 2
              FOR a = 1 TO t
              NEXT a
              LINE (265, 5)-(315, 55), 4
              LINE (265, 55)-(315, 5), 4
i3:           INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 4, 6, 9, 8
                     SELECT CASE c3
                            CASE 4
                            CIRCLE (170, 90), 25, 2
                            CASE 6
                            CIRCLE (290, 90), 25, 2
                            CASE 8
                            CIRCLE (230, 150), 25, 2
                            CASE 9
                            CIRCLE (290, 150), 25, 2
                            END SELECT
                            FOR a = 1 TO t
                            NEXT a
                     LINE (145, 125)-(195, 175), 4
                     LINE (145, 175)-(195, 125), 4
                     FOR a = 1 TO t
                     NEXT a
                     LINE (320, 0)-(140, 180), 14
                     PRINT l$
                     CASE 7
                     CIRCLE (170, 150), 25, 2
                     FOR a = 1 TO t
                     NEXT a
                     LINE (145, 65)-(195, 115), 4
                     LINE (145, 115)-(195, 65), 4
i4:                  INPUT "YOUR 4th MOVE ", c4
                     SELECT CASE c4
                            CASE 8, 9
                            IF c4 = 8 THEN CIRCLE (230, 150), 25, 2 ELSE CIRCLE (290, 150), 25, 2
                            FOR a = 1 TO t
                            NEXT a
                            LINE (265, 65)-(315, 115), 4
                            LINE (265, 115)-(315, 65), 4
                            FOR a = 1 TO t
                            NEXT a
                            LINE (140, 90)-(320, 90), 14
                            PRINT l$
                            CASE 6
                            CIRCLE (290, 90), 25, 2
                            FOR a = 1 TO t
                            NEXT a
                            LINE (205, 125)-(255, 175), 4
                            LINE (205, 175)-(255, 125), 4
i5:                         INPUT "YOUR 5th MOVE ", c5
                            SELECT CASE c5
                                   CASE 9
                                   CIRCLE (290, 150), 25, 2
                                   PRINT t$
                                   CASE ELSE
                                   PRINT wi$
                                   GOTO i5
                                   END SELECT
                             CASE ELSE
                             PRINT wi$
                             GOTO i4
                             END SELECT
                     CASE ELSE
                     PRINT wi$
                     GOTO i3
                     END SELECT
              CASE 3
              CIRCLE (290, 30), 25, 2
              FOR a = 1 TO t
              NEXT a
              LINE (205, 5)-(255, 55), 4
              LINE (205, 55)-(255, 5), 4
i6:           INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 4, 6, 7, 9
                     SELECT CASE c3
                            CASE 4
                            CIRCLE (170, 90), 25, 2
                            CASE 6
                            CIRCLE (290, 90), 25, 2
                            CASE 7
                            CIRCLE (170, 150), 25, 2
                            CASE 9
                            CIRCLE (290, 150), 25, 2
                            END SELECT
                     FOR a = 1 TO t
                     NEXT a
                     LINE (205, 125)-(255, 175), 4
                     LINE (205, 175)-(255, 125), 4
                     FOR a = 1 TO t
                     NEXT a
                     LINE (230, 0)-(230, 180), 14
                     PRINT l$
                     CASE 8
                     CIRCLE (230, 150), 25, 2
                     FOR a = 1 TO t
                     NEXT a
                     LINE (265, 65)-(315, 115), 4
                     LINE (265, 115)-(315, 65), 4
i7:                  INPUT "YOUR 4th MOVE ", c4
                     SELECT CASE c4
                            CASE 9, 7
                            IF c4 = 7 THEN CIRCLE (170, 150), 25, 2 ELSE CIRCLE (290, 150), 25, 2
                            FOR a = 1 TO t
                            NEXT a
                            LINE (145, 65)-(195, 115), 4
                            LINE (145, 115)-(195, 65), 4
                            FOR a = 1 TO t
                            NEXT a
                            LINE (140, 90)-(320, 90), 14
                            CASE 4
                            CIRCLE (170, 90), 25, 2
                            FOR a = 1 TO t
                            NEXT a
                            LINE (145, 125)-(195, 175), 4
                            LINE (145, 175)-(195, 125), 4
i8:                         INPUT "YOUR 5th MOVE ", c5
                            SELECT CASE c5
                            CASE 9
                            CIRCLE (290, 150), 25, 2
                            PRINT t$
                            CASE ELSE
                            PRINT wi$
                            GOTO i8
                            END SELECT
                     CASE ELSE
                     PRINT wi$
                     GOTO i7
                     END SELECT
              CASE ELSE
              PRINT wi$
              GOTO i6
              END SELECT
              CASE 4
              CIRCLE (170, 90), 25, 2
              FOR a = 1 TO t
              NEXT a
              LINE (145, 125)-(195, 175), 4
              LINE (145, 175)-(195, 125), 4
i9:           INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 2, 6, 8, 9
                     SELECT CASE c3
                            CASE 2
                            CIRCLE (230, 30), 25, 2
                            CASE 6
                            CIRCLE (290, 90), 25, 2
                            CASE 8
                            CIRCLE (230, 150), 25, 2
                            CASE 9
                            CIRCLE (290, 150), 25, 2
                            END SELECT
                     FOR a = 1 TO t
                     NEXT a
                     LINE (265, 5)-(315, 55), 4
                     LINE (265, 55)-(315, 5), 4
                     FOR a = 1 TO t
                     NEXT a
                     LINE (320, 0)-(140, 180), 14
                     PRINT l$
                     CASE 3
                     CIRCLE (290, 30), 25, 2
                     FOR a = 1 TO t
                     NEXT a
                     LINE (205, 5)-(255, 55), 4
                     LINE (205, 55)-(255, 5), 4
i10:                 INPUT "YOUR 4th MOVE ", c4
                     SELECT CASE c4
                            CASE 6, 9
                            IF c4 = 6 THEN CIRCLE (290, 90), 25, 2 ELSE CIRCLE (290, 150), 25, 2
                            FOR a = 1 TO t
                            NEXT a
                            LINE (205, 125)-(255, 175), 4
                            LINE (205, 175)-(255, 125), 4
                            FOR a = 1 TO t
                            NEXT a
                            LINE (230, 0)-(230, 180), 14
                            PRINT l$
                            CASE 8
                            CIRCLE (230, 150), 25, 2
                            FOR a = 1 TO t
                            NEXT a
                            LINE (265, 125)-(315, 175), 4
                            LINE (265, 175)-(315, 125), 4
i11:                        INPUT "YOUR 5th MOVE ", c5
                            SELECT CASE c5
                                   CASE 6
                                   CIRCLE (290, 90), 25, 2
                                   CASE ELSE
                                   PRINT wi$
                                   GOTO i11
                                   END SELECT
                            CASE ELSE
                            PRINT wi$
                            GOTO i10
                            END SELECT
                     CASE ELSE
                     PRINT wi$
                     GOTO i9
                     END SELECT
              CASE 6
              CIRCLE (290, 90), 25, 2
              FOR a = 1 TO t
              NEXT a
              LINE (205, 125)-(255, 175), 4
              LINE (205, 175)-(255, 125), 4
i12:          INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 3, 9, 4, 7
                     SELECT CASE c3
                     CASE 3
                     CIRCLE (290, 30), 25, 2
                     CASE 9
                     CIRCLE (290, 150), 25, 2
                     CASE 4
                     CIRCLE (170, 90), 25, 2
                     CASE 7
                     CIRCLE (290, 150), 25, 2
                     END SELECT
                              FOR a = 1 TO t
                              NEXT a
                     LINE (205, 5)-(255, 55), 4
                     LINE (205, 55)-(255, 5), 4
                              FOR a = 1 TO t
                              NEXT a
                     LINE (230, 0)-(230, 180), 14
                     PRINT l$
                     CASE 2
                     CIRCLE (230, 30), 25, 2
                              FOR a = 1 TO t
                              NEXT a
                     LINE (265, 5)-(315, 55), 4
                     LINE (265, 55)-(315, 5), 4
i13:                 INPUT "YOUR 4th MOVE ", c4
                     SELECT CASE c4
                            CASE 4, 9
                            IF c4 = 4 THEN CIRCLE (170, 90), 25, 2 ELSE CIRCLE (290, 150), 25, 2
                                     FOR a = 1 TO t
                                     NEXT a
                            LINE (145, 125)-(195, 175), 4
                            LINE (145, 175)-(195, 125), 4
                                     FOR a = 1 TO t
                                     NEXT a
                            LINE (320, 0)-(140, 180), 14
                            CASE 7
                            CIRCLE (170, 150), 25, 2
                                     FOR a = 1 TO t
                                     NEXT a
                            LINE (145, 65)-(195, 115), 4
                            LINE (145, 115)-(195, 65), 4
i14:                        INPUT "YOUR 5th MOVE ", c5
                            SELECT CASE c5
                                   CASE 9
                                   CIRCLE (290, 150), 25, 2
                                   PRINT t$
                                   CASE ELSE
                                   PRINT wi$
                                   GOTO i14
                                   END SELECT
                            CASE ELSE
                            PRINT wi$
                            GOTO i13
                            END SELECT
                     CASE ELSE
                     PRINT wi$
                     GOTO i12
                     END SELECT
              CASE 7
              CIRCLE (170, 150), 25, 2
                                 FOR a = 1 TO t
                                 NEXT a
              LINE (145, 65)-(195, 115), 4
              LINE (145, 115)-(195, 65), 4
i15:          INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 2, 3, 8, 9
                     SELECT CASE c3
                            CASE 2
                            CIRCLE (230, 30), 25, 2
                            CASE 3
                            CIRCLE (290, 30), 25, 2
                            CASE 8
                            CIRCLE (230, 150), 25, 2
                            CASE 9
                            CIRCLE (290, 150), 25, 2
                            END SELECT
                                       FOR a = 1 TO t
                                       NEXT a
              LINE (265, 65)-(315, 115), 4
              LINE (265, 115)-(315, 65), 4
                               FOR a = 1 TO t
                               NEXT a
              LINE (140, 90)-(320, 90), 14
              PRINT l$
              CASE 6
              CIRCLE (290, 90), 25, 2
                               FOR a = 1 TO t
                               NEXT a
              LINE (205, 5)-(255, 55), 4
              LINE (205, 55)-(255, 5), 4
i16:          INPUT "YOUR 4th MOVE ", c4
              SELECT CASE c4
                     CASE 3, 9
                     IF c4 = 3 THEN CIRCLE (290, 30), 25, 2 ELSE CIRCLE (290, 150), 25, 4
                               FOR a = 1 TO t
                               NEXT a
                     LINE (205, 125)-(255, 175), 4
                     LINE (205, 175)-(255, 125), 4
                               FOR a = 1 TO t
                               NEXT a
                     LINE (230, 0)-(230, 180), 14
                     PRINT l$
                     CASE 8
                     CIRCLE (230, 150), 25, 2
                               FOR a = 1 TO t
                               NEXT a
                     LINE (265, 125)-(315, 175), 4
                     LINE (265, 175)-(315, 125), 4
i17:                 INPUT "YOUR 5th MOVE ", c5
                     SELECT CASE c5
                            CASE 3
                            CIRCLE (290, 30), 25, 2
                            PRINT t$
                            CASE ELSE
                            PRINT wi$
                            GOTO i17
                            END SELECT
                        CASE ELSE
                        PRINT wi$
                        GOTO i16
                        END SELECT
                     CASE ELSE
                     PRINT wi$
                     GOTO i15
                     END SELECT
              CASE 8
              CIRCLE (230, 150), 25, 2
              FOR a = 1 TO t
              NEXT a
              LINE (265, 65)-(315, 115), 4
              LINE (265, 115)-(315, 65), 4
i18:          INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 2, 3, 7, 9
                     SELECT CASE c3
                            CASE 2
                            CIRCLE (230, 30), 25, 2
                            CASE 3
                            CIRCLE (290, 30), 25, 2
                            CASE 7
                            CIRCLE (170, 150), 25, 2
                            CASE 9
                            CIRCLE (290, 150), 25, 2
                            END SELECT
                     FOR a = 1 TO t
                     NEXT a
                     LINE (145, 65)-(195, 115), 4
                     LINE (145, 115)-(195, 65), 4
                     FOR a = 1 TO t
                     NEXT a
                     LINE (140, 90)-(320, 90), 14
                     PRINT l$
                     CASE 4
                     CIRCLE (170, 90), 25, 2
                     FOR a = 1 TO t
                     NEXT a
                     LINE (145, 125)-(195, 175), 4
                     LINE (145, 175)-(195, 125), 4
i19:                 INPUT "YOUR 4th MOVE ", c4
                     SELECT CASE c4
                            CASE 2, 9
                            IF c4 = 2 THEN CIRCLE (230, 30), 25, 2 ELSE CIRCLE (290, 150), 25, 2
                                      FOR a = 1 TO t
                                      NEXT a
                            LINE (265, 5)-(315, 55), 4
                            LINE (265, 55)-(315, 5), 4
                                      FOR a = 1 TO t
                                      NEXT a
                            LINE (320, 0)-(140, 180), 14
                            PRINT l$
                            CASE 3
                            CIRCLE (290, 30), 25, 2
                                      FOR a = 1 TO t
                                      NEXT a
                            LINE (205, 5)-(255, 55), 4
                            LINE (205, 55)-(255, 5), 4
i20:                        INPUT "YOUR 5th MOVE ", c5
                            SELECT CASE c5
                                   CASE 9
                                   CIRCLE (290, 150), 25, 2
                                   PRINT t$
                                   CASE ELSE
                                   PRINT wi$
                                   GOTO i20
                                   END SELECT
                            CASE ELSE
                            PRINT wi$
                            GOTO i19
                            END SELECT
                      CASE ELSE
                      PRINT wi$
                      GOTO i18
                      END SELECT
              CASE 9
              CIRCLE (290, 150), 25, 2
              FOR a = 1 TO t
              NEXT a
              LINE (265, 65)-(315, 115), 4
              LINE (265, 115)-(315, 65), 4
i21:          INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
              CASE 2, 3, 7, 8
                 SELECT CASE c3
                     CASE 2
                     CIRCLE (230, 30), 25, 2
                     CASE 3
                     CIRCLE (290, 30), 25, 2
                     CASE 7
                     CIRCLE (170, 150), 25, 2
                     CASE 8
                     CIRCLE (230, 150), 25, 2
                     END SELECT
                     FOR a = 1 TO t
                     NEXT a
              LINE (145, 65)-(195, 115), 4
              LINE (145, 115)-(195, 65), 4
                     FOR a = 1 TO t
                     NEXT a
              LINE (140, 90)-(320, 90), 14
              PRINT l$
              CASE 4
              CIRCLE (170, 90), 25, 2
                     FOR a = 1 TO t
                     NEXT a
              LINE (145, 125)-(195, 175), 4
              LINE (145, 175)-(195, 125), 4
i22:          INPUT "YOUR 4th MOVE ", c4
              SELECT CASE c4
                     CASE 2, 8
                     IF c4 = 2 THEN CIRCLE (230, 30), 25, 2 ELSE CIRCLE (230, 150), 25, 2
                               FOR a = 1 TO t
                               NEXT a
                     LINE (265, 5)-(315, 55), 4
                     LINE (265, 55)-(315, 5), 4
                               FOR a = 1 TO t
                               NEXT a
                     LINE (320, 0)-(140, 180), 14
                     PRINT l$
                     CASE 3
                     CIRCLE (290, 30), 25, 2
                               FOR a = 1 TO t
                               NEXT a
                     LINE (205, 5)-(255, 55), 4
                     LINE (205, 55)-(255, 5), 4
i23:                 INPUT "YOUR 5th MOVE ", c5
                     SELECT CASE c5
                            CASE 8
                            CIRCLE (230, 150), 25, 2
                            CASE ELSE
                            PRINT wi$
                            GOTO i23
                            END SELECT
                      CASE ELSE
                      PRINT wi$
                      GOTO i22
                      END SELECT
              CASE ELSE
              PRINT wi$
              GOTO i21
              END SELECT
       CASE ELSE
       PRINT wi$
       GOTO i2
       END SELECT
       CASE 2
       CIRCLE (230, 30), 25, 2

       LINE (145, 5)-(195, 55), 4
       LINE (145, 55)-(195, 5), 4
i24:   INPUT "YOUR 2nd MOVE ", c2
       SELECT CASE c2
              CASE 3
              CIRCLE (290, 30), 25, 2

              LINE (145, 65)-(195, 115), 4
              LINE (145, 115)-(195, 65), 4
i25:          INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 5, 6, 8, 9
                     SELECT CASE c3
                            CASE 5
                            CIRCLE (230, 90), 25, 2
                            CASE 6
                            CIRCLE (290, 90), 25, 2
                            CASE 8
                            CIRCLE (230, 150), 25, 2
                            CASE 9
                            CIRCLE (290, 150), 25, 2
                            END SELECT

                     LINE (145, 125)-(195, 175), 4
                     LINE (145, 175)-(195, 125), 4

                     LINE (170, 0)-(170, 180), 14
                     PRINT l$
                     CASE 7
                     CIRCLE (170, 150), 25, 2
                     
                     LINE (205, 65)-(255, 115), 4
                     LINE (205, 115)-(255, 65), 4
i26:                 INPUT "YOUR 4th MOVE ", c4
                     SELECT CASE c4
                            CASE 6, 8
                            IF c4 = 6 THEN CIRCLE (290, 90), 25, 2 ELSE CIRCLE (230, 150), 25, 2

                            LINE (265, 125)-(315, 175), 4
                            LINE (265, 175)-(315, 125), 4

                            LINE (320, 180)-(140, 0), 14
                            PRINT l$
                            CASE 9
                            CIRCLE (290, 150), 25, 2

                            LINE (265, 65)-(315, 115), 4
                            LINE (265, 115)-(315, 65), 4

                            LINE (140, 90)-(320, 90), 14
                            PRINT l$
                            CASE ELSE
                            PRINT wi$
                            GOTO i26
                            END SELECT
                     CASE ELSE
                     PRINT wi$
                     GOTO i25
                     END SELECT
              CASE 4
              CIRCLE (170, 90), 25, 2

              LINE (205, 65)-(255, 115), 4
              LINE (205, 115)-(255, 65), 4
i27:          INPUT "YOUR 3rd MOVE ", c3
              SELECT CASE c3
                     CASE 3, 6, 7, 8
                     SELECT CASE c3
                            CASE 3: CIRCLE (290, 30), 25, 2
                            CASE 6: CIRCLE (290, 90), 25, 2
                            CASE 7: CIRCLE (170, 150), 25, 2
                            CASE 8: CIRCLE (230, 150), 25, 2
                            END SELECT

                      LINE (265, 125)-(315, 175), 4
                      LINE (265, 175)-(315, 125), 4

                      LINE (320, 180)-(140, 0), 14
                      PRINT l$
                      CASE 9
                      CIRCLE (290, 150), 25, 2

                      LINE (265, 5)-(315, 55), 4
                      LINE (265, 55)-(315, 5), 4
i28:                  INPUT "YOUR 4th MOVE ", c4
                      SELECT CASE c4
                             CASE 6, 8
                             IF c4 = 6 THEN CIRCLE (290, 90), 25, 2 ELSE CIRCLE (230, 150), 25, 2

                             LINE (145, 125)-(195, 175), 4
                             LINE (145, 175)-(195, 125), 4

                             LINE (320, 0)-(140, 180), 14
                             PRINT l$
                             CASE 7
                             CIRCLE (170, 150), 25, 2

                             LINE (205, 125)-(255, 175), 4
                             LINE (205, 175)-(255, 125), 4
i29:                         INPUT "YOUR 5th MOVE ", c5
                             SELECT CASE c5
                                    CASE 6
                                    CIRCLE (290, 90), 25, 2
                                    PRINT t$
                                    CASE ELSE
                                    PRINT wi$
                                    GOTO i29
                                    END SELECT
                             CASE ELSE
                             PRINT wi$
                             GOTO i28
                             END SELECT
                      CASE ELSE
                      PRINT wi$
                      GOTO i27
                      END SELECT














       CASE ELSE
       PRINT wi$
       GOTO i24
       END SELECT
       CASE 3
       CIRCLE (290, 30), 25, 2
       CASE 4
       CIRCLE (170, 90), 25, 2
       CASE 5
       CIRCLE (230, 90), 25, 2
       CASE 6
       CIRCLE (290, 90), 25, 2
       CASE 7
       CIRCLE (170, 150), 25, 2
       CASE 8
       CIRCLE (230, 150), 25, 2
       CASE 9
       CIRCLE (290, 150), 25, 2
       CASE ELSE
       PRINT "WRONG INPUT "
       GOTO i1
       END SELECT
       















                          


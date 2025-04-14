      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose: Ordenar un array
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ordenar_array.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 N PIC 9.

       77 I PIC 9.

       77 TEMP PIC 99.

       01 MI_ARRAY.
           05 MI_ELEMENTOS OCCURS 5 TIMES.
           10 ELEMENT PIC 9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE 5 TO ELEMENT(1)
            MOVE 2 TO ELEMENT(2)
            MOVE 4 TO ELEMENT(3)
            MOVE 1 TO ELEMENT(4)
            MOVE 3 TO ELEMENT(5)


            DISPLAY "ESTE ES EL ARRAY SIN ORDENAR:".

            PERFORM DISPLAY_ELEMENTOS_ARRAY.

            PERFORM ORDENAR_ARRAY.

            DISPLAY "ESTE ES EL ARRAY ORDENADO:".

            PERFORM DISPLAY_ELEMENTOS_ARRAY.



            STOP RUN.

            ORDENAR_ARRAY.

                MOVE 5 TO N.

                PERFORM UNTIL N = 1

                MOVE 1 TO I

                PERFORM UNTIL I >= N

                IF ELEMENT(I) > ELEMENT(I + 1)

                    MOVE ELEMENT(I) TO TEMP
                    MOVE ELEMENT(I + 1) TO ELEMENT(I)
                    MOVE TEMP TO ELEMENT(I + 1)
                    END-IF

                    ADD 1 TO I
                    END-PERFORM

                    SUBTRACT 1 FROM N
                    END-PERFORM.


                  DISPLAY_ELEMENTOS_ARRAY.
               PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
            DISPLAY "Elemento en posicion " I "----->" ELEMENT(I)
            END-PERFORM.
            END PROGRAM Ordenar_array.

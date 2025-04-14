      ******************************************************************
      * Author:
      * Date:
      * Purpose:Ejemplo de programa usando PERFORM WITH TEST BEFORE
      *UNTIL que es similar a usar WHILE en otros lenguajes de
      *programacion
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST_BEFORE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 CONTADOR PIC 9(2) VALUE ZEROES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


           DISPLAY "Bucle con WITH TEST BEFORE UNTIL ".
            PERFORM WITH TEST BEFORE UNTIL CONTADOR = 6
                DISPLAY "ESTE BUCLE LLEVA:" CONTADOR " VEZ."
                ADD 1 TO CONTADOR

                END-PERFORM.

           DISPLAY "=================================================".
           DISPLAY "Bucle con times".
           MOVE ZEROES TO CONTADOR.
      * Otro ejemplo  de perform con la palabra reservada TIMES.

           PERFORM MENSAJE 6 TIMES.
           STOP RUN.

           MENSAJE.
              DISPLAY "ESTE BUCLE LLEVA:" CONTADOR " VEZ."
              ADD 1 TO CONTADOR.


       END PROGRAM TEST_BEFORE.

      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Funcionamiento de la sentencia Evaluate
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Evaluateexample.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 EDAD PIC 9(3) VALUE ZEROES.



       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Que edad tienes?".
            ACCEPT EDAD.


            EVALUATE EDAD

             WHEN 0 THRU 13 DISPLAY "Eres niño"
             WHEN 14 THRU 20 DISPLAY "Eres adolescente"
             WHEN 21  THRU 35 DISPLAY "Eres adulto joven"
             WHEN 36 THRU 50 DISPLAY "Eres adulto"
             WHEN 51 THRU 65 DISPLAY "Eres viejo"
             WHEN OTHER DISPLAY"Estas en la tercer edad"


             END-EVALUATE.

                 STOP RUN.

       END PROGRAM Evaluateexample.

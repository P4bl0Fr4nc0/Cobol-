      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Funcionamiento sentencia If-Else
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. If_Else.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num1 PIC 9(4).
       01 num2 PIC 9(5).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "INSERTE UN NUMERO".
            ACCEPT num1.
            DISPLAY "INSERTE OTRO NUMERO".
            ACCEPT num2.

            IF Num1 > Num2
                DISPLAY "EL PRIMERO NUMERO ES MAYOR QUE EL SEGUNDO"
                ELSE
                    DISPLAY "EL PRIMER NUMERO ES MENOR QUE EL SEGUNDO".


            STOP RUN.
       END PROGRAM If_Else.

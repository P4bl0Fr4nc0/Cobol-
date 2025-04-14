      ******************************************************************
      * Author: Pablo Franco
      * Date:
      * Purpose:Display de numeros utilizando sentencia UNTIL
      *VARYING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. bucle-until-varying.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 numero PIC 999.
       01 numero2 PIC 999.
       PROCEDURE DIVISION.


            INICIO.

      *Realiza la operacion hasta que numero sea igual a 10
               PERFORM OPERACION UNTIL numero = 10.

           DISPLAY "------".

      *Realiza la imprecion del numero2 de 3 en 3 hasta que numero
      *sea menor a 25
           PERFORM OPERACION2 VARYING numero2 FROM 1 BY 3 UNTIL
               numero2 = 25.

            STOP RUN.

           OPERACION.
               ADD 1 TO numero.
             DISPLAY numero.


           OPERACION2.
               DISPLAY numero2.

       END PROGRAM bucle-until-varying.

      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Ciclos con sentencia THRU
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ciclo_thru.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. HP Elitedesk.


       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Ciclo PIC 9(4) VALUE 4.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.


            PERFORM 100-LOOP THRU  100-EXIT.



            100-LOOP.

              DISPLAY "VALOR INICIAL DE CICLO:" Ciclo.

              ADD 1  TO Ciclo.

              DISPLAY "ITERACION 1, SE AGREGA 1 A CICLO: " Ciclo.


                ADD 1  TO Ciclo.

              DISPLAY "ITERACION 2, SE AGREGA 1 A CICLO: " Ciclo.

                  ADD 2  TO Ciclo.

              DISPLAY "ITERACION 3, SE AGREGA 2 A CICLO: " Ciclo.

                   SUBTRACT 2 FROM Ciclo.

              DISPLAY "ITERACION 4, SE RESTA 2 A CICLO: " Ciclo.


            100-EXIT.

                DISPLAY "EL CICLO A TERMINADO EN: " Ciclo.

            STOP RUN.
       END PROGRAM ciclo_thru.

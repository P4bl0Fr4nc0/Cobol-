      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose: Mostrar el funcionamiento de la sentencia PERFORM
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. performs.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            Display "Este es el procedimiento principal".

            PERFORM PROCEDIMIENTO_SECUNDARIO.

            PERFORM PROCEDIMIENTO_TERCIARIO.

            PERFORM PROCEDIMIENTO_CUARTO.

              STOP RUN.




            PROCEDIMIENTO_SECUNDARIO.

             DISPLAY "Este es el procedimiento secundario".

             PERFORM PROCEDIMIENTO_SEC_HER.



            PROCEDIMIENTO_SEC_HER.

              DISPLAY "Este es el procedimiento secundario hijo".



            PROCEDIMIENTO_TERCIARIO.

             DISPLAY "Este es el procedimiento terciario".

            PERFORM PROCEDIMIENTO_TER_HER.


            PROCEDIMIENTO_TER_HER.

            DISPLAY "Este es el procedimiento terciario hijo ".

            PERFORM PROCEDIMIENTO_TER_HER_HER.


            PROCEDIMIENTO_TER_HER_HER.

            DISPLAY "Este es el procedimiento terciario hijo hijo".



            PROCEDIMIENTO_CUARTO.

              DISPLAY "Este es el procedimiento cuatro".



       END PROGRAM performs.

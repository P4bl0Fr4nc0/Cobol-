      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Funcionamiento sentencia GO-TO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. GOTO.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 SI-NO PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INICIO.

      *Usuario selecciona si desea o no continuar la ejecucion del
      *programa, con la sentencia GO TO ira a la ejecucion dependiendo
      *la seleccion del usuario.
           PERFORM CONTINUACION.

           IF SI-NO = "N" OR SI-NO = "n"
               GO TO FINALIZA_PROGRAMA.

               IF SI-NO = "S" OR SI-NO= "s"

                   PERFORM PROGRAMA

                   ELSE

                       DISPLAY "Debes Introducir S o N"

                                 GO TO INICIO.


                       FINALIZA_PROGRAMA.
                           STOP RUN.

                           CONTINUACION.

                               DISPLAY "Ejecutar el Programa (S/N)".
                               ACCEPT SI-NO.

                               PROGRAMA.
                                   DISPLAY "Se ejecuta el programa".
       END PROGRAM GOTO.

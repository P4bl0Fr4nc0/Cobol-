      ******************************************************************
      * Author:
      * Date:
      * Purpose:Hablitiar simbolos especiales en la seccion de
      * configuracion con SPECIAL-NAMES usando el codigo ASCII
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. seccion-conf.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
      *SE ASIGNA EL CARACTER ASCII 59 AL NOMBRE DE DOS-PUNTOS
           SYMBOLIC CHARACTERS DOS-PUNTOS IS 59.

      * SE ASIGNA LOS CARACTER ASSCI A VARIOS NOMBRES

           SYMBOLIC CHARACTERS MEDIO ARE 172
           CUATRO 173
           TRES-CUARTOS 244.

      * SECCION DE ENTRADA DE DATOS

        INPUT-OUTPUT SECTION.
        FILE-CONTROL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Dos puntos: " DOS-PUNTOS

            DISPLAY "Un medio: "MEDIO " Un cuarto: " CUATRO
            " Tres Cuartos: "TRES-CUARTOS.

            STOP RUN.
       END PROGRAM seccion-conf.

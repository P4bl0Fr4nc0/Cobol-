      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Estructuras anidadas de variables
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Estructuras-anidadas.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Variable-compuesta.
          02 texto PIC X(10) VALUE "Nivel 2".
          02 Sub-Variable-Compuesta.
              03 texto2 PIC X(10) VALUE "Nivel 3".
              03 sub-sub-variable-compuesta.
                  04 texto3 PIC X(10) VALUE "Nivel 4".


       PROCEDURE DIVISION.

      *Se imprime en pantala la variable compuesta e imprimira todos
      *sus subniveles
        DISPLAY Variable-compuesta.
      *Se imprime en pantalla unicamente el nivel 4 la variable hija.
        DISPLAY sub-sub-variable-compuesta.
            STOP RUN.
       END PROGRAM Estructuras-anidadas.

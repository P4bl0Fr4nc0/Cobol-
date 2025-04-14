      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose: Clausula REDEFINES
      *Dicha clausa permite redifinir  varias veces el mismo campo de
      *Memoria con nombre, tipo y formatos distintos se utiliza en .
      * Working-Storage Section
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. clausula_redefines.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      * La clausula redifines se utiliza en esta seccion
        01 CANT PIC S9(5) COMP-3 VALUE 205.
        01 CANTR REDEFINES CANT PIC X(10).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY CANT.
           MOVE "HOLA" TO CANTR.
           DISPLAY CANTR.
      *Vriable despues de ser redefinida
           DISPLAY CANT.

       END PROGRAM clausula_redefines.

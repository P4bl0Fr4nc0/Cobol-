      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Asignacion de valores con sentencia Move
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. sentencia_move.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 numero1 PIC 999 VALUE 94.
       01 numero2 PIC 999 VALUE 854.
       01 numero3 PIC 999 VALUE 541.

       01 numero4 PIC 999 VALUE ZEROS.
       01 numero5 PIC 999 VALUE ZEROS.

       01 texto1 PIC X(10) VALUE SPACES.
       01 texto2 PIC X(10) VALUE SPACES.
       PROCEDURE DIVISION.


       DISPLAY numero1.
       DISPLAY numero2.
       DISPLAY numero3.
       DISPLAY numero4.
       DISPLAY numero5.
       DISPLAY texto1.
       DISPLAY texto2.

      * Asignar valores a varias variables
       MOVE 35 TO numero1 numero2 numero3 numero4 numero5.
       MOVE "asignado" TO texto1 texto2.

      * Aumentar en 5 la variable numero 1
       ADD 5 TO numero1.

       DISPLAY numero1.
       DISPLAY numero2.
       DISPLAY numero3.
       DISPLAY numero4.
       DISPLAY numero5.
       DISPLAY texto1.
       DISPLAY texto2.


            STOP RUN.
       END PROGRAM sentencia_move.

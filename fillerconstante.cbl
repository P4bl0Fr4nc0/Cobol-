      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Explicacion de las contantes Filler
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. fillerconstante.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 Variable-compuesta.
       02 Filler PIC x(41) VALUE "Esta constante no se puede cambiar".
       02 Filler PIC x(41) VALUE "Esta  tampoco se puede cambiar".
       02 TEXTO PIC x(41) VALUE "Este si se puede cambiar".
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY Variable-compuesta.
           MOVE "Hola" TO TEXTO.
           DISPLAY Variable-compuesta.



       END PROGRAM fillerconstante.

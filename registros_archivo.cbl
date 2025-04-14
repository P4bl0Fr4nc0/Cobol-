      ******************************************************************
      * Author:Pablo franco
      * Date:
      * Purpose: ejercicio de registros en archivo
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. registros_archivo.
      *----------------Definicion del archivo fisico--------------------
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT OPTIONAL CONTACTOS-ARCHIVO
       ASSIGN TO "C:\temporal\contactos.dat"
       ORGANIZATION IS LINE SEQUENTIAL.
      *-----------------------------------------------------------------
      *-------------- Definicion del archivo logico---------------------
       DATA DIVISION.
       FILE SECTION.
       FD CONTACTOS-ARCHIVO.

       01 REGISTRO-CONTACTOS.
           05 CONTACTO-ID PIC X(15).
           05 CONTACTO-NOMBRE PIC X(50).
           05 CONTACTO-APELLIDO PIC X(20).
           05 CONTACTO-TELEFONO PIC X(10).


       WORKING-STORAGE SECTION.
       01 SI-NO PIC X.
       01 ENTRADA-OK PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.
       PERFORM PROCEDIMIENTO_DE_APERTURA.
       MOVE "S" TO SI-NO.
       PERFORM AGREGAR-REGISTRO
       UNTIL SI-NO ="N".
       PERFORM PROCEDIMIENTO_DE_CIERRE.



       PROCEDIMIENTO_DE_APERTURA.
       OPEN EXTEND CONTACTOS-ARCHIVO.

       PROCEDIMIENTO_DE_CIERRE.
           CLOSE CONTACTOS-ARCHIVO.
       PROGRAM-DONE.
           STOP RUN.

       AGREGAR-REGISTRO.

       MOVE "N" TO ENTRADA-OK.
       PERFORM OBTENER-CAMPOS
       UNTIL ENTRADA-OK = "S".
       PERFORM ESCRIBIR-REGISTRO.
       PERFORM REINICIAR.

       OBTENER-CAMPOS.
           MOVE SPACE TO REGISTRO-CONTACTOS.
           DISPLAY "INGRESA ID".
           ACCEPT CONTACTO-ID.
           DISPLAY "INGRESA NOMBRE".
           ACCEPT CONTACTO-NOMBRE.
           DISPLAY "INGRESA APELLIDO".
           ACCEPT CONTACTO-APELLIDO.
           DISPLAY "INGRESA TELEFONO".
           ACCEPT CONTACTO-TELEFONO.
           PERFORM VALIDAR-CAMPOS.


       VALIDAR-CAMPOS.
           MOVE "S" TO ENTRADA-OK.
             IF CONTACTO-ID = SPACES
           DISPLAY "ERROR EL CONTACTO DEBE TENER UN ID"
           MOVE "N" TO ENTRADA-OK.

       ESCRIBIR-REGISTRO.
           WRITE REGISTRO-CONTACTOS.

       REINICIAR.
           DISPLAY "Desea almacenar otro registro S/N?".
           ACCEPT SI-NO.
           IF SI-NO = "s"
               MOVE "S" TO SI-NO.
               IF SI-NO NOT = "S"
                   MOVE "N" to SI-NO.




       END PROGRAM registros_archivo.

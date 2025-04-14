      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose: Creacion de archivo y almacenamiento de datos
      * Tectonics: cobc
      ******************************************************************


       IDENTIFICATION DIVISION.
       PROGRAM-ID. archivos.
      *----------------Definicion del archivo fisico--------------------
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT OPTIONAL EMPLEADOS-ARCHIVO
       ASSIGN TO "C:\temporal\empleados.dat"
       ORGANIZATION IS LINE SEQUENTIAL.
      *-----------------------------------------------------------------
      *-------------- Definicion del archivo logico---------------------
       DATA DIVISION.
       FILE SECTION.
       FD EMPLEADOS-ARCHIVO.

           01 EMPLEADOS-REGISTRO.
               05 EMPLEADOS-ID PIC X(10).
               05 EMPLEADOS-NOMBRE PIC X(25).
               05 EMPLEADOS-APELLIDOS PIC X(35).
               05 EMPLEADOS-EDAD PIC X(3).
               05 EMPLEADOS-TELEFONO PIC X(10).
               05 EMPLEADOS-DIRECCION PIC X(100).
      *-----------------------------------------------------------------

       WORKING-STORAGE SECTION.

       01 IDENTIFICADOR PIC X(36)
       VALUE "Introduce el ID del empleado".
       01 NOMBRE PIC X(33) VALUE "Introduce el nombre".
       01 APELLIDOS PIC X(33) VALUE "Introduce apellidos".
       01 EDAD PIC X(19) VALUE "Introduce la edad".
       01 TELEFONO PIC X(30) VALUE "Introduce su telefono".
       01 DIRECCION PIC X(30) VALUE "Introduce su direccion".
       01 SI-NO PIC X.
       01 ENTRY-OK PIC X.

       PROCEDURE DIVISION.
       MAIN-LOGIC SECTION.
       PROGRAM-BEGIN.

       PERFORM PROCEDIMIENTO-DE-APERTURA.
       MOVE "S" TO SI-NO.
       PERFORM AGREGAR-REGISTROS
       UNTIL SI-NO = "N".
       PERFORM PROCEDIMIENTO-DE-CIERRE.

       PROGRAM-DONE.
           STOP RUN.


      *---------------Procedimiento para abrir el archivo---------------
       PROCEDIMIENTO-DE-APERTURA.
       OPEN  EXTEND EMPLEADOS-ARCHIVO.
      *-----------------------------------------------------------------

      *---------------Procedimiento para cerrar el archivo--------------
       PROCEDIMIENTO-DE-CIERRE.
       CLOSE EMPLEADOS-ARCHIVO.
      *-----------------------------------------------------------------

      *--------------Procedimiento  para agregar registros--------------
       AGREGAR-REGISTROS.
       MOVE "N" TO ENTRY-OK.
       PERFORM OBTENER-CAMPOS
       UNTIL ENTRY-OK = "S".
       PERFORM ESCRIBIR-REGISTRO.
       PERFORM REINICIAR.

       OBTENER-CAMPOS.
           MOVE SPACE TO EMPLEADOS-REGISTRO.
           DISPLAY IDENTIFICADOR "?".
           ACCEPT EMPLEADOS-ID.
           DISPLAY NOMBRE "?".
           ACCEPT EMPLEADOS-NOMBRE.
           DISPLAY APELLIDOS "?".
           ACCEPT EMPLEADOS-APELLIDOS.
           DISPLAY EDAD "?".
           ACCEPT EMPLEADOS-EDAD.
           DISPLAY TELEFONO "?".
           ACCEPT EMPLEADOS-TELEFONO.
           DISPLAY DIRECCION "?".
           ACCEPT EMPLEADOS-DIRECCION.
           PERFORM VALIDAR-CAMPOS.

       VALIDAR-CAMPOS.
           MOVE "S" TO ENTRY-OK.
           IF EMPLEADOS-NOMBRE = SPACE
           DISPLAY "Error debes especfivar un nombre."
           MOVE "N" TO ENTRY-OK.

       ESCRIBIR-REGISTRO.
           WRITE EMPLEADOS-REGISTRO.

       REINICIAR.
           DISPLAY  "¿Dese almacenar otro registro?".
           ACCEPT SI-NO.
           IF SI-NO ="s"
           MOVE "S" TO SI-NO.
           IF SI-NO NOT = "S"
           MOVE "N" TO SI-NO.




       END PROGRAM archivos.

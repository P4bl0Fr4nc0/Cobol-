      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Lectura de registros de un archivo
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. lecturarchivos2.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT OPTIONAL CONTACTOS-ARCHIVO
       ASSIGN TO "C:\temporal\contactos.dat"
       ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD CONTACTOS-ARCHIVO.

       01 REGISTRO-CONTACTOS.
           05 CONTACTO-ID PIC X(15).
           05 CONTACTO-NOMBRE PIC X(50).
           05 CONTACTO-APELLIDO PIC X(20).
           05 CONTACTO-TELEFONO PIC X(10).

       WORKING-STORAGE SECTION.
       01 PRESENTACION.
       05 TEXTO-ID PIC X(3) VALUE "ID:".
       05 MUESTRA-ID PIC X(10).
       05 TEXTO-NOMBRE PIC X(7) VALUE "NOMBRE:".
       05 MUESTRA-NOMBRE PIC X(30).
       05 TEXTO-APELLIDO PIC X(10) VALUE "APELLIDOS".
       05 MUESTRA-APELLIDO PIC X(30).
       05 TEXTO-TELEFONO PIC X(10) VALUE "TELEFONO:".
       05 MUESTRA-TELEFONO PIC X(15).

       01 FIN-DEL-ARCHIVO PIC X.
       01 MAXIMO-REGISTROS PIC 99.
       01 GUARDA-ENTER PIC X.

       PROCEDURE DIVISION.


       EMPIEZA-PROGRAMA.
         PERFORM APERTURA-ARCHIVO.
         MOVE ZEROES TO MAXIMO-REGISTROS.
         MOVE "1" TO FIN-DEL-ARCHIVO.
         PERFORM LEE-SIGUIENTE-REGISTRO.
         PERFORM MUESTRA-REGISTROS
         UNTIL FIN-DEL-ARCHIVO = "0".
         PERFORM CIERRE-ARCHIVO.
         PROGRAM-DONE.
         STOP RUN.




       APERTURA-ARCHIVO.
         OPEN INPUT CONTACTOS-ARCHIVO.

         CIERRE-ARCHIVO.
           CLOSE CONTACTOS-ARCHIVO.

           MUESTRA-REGISTROS.
           PERFORM MUESTRA-CAMPOS.
           PERFORM LEE-SIGUIENTE-REGISTRO.


           MUESTRA-CAMPOS.
            IF MAXIMO-REGISTROS = 10
       PERFORM PULSAR-ENTER.
       MOVE CONTACTO-ID TO MUESTRA-ID.
       MOVE CONTACTO-NOMBRE TO MUESTRA-NOMBRE.
       MOVE CONTACTO-APELLIDO TO MUESTRA-APELLIDO.
       MOVE CONTACTO-TELEFONO TO MUESTRA-TELEFONO.

       DISPLAY PRESENTACION.


           LEE-SIGUIENTE-REGISTRO.
            READ CONTACTOS-ARCHIVO NEXT RECORD
            AT END MOVE "0" TO FIN-DEL-ARCHIVO.

           PULSAR-ENTER.

         DISPLAY
           "Presione enter para continuar con siguientes registros...".
           ACCEPT GUARDA-ENTER.
           MOVE ZEROES TO MAXIMO-REGISTROS.


       END PROGRAM lecturarchivos2.

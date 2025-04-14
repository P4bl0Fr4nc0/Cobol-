      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Ejemplo de tablas indexadas
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Tablas_index_ord.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 TABLA-INDEXADA.
         02 MATERIAL OCCURS 10
         ASCENDING KEY IS COD-MAT-T
         INDEXED BY INDICE.

         03 COD-MAT-T PIC X(3).
         03 NOMBRE-MAT PIC X(50).
         03 DESCRI-T  PIC X(50).
         03 PRECIO-T PIC 9(5).

       01 POSICION PIC 9(2) VALUES 1.
       01 RECORRIDO PIC 9(2) VALUES 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE 1 TO POSICION.
           MOVE 1 TO RECORRIDO.

           DISPLAY "BIENVENIDO AL SISTEMA PARA CAPTURA DE MATERIAL".

           DISPLAY "COMIENCE LA CAPTURA".

           PERFORM CAPTURA_MATERIAL UNTIL POSICION = 10.

           DISPLAY  "LOS DATOS CAPTURADOS SON LOS SIGUIENTES".
           PERFORM MUESTRA_DATOS UNTIL RECORRIDO = 10.

           STOP "PRESIONE UNA TECLA PARA CONINUAR".

           STOP RUN.





          CAPTURA_MATERIAL.

           DISPLAY "CAPTURA EL CODIGO DEL MATERIAL".
           ACCEPT COD-MAT-T (POSICION).

           DISPLAY "CAPTURA EL NOMBRE".
           ACCEPT NOMBRE-MAT (POSICION).

           DISPLAY "CAPTURA LA DESCIPCION".
           ACCEPT DESCRI-T(POSICION).

           DISPLAY "CAPTURA EL PRECIO".
           ACCEPT PRECIO-T (POSICION).

           ADD 1 TO POSICION.



           MUESTRA_DATOS.

           DISPLAY "CODIGO DE MATERIAL:" COD-MAT-T (RECORRIDO).
           DISPLAY "NOMBRE MATERIAL:" NOMBRE-MAT (RECORRIDO).
           DISPLAY "DESCRIPCION MATERIAL:" DESCRI-T (RECORRIDO).
           DISPLAY "PRECIO:" PRECIO-T (RECORRIDO).

           ADD 1 TO RECORRIDO.





       END PROGRAM Tablas_index_ord.

      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:ejercicio de concatenacion de texto
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. concatenar.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 texto1 PIC x(5) VALUE "HOLA".
       01 texto2 PIC x(8) VALUE "ESTE ES".
       01 texto3 PIC x(20) VALUE "UN TEXTO CONCATENADO".

       01 destino PIC x(70).

       01 puntero pic 9(02) value 3.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            STRING texto1 DELIMITED BY SPACES
            SPACE DELIMITED BY SIZE
            texto2 DELIMITED BY SIZE
            SPACE DELIMITED BY SIZE
            texto3 DELIMITED BY SIZE
            INTO destino
            WITH POINTER puntero
            ON OVERFLOW
            DISPLAY "OCURRIO UNA CONDICION DE DESBORDE"
            END-STRING.

            DISPLAY destino.


            STOP RUN.
       END PROGRAM concatenar.

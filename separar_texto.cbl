      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Separacion de texto con sentencia UNSTRING y DELIMITED
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. separar_texto.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 midominio pic x(25) VALUE "midomino@compania.com".
       01 usuario pic x(10).
       01 compania pic x(10).
       01 dominio pic x(10).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            UNSTRING  midominio DELIMITED BY "@" OR "."
            INTO usuario
            compania
            dominio
            END-UNSTRING.


            display usuario.
            display compania.
            display dominio.

            STOP RUN.
       END PROGRAM separar_texto.

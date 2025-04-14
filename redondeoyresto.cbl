      ******************************************************************
      * Author: Pablo Franco
      * Date:
      * Purpose: Ejemplo de redondeo de cifras con sentencia ROUNDED.
      * y REMAINDER para obtener el resto
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. redondeoyresto.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 numero1 PIC 999V999 VALUE 10.556.
       77 numero2 PIC 999V999 VALUE 11.55.
       77 resultado PIC 999V99 VALUE ZEROS.
       77 resto  PIC 99V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *Se utiliza rounded para redondear un resultado ya que si no se
      *pone lo unico que estaria haciendo es cortar el tercer numero
            COMPUTE resultado ROUNDED = numero1 + numero2.
            DISPLAY resultado.

      * Obtener el resto

            DIVIDE numero1 BY numero2 GIVING resultado REMAINDER resto.

            DISPLAY resultado.
            Display resto.


           STOP RUN.
       END PROGRAM redondeoyresto.

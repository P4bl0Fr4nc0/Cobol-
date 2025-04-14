      ******************************************************************
      * Author: Pablo Franco
      * Date:
      * Purpose:Ejemplo que muestra el funcionamiento del nivel 88
      * en las variables
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. nivel88.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      * las variables que se subdividen con niveles 88 tambien pueden.
      * ser usadas individualmente declarando un tipo de dato.
      * a diferencias de las variables que tienen subniveles  02  -50

      * Ejemplo

      * Se crea un grupo llamado usuario y se  observa usuario tiene
      * como subniveles nombre y apellidos pero usuario no tiene un
      * tipo de dato ya que no puede ser usada individualmente.

       01 Usuario.
       02 Nombre PIC X(15) VALUE SPACES.
       02 Apellidos PIC X(30) VALUE SPACES.


      * Se creara un subgrupo edad donde se le asigne un valor y pueda
      *  contener dato y a su vez sus subniveles tengan datos incluidos
       02  Edad PIC 999 VALUE ZEROS.
       88 Joven VALUE 1 THRU 35.
       88 Maduro VALUE 36 THRU 59.
       88 Anciano VALUE 60 THRU 100.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       PERFORM INGRESA_DATOS.

       PERFORM COMPRUEBA_EDAD.

       STOP RUN.

       INGRESA_DATOS.

         DISPLAY "INGRESA NOMBRE:".
         ACCEPT Nombre.

         DISPLAY "INGRESA APELLIDOS:".
         ACCEPT Apellidos.

         DISPLAY "INGRESA EDAD".
         ACCEPT Edad.

       COMPRUEBA_EDAD.

           IF Joven THEN
             DISPLAY Nombre " " Apellidos " "  Edad " " "Es joven"

            ELSE IF Maduro THEN
             DISPLAY Nombre " " Apellidos " "  Edad " " "Es maduro"

            ELSE IF Anciano  THEN
               DISPLAY Nombre " " Apellidos " "  Edad " " "Es anciano"
               ELSE
                 DISPLAY "YA DEJA ESTE MUNDO"

               END-IF.


       END PROGRAM nivel88.

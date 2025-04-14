      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Obtencion de fecha y hora del sistema
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. fecha.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 CURRENT-DATE.
         05 CDT-YEAR PIC 9(10).
         05 CDT-MONTH PIC 9(2). *>1-12
         05 CDT-DAY  PIC 9(2). *>01-31
         05 CDT-HOUR PIC 9(10). *> 00-23
         05 CDT-MINUTES PIC 9(2). *> 00-59
         05 CDT-SECONDS PIC 9(2). *> 00-59
         05 CDT-MILISECONDS PIC 9(2). *> 00-99




       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *Asignacion de dia, fehca y hora a las variables
      *El dia de la semana muestra el numero del dia en  el que nos
      *encontramos
       ACCEPT CDT-DAY FROM DAY-OF-WEEK.
       ACCEPT  CDT-YEAR FROM DATE.
       ACCEPT CDT-HOUR FROM TIME.
      *Mostrar datos en pantalla
       DISPLAY CDT-DAY.
       DISPLAY CDT-YEAR.
       DISPLAY CDT-HOUR.


       END PROGRAM fecha.

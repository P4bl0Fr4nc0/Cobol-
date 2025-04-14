      ******************************************************************
      * Author: Pablo Franco
      * Date:
      * Purpose:Calculo de area de cuadrado, rectangulo o circulo
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. calculo_areas.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 OPCION PIC X.

      */Variables cuadrado
       01 LADO1 PIC 999V99.

      */ Variables rectangulo y triangulo

       01 BASE PIC 999V99.
       01 ALTURA PIC 999V99.

      */Variables circulo

       01 RADIO PIC 99V999.
       01 PI PIC 9V9999 VALUE 3.1416.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Bienvenido al Programa ".
            DISPLAY "Que area desea calcular?".
            DISPLAY "CU (cuadrado) R (Rectangulo) C (Circulo)".

            IF OPCION ="CU" or OPCION = "cu"

                PERFORM CUADRADO

                ELSE IF OPCION = "R" or OPCION = "r"

                    PERFORM RECTANGULO

                    ELSE IF OPCION = "C" or OPCION = "c"

                        PERFORM CIRCULO

                        ELSE
                            DISPLAY "Solo puedes elegir CU, R o C".


                            CUADRADO.
                                DISPLAY "area cuadrado ".


                                RECTANGULO.

                                    DISPLAY " area rectangulo".

                                    CIRCULO.

                                        DISPLAY "area circulo".



          STOP RUN.
       END PROGRAM calculo_areas.

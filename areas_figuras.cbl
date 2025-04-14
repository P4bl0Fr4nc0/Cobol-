      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Calculo de areas de ciruclo, cuadrado y rectangulo
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ejercicio.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 OPCION PIC X.
      *Variables cuadrado
       01 LADO1 PIC 999V99.
       01 AREACUA PIC 999V999.
      *Variables rectangulo
       01 BASE PIC 999V99.
       01 ALTURA PIC 999V99.
       01 AREAREC PIC 999V99.
      *Variables circulo
       01 RADIO PIC 999V999.
       01 PI PIC 9V9999 VALUE 3.1416.
       01 RADIO_CUADRADO PIC 999V999.
       01 AREACI PIC 999V999.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           INICIO.
          DISPLAY "Bienvenido al Programa ".
            DISPLAY "Que area desea calcular?".
            DISPLAY "U (cuadrado) R (Rectangulo) C (Circulo)".

            ACCEPT OPCION.

            IF OPCION = "U" or OPCION = "u"
                PERFORM CUADRADO

            ELSE IF OPCION = "R" or OPCION = "r"
                PERFORM RECTANGULO

            ELSE IF OPCION = "C" or OPCION = "c"
                PERFORM CIRCULO

                ELSE
                    DISPLAY "No eligio opcion correcta"
                    STOP RUN.

                CUADRADO.
                    DISPLAY "Inserte la medida del lado"
                    ACCEPT LADO1
      *              MULTIPLY LADO1 BY LADO1 GIVING AREACUA
                     COMPUTE AREACUA = LADO1 * LADO1.
                    DISPLAY "El area del cuadrado es:" AREACUA

                    STOP RUN.

                RECTANGULO.
                    DISPLAY "Inserte el largo"
                    ACCEPT BASE
                    DISPLAY "Inserte ancho"
                    ACCEPT ALTURA
                    MULTIPLY BASE BY ALTURA GIVING AREAREC
                    DISPLAY "El area del rectangulo es:" AREAREC
                    STOP RUN.

                    CIRCULO.
                        DISPLAY "Inserte Radio"
                        ACCEPT RADIO.

                        MULTIPLY RADIO BY RADIO GIVING RADIO_CUADRADO
                        MULTIPLY RADIO_CUADRADO BY PI GIVING AREACI
                        DISPLAY "El area del circulo es:" AREACI
                        STOP RUN.

       END PROGRAM ejercicio.

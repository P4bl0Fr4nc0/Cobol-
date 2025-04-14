      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose: Bucle de un numero multiplicado hasta 100
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. bucle.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MULTIPLICADOR PIC 99999.
       01 NUMERO PIC 99999.
       01 RESULTADO PIC 999999.
       01 SALIDA PIC XXXXX.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            INICIO.
                DISPLAY "Introduzca 'salir' para finalizar el programa".
                DISPLAY "De enter para continuar con el programa".

                ACCEPT SALIDA.

                IF SALIDA = "Salir" or "salir"
                    GO TO FINALIZAR

                    ELSE
                        PERFORM REINICIO.
                        PERFORM INTRODUCIR-NUMERO.
                        PERFORM MONTRAR-TABLA.

                      FINALIZAR.
                          STOP RUN.

                      REINICIO.
                          MOVE 0 TO MULTIPLICADOR.
                      INTRODUCIR-NUMERO.
                          DISPLAY "Introduzca un numero".
                          ACCEPT NUMERO.
                      MONTRAR-TABLA.
                          DISPLAY "La Tabla del numero:" NUMERO ":".
                          PERFORM CALCULO.

                      CALCULO.
                         ADD 1 TO MULTIPLICADOR.
                         COMPUTE RESULTADO = NUMERO * MULTIPLICADOR.
                         DISPLAY NUMERO "x" MULTIPLICADOR "=" RESULTADO.

                         IF MULTIPLICADOR < 100
                             GO TO CALCULO.


                         PERFORM INICIO.
            STOP RUN.
       END PROGRAM bucle.

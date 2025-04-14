      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose: Bucle, multiplicacion de un numero utilizando la
      * sentencia times en este caso multiplicar ese numero hasta 10.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. bucle-times.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 MULTIPLICADOR PIC 999999.
       01 NUMERO PIC 9999999.
       01 RESULTADO PIC 9999999.
       01 SALIDA PIC XXXXX.

       PROCEDURE DIVISION.

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
      * Aqui se agrega el perform times 10 veces
                            PERFORM CALCULO 10 TIMES.
                          STOP RUN.

                      CALCULO.
                         ADD 1 TO MULTIPLICADOR.

                         COMPUTE RESULTADO = NUMERO * MULTIPLICADOR.
                         DISPLAY NUMERO "x" MULTIPLICADOR "=" RESULTADO.

      *En lugar de IF se utiliza PERFORM TIMES para repetir las veces que el usuario desea
      *   se eliminan --->                    IF MULTIPLICADOR < 100
      *   ---->                    GO TO CALCULO.



       END PROGRAM bucle-times.

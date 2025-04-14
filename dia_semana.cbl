      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Practica dias semana con If-Else y letras o alfanumerico
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. dia_semana.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 DiaSemana PIC 99 VALUE ZERO.
       88 Lunes Value 1.
       88 Martes Value 2.
       88 Miercoles Value 3.
       88 Jueves Value 4.
       88 Viernes Value 5.
       88 Sabado Value 6.
       88 Domingo Value 7.


       01 LetrasyNumeros PIC X VALUE ZERO.
       88 Letras VALUES "A" THRU "Z", "a" THRU "z".
       88 Numeros VALUES 0 THRU 9.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Elije un dia 1-7".
            ACCEPT DiaSemana.

            IF Lunes THEN
              DISPLAY "Inicio de semana"

              ELSE IF Martes THEN

                DISPLAY "Es el segundo dia"

                ELSE IF Miercoles THEN

                  DISPLAY "Ombligo de semana"

                  ELSE IF jueves THEN

                    DISPLAY "Es Juebebes"

                    ELSE IF viernes THEN

                      DISPLAY "Viernesss"

                      ELSE IF Sabado THEN

                        DISPLAY "Es sabado de fiesta"

                        ELSE IF Domingo THEN

                          DISPLAY "Dia familiar"

                          ELSE
                            DISPLAY "No hay semanas de 8 o mas dias"

                            END-IF
                           END-IF
                           END-IF
                           END-IF
                           END-IF
                           END-IF
                           END-IF


            DISPLAY "Inserta una letra o un numero y te dire que es"
            ACCEPT LetrasyNumeros.

            IF Letras THEN
              DISPLAY "Es alfabetico"

              ELSE IF Numeros THEN
                DISPLAY "Es numerico"

                ELSE
                  DISPLAY "Lo mas seguro es que hayas puesto un simbolo"

                END-IF
                END-IF


            STOP RUN.
       END PROGRAM dia_semana.

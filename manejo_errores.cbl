      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:Ejemplo de manejo de errores con sentencia ON SIZE ERROR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ManejoErrores.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77 numero1 PIC 9(3) VALUE 200.
       77 numero2 PIC 9(3) VALUE 400.
       77 resultado PIC 9(3) VALUE ZEROS.
       77 resultado_grande PIC 9(6) VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      * Se multiplicara el numero 1 con el numero 2 como se puede obser-
      * var resultado solo puede guardar 3 posiciones por lo que genera-
      * ra un error asi que es necesario utilizar una sentencia para el
      * control del error.

       COMPUTE resultado =  numero1 * numero2
      * Se utiliza la clausula ON SIZE ERROR para cachar la excepcion.
           ON SIZE ERROR DISPLAY "tamaño de variable muy chico."
           DISPLAY resultado
             END-COMPUTE.

            Display "Se ejcutara en una variable mas grande".

      * Otro ejemplo de ON SIZE ERROR
            COMPUTE resultado =  numero1 * numero2
            ON SIZE ERROR COMPUTE resultado_grande = numero1 * numero2
            DISPLAY resultado_grande
             END-COMPUTE.

        STOP RUN.
       END PROGRAM ManejoErrores.

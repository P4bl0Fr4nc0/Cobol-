      ******************************************************************
      * Author:Pablo Franco
      * Date:
      * Purpose:ejercicio variables y nota de venta
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. variables_nota_v.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT OPTIONAL NOTA_VENTA
           ASSIGN TO "C:\temporal\nota-venta.DAT"
           ORGANIZATION IS SEQUENTIAL.


       DATA DIVISION.
       FILE SECTION.

       FD NOTA_VENTA.

       01 REGISTRO_VENTA.
         03 FOLIO PIC X(10) VALUE SPACES.
         03 MARCA PIC X(15) VALUE SPACES.
         03 MODELO PIC X(15) VALUE SPACES.
         03 DESCRIPCION PIC X(30) VALUE SPACES.
         03 TOTAL PIC 9(4) VALUE ZEROS.


       WORKING-STORAGE SECTION.

        77 SI-NO PIC X.
        77 VERIFICACION PIC X.

       LINKAGE SECTION.



       PROCEDURE DIVISION.

       PROCEDIMIENTO_PRINCIPAL.

        PERFORM PROCEDIMIENTO_APERTURA.
        MOVE "S" TO SI-NO.
        PERFORM AGREGAR-REGISTROS
        UNTIL SI-NO = "N".
        PERFORM PROCEDIMIENTO_DE_CIERRE.

        STOP RUN.

           PROCEDIMIENTO_APERTURA.
           OPEN EXTEND NOTA_VENTA.

           AGREGAR-REGISTROS.
           MOVE "N" TO VERIFICACION.
           PERFORM OBTENER_CAMPOS UNTIL VERIFICACION = "S".
           PERFORM ESCRIBIR_REGISTROS.
           PERFORM REINICIAR.


           PROCEDIMIENTO_DE_CIERRE.
           CLOSE NOTA_VENTA.

           OBTENER_CAMPOS.
              MOVE SPACE TO REGISTRO_VENTA.
              DISPLAY "INGRESE FOLIO:"
              ACCEPT FOLIO.
              DISPLAY "INGRESE MARCA:"
              ACCEPT MARCA.
              DISPLAY "INGRESE MODELO:"
              ACCEPT MODELO.
              DISPLAY "INGRESE DESCRIPCIÓN:"
              ACCEPT DESCRIPCION.
              DISPLAY "INGRESE TOTAL DE LA OPERACIÓN $:"
              ACCEPT TOTAL.
              PERFORM VALIDAR_CAMPOS.

            VALIDAR_CAMPOS.
                MOVE "S" TO VERIFICACION.
                IF REGISTRO_VENTA = SPACES THEN
                    DISPLAY "ERROR: ALGUN CAMPO ESTA VACIO."
                    DISPLAY "VERIFICA DATOS:"
                    MOVE "N" TO VERIFICACION.


            ESCRIBIR_REGISTROS.
                WRITE REGISTRO_VENTA.

            REINICIAR.

                DISPLAY "¿Desea Agregar otro Registro S/N?"
                ACCEPT SI-NO.
                IF SI-NO = "s" THEN
                    MOVE "S" TO SI-NO.
                    IF SI-NO NOT = "S" THEN
                        MOVE "N" TO SI-NO.


           END PROGRAM variables_nota_v.

      ******************************************************************
      * Author: Pablo Franco
      * Date:
      * Purpose:Descripcion de las secciones que componen cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Descripcon_secciones.

       ENVIRONMENT DIVISION.
      * Contendra la informacion del entorno, sobre el ordenador en que
      * se ha escrito, el ordenador donde se va a ejecutar, etc.
      *se especifican los archivos de entrada y salida de un programa.

        CONFIGURATION SECTION.
      *Proporciona la informacion sobre el sistema en el que el programa
      *esta escritoy ejecutado consta de dos partes:
          SOURCE-COMPUTER.
      * (Equipo de origen) Sistema utilizado para compilar el programa.
      *ejemplo:
            XXX-ZOS.
          OBJECT-COMPUTER.
      * (Equipo objeto) Sistema utilizado para ejecutae el programa.
      * ejemplo
           XXX-ZOS.

        INPUT-OUTPUT SECTION.
      * Proporciona información sobre los archivos que se utilizan en el
      *programa. Siendo obligatoria si se requiere especificar archivos
      *consta de dos apartados:


        FILE-CONTROL.
      *Proporciona informacion externa de conjunto de datos utilizados
      * en el programa

      **** comando dentro de file control***

      *SELECT
      *Nombre del archivo
      *ASSIGN TO
      *Tipo de dispositivo
      *ORGANIZATION IS
      *Tipo de organización
      *ACCES MODE IS
      *Modo de acceso al archivo
      *RECORD KEY IS
      *Clave del registro
      *ALTERNATE RECORD KEY
      *Clave alternativa del registro
      *WITH DUPLICATES
      *Con duplicados
      *FILE STATUS IS.
      *Variable del estado del archivo


      ******************************************************************
       DATA DIVISION.
      * Los datos se agrupan por seccion en funcion del origen o la uti-
      * lidad de estos.

        FILE SECTION.
      * Para la definicion de las caracteristicas de los datos proceden-
      * tes o con destino a ficheros.
      * Descripcion de los ficheros de Entrada y Salida que intervienen
      * en el programa, se define un nivel FD por cada fichero-

        WORKING-STORAGE SECTION.
      * Para la definicion de los datos intermedios o de trabajo que se
      * consideren necesarios para un adecuado procesamiento de los
      * datos.

        LOCAL-STORAGE SECTION.

        LINKAGE SECTION.
      * Para definir datos comunes a otro programa con el que se enlaza.

      ******************************************************************

      ******************************************************************
       PROCEDURE DIVISION.
      *Dentro de la PROCEDURE DIVISION va todo el codigo para que nues-
      *tro programa funcione.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM Descripcon_secciones.
      *****************************************************************

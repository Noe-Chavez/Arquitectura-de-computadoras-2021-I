# Arquitectura-de-computadoras-2021-I
Programas realizados durante el curso de Arquitectura de computadoras en la Universidad Autónoma de la Ciudad de México.

IDE utilizado: Visual Studio 2019

Configuración necesaria para poder realizar un proyecto y poder programar en ensamblador.

- Dependencias de compilador y elegimos la tercera opcion asm
- A nivel de proyecto click derecho y propiedades
  - Vamos a la opción de linker (vinculador) -> avancado -> punto de entrada, colocamos main (donde inicia el programa).
  - cerramos la pentaña de vinculador y vamos a la opción de Microsft Macro.
  - Assamble -> Listing File -> Assabled Code Listeing File -> editar -> Micro -> seleciono %(Filename)/ -> acptar y agregamos la extención .slt por lo que queda de la siguiente forma: %(filename).lst   

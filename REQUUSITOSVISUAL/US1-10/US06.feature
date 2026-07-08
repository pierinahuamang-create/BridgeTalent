Feature: US-06 Subida de archivos
  Como usuario postulante de BridgeTalent, 
  quiero subir archivos PDF, imágenes o videos de mis proyectos académicos, 
  para mostrar evidencias tangibles de mi trabajo.

  Scenario: Carga exitosa de archivo válido
    Given que el usuario está en el formulario de proyecto
    When selecciona un archivo en formato PDF, JPG, PNG o MP4 de hasta 50MB
    Then el sistema acepta y almacena el archivo

Scenario Outline: Validación de formatos
  Given que el estudiante intenta subir un archivo
  When selecciona el formato <Formato>
  Then el sistema debe mostrar <Resultado>
    | Formato | Resultado |
    | .pdf | "Archivo aceptado" |
    | .exe | "Error: Formato no permitido" |

  Scenario: Visualización de archivo en perfil público
    Given que el usuario sube correctamente un archivo
    When otro usuario visita su perfil
    Then puede visualizar o descargar el archivo desde la tarjeta del proyecto
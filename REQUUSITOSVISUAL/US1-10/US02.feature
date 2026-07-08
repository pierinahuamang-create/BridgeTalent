Feature: US-02 Historial académico
  Como usuario postulante con perfil de estudiante egresado, 
  quiero poder poner en mis datos a qué universidad y carrera estuve y mis notas promedios, 
  para que así los entrevistadores puedan ver mis datos.

Scenario: Registro de historial académico
  Given que el egresado está en la sección "Historial Académico"
  When ingresa la siguiente información:
    | Institucion | Carrera | Nota_Promedio |
    | UPC | Ingeniería de Sistemas de Información | 16.5 |
  And confirma la acción
  Then el sistema guarda los datos en la vista pública
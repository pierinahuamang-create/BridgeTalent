Feature: US-13 Nivel de completitud
  Como usuario postulante de BridgeTalent, 
  quiero ver mi nivel de completitud de perfil, 
  para saber qué me falta agregar para tener un perfil atractivo.[cite: 1]

  Scenario: Visualización de porcentaje de completitud
    Given que el usuario ingresa a su panel de control[cite: 1]
    When carga la página[cite: 1]
    Then el sistema muestra un porcentaje de completitud del perfil[cite: 1]

  Scenario: Recomendaciones de campos faltantes
    Given que el usuario tiene un porcentaje menor al 100%[cite: 1]
    When revisa su panel[cite: 1]
    Then el sistema muestra una lista de recomendaciones de campos faltantes 
    (foto, proyectos, etc.)[cite: 1]

Scenario: Actualización de porcentaje de completitud
  Given que el estudiante tiene un perfil al 0%
  When realiza las siguientes acciones:
    | Acción | Progreso Sumado |
    | Subir foto | 20% |
    | Agregar 3 proyectos | 60% |
    | Datos de contacto | 20% |
  Then el sistema debe mostrar un nivel de completitud del 100%
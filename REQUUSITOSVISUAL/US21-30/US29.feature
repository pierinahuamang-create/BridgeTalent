Feature: US-29 Panel para universidades
  Como administrador de universidad aliada, 
  quiero acceder a un panel de proyectos destacados de mis alumnos, 
  para otorgar el sello de verificación institucional.[cite: 1]

  Scenario: Gestión administrativa de sellos
  Given que el administrador universitario gestiona los proyectos
  When realiza la acción sobre el proyecto:
    | Proyecto | Acción |
    | Tesis Final | Otorgar sello |
    | Proyecto Beta | Revocar sello |
  Then el sistema actualiza la visibilidad del sello en el perfil del estudiante

  Scenario: Otorgamiento de sello de verificación
    Given que el administrador selecciona uno o más proyectos[cite: 1]
    When hace clic en "Otorgar sello de verificación"[cite: 1]
    Then el sistema añade el sello a los proyectos seleccionados[cite: 1]

  Scenario: Revocación de sello
    Given que el administrador desea revocar un sello previamente otorgado[cite: 1]
    When selecciona el proyecto y hace clic en "Revocar sello"[cite: 1]
    Then el sistema elimina el sello del proyecto[cite: 1]
Feature: US-25 Solicitar endorsement
  Como estudiante de BridgeTalent, 
  quiero solicitar a un compañero de equipo que valide mi contribución en un proyecto, 
  para generar pruebas sociales de mi trabajo en equipo.[cite: 1]

  Scenario: Envío de solicitud de validación
  Given que el Estudiante A requiere un endorsement
  When realiza la solicitud:
    | Solicitante | Colaborador | Proyecto |
    | Estudiante A | Estudiante B | Sistema Pagos |
  Then el Estudiante B recibe una notificación en su bandeja

  Scenario: Recepción de solicitud por el compañero
    Given que el compañero recibe la solicitud[cite: 1]
    When inicia sesión[cite: 1]
    Then ve la solicitud pendiente en su bandeja de notificaciones[cite: 1]

  Scenario: Aceptación del endorsement
    Given que el compañero acepta el endorsement[cite: 1]
    When confirma[cite: 1]
    Then el nombre del compañero y su validación aparecen en el proyecto dentro del perfil del solicitante[cite: 1]
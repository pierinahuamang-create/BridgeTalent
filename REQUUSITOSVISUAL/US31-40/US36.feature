Feature: US-36 Fases del proceso
  Como estudiante de BridgeTalent, 
  quiero saber en qué fase del proceso estoy (Postulado, Revisado, Entrevista, Rechazado), 
  para no quedarme con la duda.[cite: 1]

  Scenario: Visualización de estados en historial
    Given que el estudiante accede a su historial de postulaciones[cite: 1]
    When carga la página[cite: 1]
    Then el sistema muestra cada vacante con su estado actual (Postulado, Revisado, Entrevista, Rechazado, Contratado)[cite: 1]

  Scenario: Seguimiento del proceso de selección
  Given que el estudiante ha postulado
  When el reclutador cambia la fase a:
    | Fase | Acción |
    | Postulado | Visualizar estado inicial |
    | Entrevista | Visualizar detalles de fecha |
  Then el estudiante es notificado en su historial de postulaciones

  Scenario: Detalle del estado al hacer clic
    Given que el estudiante hace clic en el estado[cite: 1]
    When se despliega información adicional[cite: 1]
    Then muestra la fecha del cambio y un comentario opcional del reclutador[cite: 1]
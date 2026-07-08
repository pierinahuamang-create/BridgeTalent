Feature: US-37 Feedback al ser rechazado
  Como estudiante de BridgeTalent, 
  quiero recibir feedback anónimo o del reclutador si soy rechazado, 
  para saber qué mejorar y no frustrarme.[cite: 1]

  Scenario: Recepción de feedback tras rechazo
  Given que el estudiante fue rechazado
  When el reclutador selecciona el motivo:
    | Motivo de rechazo |
    | Falta de habilidades técnicas |
    | Perfil incompleto |
  Then el estudiante recibe el feedback correspondiente en su historial

  Scenario: Visualización de feedback por estudiante
    Given que el estudiante recibe feedback[cite: 1]
    When accede a su historial de postulaciones[cite: 1]
    Then puede ver el motivo del rechazo junto a la vacante correspondiente[cite: 1]

  Scenario: Feedback anónimo
    Given que el reclutador elige enviar feedback anónimo[cite: 1]
    When el estudiante lo recibe[cite: 1]
    Then no ve el nombre del reclutador, solo el comentario y el motivo[cite: 1]
Feature: US-35 Postular con un clic
  Como estudiante de BridgeTalent, 
  quiero postular a una vacante con un solo clic usando mi portafolio, 
  para no tener que llenar formularios largos cada vez.[cite: 1]

 Scenario Outline: Postulación a vacantes
  Given que el estudiante visualiza una vacante
  When realiza la acción: <Accion>
  Then el sistema responde: <Resultado>
    | Accion | Resultado |
    | Postular por primera vez | "Postulación enviada exitosamente" |
    | Postular nuevamente | "Ya has postulado a esta vacante" |

  Scenario: Confirmación de postulación exitosa
    Given que la postulación es exitosa[cite: 1]
    When se completa el envío[cite: 1]
    Then el estudiante recibe una notificación de confirmación y la vacante aparece en su historial de postulaciones[cite: 1]

  Scenario: Prevención de doble postulación
    Given que el estudiante ya ha postulado a esa vacante anteriormente[cite: 1]
    When intenta postular nuevamente[cite: 1]
    Then el sistema muestra un mensaje "Ya has postulado a esta vacante"[cite: 1]
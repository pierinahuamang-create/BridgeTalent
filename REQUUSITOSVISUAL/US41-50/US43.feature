Feature: US-43 Programar entrevista
  Como reclutador de BridgeTalent, 
  quiero programar una entrevista técnica desde el chat de BridgeTalent, 
  para centralizar toda la comunicación.[cite: 1]

  Scenario: Programación de entrevista técnica
    Given que el reclutador desea coordinar una reunión
    When envía la invitación con los detalles:
      | Fecha | Hora | Duración |
      | 2026-07-20 | 10:00 AM | 30 min |
    Then el estudiante puede aceptar, rechazar o proponer nueva fecha

  Scenario: Respuesta del estudiante a la invitación
    Given que el estudiante recibe la invitación[cite: 1]
    When abre el mensaje[cite: 1]
    Then puede elegir "Aceptar", "Rechazar" o "Proponer nueva fecha"[cite: 1]

  Scenario: Adición al calendario
    Given que el estudiante acepta la entrevista[cite: 1]
    When confirma su asistencia[cite: 1]
    Then el sistema agrega el evento al calendario de ambos usuarios[cite: 1]
Feature: US-30 Preguntas técnicas anti-fraude
  Como estudiante de BridgeTalent, 
  quiero responder preguntas técnicas que dejó mi profesor en el proyecto, 
  para demostrar que entiendo lo que hice (anti-fraude).[cite: 1]

  Scenario: Ciclo de validación técnica
  Given que un proyecto tiene preguntas pendientes
  When el estudiante completa el flujo:
    | Actor | Acción |
    | Profesor | Agregar pregunta técnica |
    | Estudiante | Enviar respuesta |
    
  Then el sistema guarda la interacción como evidencia anti-fraude
  Scenario: Respuesta a preguntas
    Given que el estudiante responde las preguntas[cite: 1]
    When envía sus respuestas[cite: 1]
    Then el sistema marca las preguntas como respondidas y las guarda asociadas al proyecto[cite: 1]

  Scenario: Visualización de preguntas y respuestas por reclutador
    Given que un reclutador visita el perfil del estudiante[cite: 1]
    When accede a la sección de preguntas del proyecto[cite: 1]
    Then puede ver las preguntas del profesor y las respuestas del estudiante[cite: 1]
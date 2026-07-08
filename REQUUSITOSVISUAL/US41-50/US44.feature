Feature: US-44 Calificar experiencia
  Como estudiante de BridgeTalent, 
  quiero calificar mi experiencia con el reclutador después del proceso, 
  para mejorar la reputación de las empresas en la plataforma.[cite: 1]

  Scenario: Envío de encuesta de calificación
    Given que el proceso de postulación ha finalizado (contratado o rechazado)[cite: 1]
    When pasan 3 días[cite: 1]
    Then el sistema envía al estudiante un correo con un enlace para calificar su experiencia[cite: 1]

  Scenario: Calificación tras finalizar proceso
    Given que el proceso de postulación ha concluido
    When el estudiante completa la encuesta:
      | Entidad | Calificación | Comentario |
      | Empresa | 5 estrellas | "Proceso muy claro" |
    Then el sistema actualiza el promedio de reputación de la empresa

  Scenario: Visualización de reputación
    Given que otros estudiantes ven una vacante de esa empresa[cite: 1]
    When cargan la página[cite: 1]
    Then pueden ver el promedio de calificaciones recibidas por la empresa[cite: 1]
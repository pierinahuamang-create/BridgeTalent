Feature: US-42 Notificación por correo
  Como sistema de BridgeTalent, 
  quiero notificar por correo electrónico al estudiante cuando un reclutador vea su postulación, 
  para mantenerlo expectante y activo.[cite: 1]

  Scenario: Notificar revisión al estudiante
    Given que el reclutador revisa una postulación
    When el sistema registra la visualización tras:
      | Tiempo de espera |
      | 5 minutos |
    Then se envía un correo al estudiante informando la revisión

  Scenario: Envío de correo de notificación
    Given que una visualización ha sido registrada[cite: 1]
    When pasan 5 minutos sin acciones adicionales (para evitar spam)[cite: 1]
    Then el sistema envía un correo al estudiante indicando "Tu postulación fue revisada por [Empresa]"[cite: 1]

  Scenario: Historial de visualizaciones en panel
    Given que el estudiante accede a su historial de postulaciones[cite: 1]
    When revisa los detalles de una postulación[cite: 1]
    Then puede ver cuántas veces fue vista y en qué fechas[cite: 1]
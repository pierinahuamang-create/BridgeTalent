Feature: US-11 Notificación de vistas
  Como usuario postulante de BridgeTalent, 
  quiero recibir una notificación cuando un reclutador vea mi perfil, 
  para saber si mi portafolio está generando interés.[cite: 1]

Scenario: Registro y recepción de notificación
  Given que un reclutador visita el perfil del estudiante
  When se registra la acción en la base de datos
  Then el sistema debe disparar las siguientes notificaciones:
    | Canal | Mensaje esperado |
    | Panel | "Tu perfil fue visto por X reclutadores" |
    | Email | "Tu perfil fue visto por una empresa" |

  Scenario: Visualización de historial de vistas
    Given que el estudiante accede a la sección de estadísticas[cite: 1]
    When revisa el historial de vistas[cite: 1]
    Then puede ver la cantidad de vistas por día y el perfil de los reclutadores 
    (sin datos sensibles)[cite: 1]
Feature: US-04 Detalle de proyectos
  Como usuario postulante de la aplicación BridgeTalent, 
  quiero agregar descripción, contexto y tecnologías usadas a cada proyecto, 
  para que el reclutador entienda qué problema resuelve el proyecto y qué decisiones técnicas tomé.

Scenario: Registro de detalles del proyecto
  Given que el estudiante edita un proyecto
  When ingresa los detalles:
    | Descripcion | Tecnologias | Tipo |
    | Sistema FullStack para pagos | React, Node.js | Académico |
  Then el sistema actualiza la tarjeta del proyecto
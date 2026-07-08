Feature: US-08 Ocultar proyectos
  Como usuario postulante de BridgeTalent, 
  quiero ocultar proyectos que están en progreso, 
  para no mostrar trabajo incompleto a los reclutadores.

Scenario: Cambiar estado de visibilidad
  Given que el estudiante edita sus proyectos
  When define los estados:
    | Proyecto | Estado |
    | Proyecto en proceso | Oculto |
    | Proyecto final | Público |
  Then el sistema ajusta la visibilidad para los reclutadores

  Scenario: Visualización de proyecto oculto por el dueño
    Given que un proyecto está en estado oculto
    When el usuario visita su propio perfil
    Then puede ver el proyecto pero con una etiqueta indicando que está oculto

  Scenario: Publicación de proyecto oculto
    Given que el usuario desea publicar un proyecto oculto
    When cambia su estado a "Público"
    Then el sistema lo muestra inmediatamente en su perfil público
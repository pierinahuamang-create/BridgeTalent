Feature: US-07 Organización de proyectos
  Como usuario postulante de BridgeTalent, 
  quiero organizar mis proyectos por orden de importancia o fecha, 
  para destacar mis mejores trabajos primero.

Scenario: Reordenamiento manual
  Given que el estudiante tiene proyectos registrados
  When establece el orden:
    | Proyecto | Posicion |
    | Sistema Pagos | 1 |
    | Red Social | 2 |
  Then el sistema guarda la nueva jerarquía en el perfil público

  Scenario: Ordenamiento por fecha
    Given que el usuario selecciona la opción "Ordenar por fecha más reciente"
    When aplica el filtro
    Then el sistema muestra los proyectos del más nuevo al más antiguo

  Scenario: Visualización del orden en perfil público
    Given que el usuario establece un orden personalizado
    When cualquier reclutador visita su perfil
    Then ve los proyectos en el orden definido por el usuario
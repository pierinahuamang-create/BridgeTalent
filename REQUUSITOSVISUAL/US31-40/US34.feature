Feature: US-34 Fecha de último commit
  Como reclutador de BridgeTalent, 
  quiero ver la fecha de último commit del proyecto en GitHub, 
  para saber si el estudiante sigue practicando activamente.[cite: 1]

  Scenario: Visualización de actividad reciente
    Given que el proyecto es importado de GitHub
    When el sistema verifica la fecha del último commit:
      | Antigüedad | Indicador |
      | Menor a 3 meses | Verde (Activo recientemente) |
      | Mayor a 3 meses | Gris |
    Then el reclutador puede identificar la frecuencia de práctica del estudiante

  Scenario: Indicador de actividad reciente
    Given que el último commit fue en los últimos 3 meses[cite: 1]
    When se muestra la fecha[cite: 1]
    Then aparece con un ícono verde indicando "Activo recientemente"[cite: 1]

  Scenario: Ordenamiento por actividad reciente
    Given que el reclutador ordena resultados por "Actividad reciente"[cite: 1]
    When aplica el ordenamiento[cite: 1]
    Then el sistema muestra primero los estudiantes con commits más recientes[cite: 1]
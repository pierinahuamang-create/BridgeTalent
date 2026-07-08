Feature: US-15 Ordenar por relevancia
  Como reclutador de BridgeTalent, 
  quiero ordenar los resultados de búsqueda por "proyectos más relevantes", 
  para ver primero a los estudiantes con mejor calidad de ejecución.[cite: 1]

Scenario Outline: Ordenar resultados de búsqueda
  Given que el reclutador tiene una lista de resultados
  When selecciona el criterio <Criterio>
  Then la lista debe mostrarse ordenada por <Prioridad>
    | Criterio | Prioridad |
    | Relevancia | Proyectos con mayor cantidad de endorsements |
    | Fecha | Proyectos con fecha de creación reciente |

  Scenario: Ordenamiento por fecha
    Given que el reclutador selecciona "Ordenar por fecha"[cite: 1]
    When aplica el ordenamiento[cite: 1]
    Then el sistema muestra los perfiles más recientes primero[cite: 1]

  Scenario: Peso de endorsements en relevancia
    Given que un proyecto tiene endorsements de otros estudiantes[cite: 1]
    When se calcula la relevancia[cite: 1]
    Then el sistema le asigna mayor peso en la posición de búsqueda[cite: 1]
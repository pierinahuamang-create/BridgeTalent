Feature: US-24 Ver promedio ponderado
  Como reclutador de BridgeTalent, 
  quiero ver el promedio ponderado del estudiante (si él lo permite), 
  para evaluar su desempeño académico general.[cite: 1]

  Scenario Outline: Visualización de promedio
    Given que el reclutador accede al perfil del estudiante
    When el estado de autorización es <Estado>
    Then la visualización debe ser <Resultado>
      | Estado | Resultado |
      | Permitida | "Promedio visible en perfil" |
      | Denegada | "Mensaje de privacidad activo" |

  Scenario: Promedio no autorizado
    Given que el estudiante no ha autorizado la visualización de su promedio[cite: 1]
    When el reclutador ve su perfil[cite: 1]
    Then el sistema muestra un mensaje "El estudiante ha decidido no compartir esta información"[cite: 1]

  Scenario: Filtrado por rango de promedio
    Given que el reclutador desea filtrar por promedio[cite: 1]
    When selecciona un rango (ej. 14 a 20)[cite: 1]
    Then el sistema muestra solo estudiantes con promedio en ese rango que hayan autorizado su visualización[cite: 1]
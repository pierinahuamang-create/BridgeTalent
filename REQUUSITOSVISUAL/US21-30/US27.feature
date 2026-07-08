Feature: US-27 Contador de endorsements
  Como estudiante de BridgeTalent, 
  quiero ver en mi perfil cuántos endorsements reales tengo, 
  para mostrar confianza a los reclutadores.[cite: 1]

  Scenario: Visualización de contador de endorsements
    Given que el estudiante accede a su perfil público[cite: 1]
    When carga la página[cite: 1]
    Then el sistema muestra un contador de endorsements junto a su nombre[cite: 1]

  Scenario: Actualización del contador en tiempo real
    Given que el estudiante recibe nuevos endorsements
    When se aceptan:
      | Cantidad recibida |
      | 1 |
      | 4 |
    Then el contador total en el perfil debe mostrar "5" automáticamente

  Scenario: Lista detallada de endorsements
    Given que el reclutador visita el perfil[cite: 1]
    When hace clic en el contador de endorsements[cite: 1]
    Then el sistema muestra la lista de personas que endorsaron al estudiante y en qué proyectos[cite: 1]
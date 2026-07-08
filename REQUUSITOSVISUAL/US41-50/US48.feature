Feature: US-48 Insignias por completitud
  Como estudiante de BridgeTalent, 
  quiero ganar puntos o insignias por completar mi perfil al 100%, 
  para motivarme a tener un portafolio más competitivo.[cite: 1]

Scenario: Asignación de insignias por progreso
    Given que el estudiante acumula puntos de perfil
    When alcanza los hitos:
      | Hito | Insignia |
      | 100% completitud | "Perfil Completo" |
      | 100 puntos | "Bronce" |
    Then el sistema muestra la insignia en el perfil público

  Scenario: Acumulación de puntos por acciones
    Given que el estudiante realiza acciones (subir proyecto +10 pts, obtener endorsement +5 pts, etc.)[cite: 1]
    When se completa cada acción[cite: 1]
    Then el sistema suma puntos a su cuenta[cite: 1]

  Scenario: Niveles de insignias
    Given que el estudiante acumula puntos[cite: 1]
    When alcanza 100, 250 y 500 puntos[cite: 1]
    Then el sistema actualiza su nivel a Bronce, Plata y Oro respectivamente[cite: 1]
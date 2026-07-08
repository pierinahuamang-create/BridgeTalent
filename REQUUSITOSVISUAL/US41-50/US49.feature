Feature: US-49 Ranking de estudiantes
  Como estudiante de BridgeTalent, 
  quiero ver un ranking de estudiantes más vistos por semana en mi carrera, 
  para inspirarme en los mejores perfiles.[cite: 1]

  Scenario: Visualización del ranking de talento
    Given que el estudiante accede a la sección de ranking
    When aplica los filtros:
      | Filtro | Alcance |
      | Carrera | Ingeniería de Sistemas |
      | Temporalidad | Semanal |
    Then el sistema muestra el Top 10 de perfiles más vistos

  Scenario: Acceso al perfil de estudiantes del ranking
    Given que el estudiante ve el ranking[cite: 1]
    When hace clic en el nombre de un estudiante del top 10[cite: 1]
    Then puede ver su perfil público (si el estudiante no lo ha hecho privado)[cite: 1]

  Scenario: Insignia para los top del ranking
    Given que un estudiante está en el top 10 del ranking semanal[cite: 1]
    When se calcula el ranking al final de la semana[cite: 1]
    Then el sistema otorga una insignia especial "Destacado de la semana" en su perfil[cite: 1]
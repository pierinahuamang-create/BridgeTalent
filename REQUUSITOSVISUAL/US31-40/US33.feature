Feature: US-33 Detección de forks sin cambios
  Como sistema de BridgeTalent, 
  quiero detectar automáticamente si un repositorio importado fue "forkeado" sin cambios, 
  para alertar al estudiante que debe agregar su contribución real.[cite: 1]

  Scenario: Validación de autoría de repositorios GitHub
    Given que el estudiante importa un repositorio
    When el sistema analiza los commits:
      | Tipo de Repo | Resultado de Detección |
      | Fork sin cambios | "Alerta de fork sin contribución" |
      | Proyecto original | Sin alerta |
    Then el sistema debe guiar al estudiante para añadir su descripción de contribución

  Scenario: Alerta por falta de contribuciones propias
    Given que el sistema detecta que el fork no tiene commits propios significativos[cite: 1]
    When muestra el proyecto en el perfil[cite: 1]
    Then muestra una alerta amarilla indicando "Este repositorio parece ser un fork sin contribuciones propias"[cite: 1]

  Scenario: Opción de agregar explicación
    Given que el estudiante ve la alerta[cite: 1]
    When hace clic en "Agregar explicación"[cite: 1]
    Then puede escribir una descripción de su contribución real al proyecto[cite: 1]
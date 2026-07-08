Feature: US-32 Badge colaborador confiable
  Como estudiante de BridgeTalent, quiero recibir un badge de "Colaborador confiable" si tengo 5 o más endorsements, para diferenciarme de otros postulantes.[cite: 1]

  Scenario: Otorgamiento de badge bronce
    Given que un estudiante alcanza 5 endorsements aceptados[cite: 1]
    When el sistema detecta este hito[cite: 1]
    Then otorga automáticamente el badge "Colaborador confiable" en su perfil[cite: 1]

  Scenario: Actualización a badge plata
    Given que el estudiante alcanza 10 endorsements[cite: 1]
    When supera el umbral[cite: 1]
    Then el sistema actualiza su badge a nivel plata[cite: 1]

  Scenario: Actualización a badge oro
    Given que el estudiante alcanza 20 endorsements[cite: 1]
    When supera el umbral[cite: 1]
    Then el sistema actualiza su badge a nivel oro[cite: 1]

  Scenario: Asignación automática de badges por endorsements
    Given que el estudiante acumula endorsements
    When alcanza los siguientes hitos:
      | Endorsements | Nivel Badge |
      | 5 | Bronce |
      | 10 | Plata |
      | 20 | Oro |
    Then el sistema debe actualizar el badge en su perfil público
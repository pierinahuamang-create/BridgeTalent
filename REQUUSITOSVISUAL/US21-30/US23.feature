Feature: US-23 Compartir perfil
  Como reclutador de BridgeTalent, 
  quiero compartir un perfil de estudiante con mi equipo técnico (CTO, Tech Lead), 
  para que evalúen sus proyectos antes de la entrevista.[cite: 1]

  Scenario: Generación de enlace compartible
    Given que el reclutador está en el perfil de un estudiante[cite: 1]
    When hace clic en "Compartir perfil"[cite: 1]
    Then el sistema genera un enlace único y temporal al perfil del estudiante[cite: 1]

  Scenario: Compartir perfil con equipo técnico
  Given que el reclutador está en el perfil del estudiante
  When comparte el perfil con los siguientes miembros:
    | Rol | Acceso |
    | CTO | Sin cuenta |
    | Tech Lead | Sin cuenta |
  Then el equipo puede visualizar el perfil completo mediante el enlace único

  Scenario: Expiración del enlace
    Given que han pasado más de 30 días desde la generación del enlace[cite: 1]
    When alguien intenta acceder[cite: 1]
    Then el sistema muestra un mensaje indicando que el enlace ha expirado[cite: 1]
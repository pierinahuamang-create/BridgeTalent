Feature: US-28 Sello verificado por universidad
  Como reclutador de BridgeTalent, 
  quiero ver qué proyectos tienen el sello "Verificado por Universidad", 
  para confiar en que ese trabajo pasó por una evaluación formal.[cite: 1]

  Scenario: Visualización del sello institucional
  Given que el reclutador revisa los proyectos del perfil
  When el estado de verificación es:
    | Proyecto | Estado |
    | Sistema IA | Verificado |
    | App Web | No verificado |
  Then el sello "Verificado por [Universidad]" debe aparecer en "Sistema IA"

  Scenario: Filtrado de proyectos verificados
    Given que el reclutador realiza una búsqueda de estudiantes[cite: 1]
    When activa el filtro "Solo proyectos verificados"[cite: 1]
    Then el sistema muestra solo estudiantes que tienen al menos un proyecto verificado[cite: 1]

  Scenario: Información del sello al hacer clic
    Given que el reclutador hace clic en el sello de verificación[cite: 1]
    When se despliega información adicional[cite: 1]
    Then muestra la fecha de verificación y el nombre del administrador universitario que lo otorgó[cite: 1]
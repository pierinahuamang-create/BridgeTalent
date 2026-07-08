Feature: US-45 Plantillas de portafolio
  Como estudiante de BridgeTalent, 
  quiero acceder a una galería de plantillas de portafolio (estándar, sin animaciones), 
  para que mi perfil pase los bots de búsqueda (ATS friendly).[cite: 1]

  Scenario: Visualización de galería de plantillas
    Given que el estudiante accede a la sección "Recursos"[cite: 1]
    When hace clic en "Plantillas de portafolio"[cite: 1]
    Then el sistema muestra una galería con diferentes plantillas descargables[cite: 1]

  Scenario: Descarga de plantillas ATS-friendly
  Given que el estudiante requiere una estructura profesional
  When selecciona la plantilla:
    | Formato | Uso |
    | PDF | Formato fijo |
    | DOCX | Edición flexible |
  Then el sistema permite la descarga de la estructura optimizada para bots de búsqueda

  Scenario: Ejemplos incluidos en plantillas
    Given que el estudiante abre la plantilla descargada[cite: 1]
    When revisa su contenido[cite: 1]
    Then encuentra ejemplos de cómo describir proyectos correctamente para ATS[cite: 1]
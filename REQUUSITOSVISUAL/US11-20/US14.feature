Feature: US-14 Búsqueda por habilidades técnicas
  Como reclutador de BridgeTalent, 
  quiero buscar estudiantes filtrando por 
  habilidades técnicas específicas (Java, Python, React, etc.), 
  para encontrar talento junior con competencias reales.[cite: 1]

Scenario: Filtrado por múltiples tecnologías
  Given que el reclutador accede a la página de búsqueda
  When aplica los siguientes filtros:
    | Tecnología |
    | Java |
    | Python |
  Then el sistema debe mostrar perfiles que contengan al menos una de las tecnologías seleccionadas

  Scenario: Guardado de filtros
    Given que el reclutador ha aplicado filtros[cite: 1]
    When hace clic en "Guardar filtros"[cite: 1]
    Then el sistema almacena la combinación de filtros con un nombre definido por el reclutador[cite: 1]

  Scenario: Búsqueda sin filtros
    Given que el reclutador no selecciona ningún filtro[cite: 1]
    When realiza la búsqueda[cite: 1]
    Then el sistema muestra todos los estudiantes disponibles ordenados por relevancia[cite: 1]
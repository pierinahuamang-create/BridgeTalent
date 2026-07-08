Feature: US-17 Filtrar por universidad
  Como reclutador de BridgeTalent, 
  quiero filtrar estudiantes por universidad, 
  para priorizar alianzas estratégicas con ciertas instituciones.[cite: 1]

Scenario: Filtrar por universidad específica
  Given que el reclutador busca talento por institución
  When selecciona en el filtro:
    | Universidad | Acción |
    | UPC | Incluir |
  Then el sistema debe filtrar los resultados mostrando solo alumnos de la UPC

  Scenario: Búsqueda de universidad por nombre parcial
    Given que el reclutador busca universidades[cite: 1]
    When escribe el nombre parcial de una universidad en el buscador del filtro[cite: 1]
    Then el sistema autocompleta y muestra las opciones coincidentes[cite: 1]

  Scenario: Ausencia de filtro de universidad
    Given que el reclutador no selecciona ninguna universidad[cite: 1]
    When realiza la búsqueda[cite: 1]
    Then el sistema muestra estudiantes de todas las universidades registradas[cite: 1]
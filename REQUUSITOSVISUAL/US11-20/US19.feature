Feature: US-19 Guardar filtros
  Como reclutador de BridgeTalent, 
  quiero guardar filtros de búsqueda, 
  para reutilizarlos cuando tenga nuevas vacantes similares.[cite: 1]

  Scenario: Guardado de filtros con nombre
    Given que el reclutador ha configurado filtros de búsqueda[cite: 1]
    When hace clic en "Guardar filtros"[cite: 1]
    Then el sistema abre un modal para ingresar un nombre para los filtros[cite: 1]

  Scenario: Almacenamiento en búsquedas guardadas
    Given que el reclutador ingresa un nombre y confirma[cite: 1]
    When guarda[cite: 1]
    Then los filtros aparecen en su lista de "Búsquedas guardadas"[cite: 1]

Scenario: Guardar búsqueda personalizada
  Given que el reclutador configura una búsqueda frecuente
  When guarda la búsqueda con los datos:
    | Nombre | Tecnologías | Carrera |
    | Junior Backend | Python, Node.js | Ing. Software |
  Then el sistema debe listar esta búsqueda en "Búsquedas guardadas"
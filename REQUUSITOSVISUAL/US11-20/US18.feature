Feature: US-18 Resumen de tecnologías
  Como reclutador de BridgeTalent, 
  quiero ver un resumen de las tecnologías dominadas por el estudiante antes de ver su CV, 
  para ahorrarme tiempo leyendo documentos largos.[cite: 1]

  Scenario: Visualización de tag cloud al pasar el mouse
    Given que el reclutador visualiza los resultados de búsqueda[cite: 1]
    When pasa el mouse sobre la tarjeta de un estudiante[cite: 1]
    Then el sistema muestra un tag cloud con sus principales tecnologías[cite: 1]

  Scenario: Destacado de tecnologías más usadas
    Given que el estudiante ha usado una tecnología en múltiples proyectos[cite: 1]
    When se genera el resumen[cite: 1]
    Then esa tecnología aparece con mayor tamaño o en negrita[cite: 1]

Scenario: Visualización del tag cloud de habilidades
  Given que el reclutador pasa el mouse sobre la tarjeta de un estudiante
  When el sistema genera el resumen de tecnologías:
    | Tecnología | Frecuencia |
    | React | 5 |
    | Node.js | 3 |
  Then el sistema debe resaltar "React" con mayor tamaño por su mayor frecuencia
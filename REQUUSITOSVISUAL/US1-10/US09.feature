Feature: US-09 Descargar portafolio PDF
  Como usuario postulante de BridgeTalent, 
  quiero descargar mi portafolio como un PDF estructurado, 
  para adjuntarlo manualmente si alguna empresa lo solicita.

Scenario Outline: Generación de PDF según contenido
  Given que el usuario solicita descargar su portafolio
  When el sistema verifica el estado <Estado>
  Then genera un documento <Resultado>

  Examples:
    | Estado | Resultado |
    | Con_proyectos | "PDF con proyectos detallados" |
    | Sin_proyectos | "PDF con datos básicos" |

  Scenario: Generación de PDF sin proyectos
    Given que el usuario no tiene proyectos agregados
    When intenta descargar el PDF
    Then el sistema genera un documento con sus datos básicos y un mensaje indicando que aún no hay proyectos
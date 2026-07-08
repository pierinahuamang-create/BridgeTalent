Feature: US-10 Eliminar proyectos
  Como usuario postulante de BridgeTalent, 
  quiero eliminar proyectos de mi portafolio, 
  para mantener solo mi mejor trabajo actualizado.

Scenario Outline: Confirmación de eliminación
  Given que el usuario selecciona eliminar un proyecto
  When elige la opción <Accion>
  Then el proyecto debe ser <Resultado>

  Examples:
    | Accion | Resultado |
    | Confirmar | "Eliminado de la base de datos" |
    | Cancelar | "Visible en el perfil" |

  Scenario: Eliminación confirmada
    Given que el usuario confirma la eliminación
    When hace clic en "Sí, eliminar"
    Then el proyecto desaparece de su perfil y de la base de datos

  Scenario: Cancelación de eliminación
    Given que el usuario cancela la eliminación
    When hace clic en "Cancelar"
    Then el proyecto permanece visible en su perfil sin cambios
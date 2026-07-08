Feature: US-01 Creación de perfil
  Como usuario postulante de BridgeTalent, quiero crear mi perfil en BridgeTalent con mis datos académicos, skills y carrera, para que así estén los datos precargados en el sistema de usuario.

Scenario: Registro exitoso de perfil
  Given que el usuario postulante se encuentra en la pantalla de configuración
  When ingresa los siguientes datos:
    | Nombre | Universidad | Carrera | Ciclo |
    | Cielo Pierina Huaman | UPC | Ingeniería de Sistemas de Información | 8vo |
  And presiona el botón de guardar
  Then el sistema almacena la información y muestra un mensaje de confirmación
Feature: US-26 Aceptar o rechazar endorsement
  Como estudiante de BridgeTalent, 
  quiero aceptar o rechazar la solicitud de endorsement de un compañero, 
  para controlar quién respalda mi perfil.[cite: 1]

  Scenario Outline: Gestión de solicitudes de endorsement
  Given que el estudiante tiene una solicitud pendiente
  When realiza la acción: <Accion>
  Then el sistema procesa: <Resultado>
    | Accion | Resultado |
    | Aceptar | "Validación publicada en perfil" |
    | Rechazar | "Notificación de rechazo enviada" |

  Scenario: Aceptación de solicitud
    Given que el estudiante hace clic en "Aceptar"[cite: 1]
    When confirma su decisión[cite: 1]
    Then el endorsement se hace público en el perfil del solicitante[cite: 1]

  Scenario: Rechazo de solicitud
    Given que el estudiante hace clic en "Rechazar"[cite: 1]
    When confirma su decisión[cite: 1]
    Then el solicitante recibe una notificación de que su solicitud fue rechazada[cite: 1]
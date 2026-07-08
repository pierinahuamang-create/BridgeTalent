Feature: US-21 Mensajes directos
  Como reclutador de BridgeTalent, 
  quiero enviar mensajes directos dentro de la plataforma a estudiantes, 
  para coordinar entrevistas sin salir del sistema.[cite: 1]

  Scenario: Apertura de ventana de chat
    Given que el reclutador está en el perfil de un estudiante[cite: 1]
    When hace clic en "Enviar mensaje"[cite: 1]
    Then el sistema abre una ventana de chat con el estudiante[cite: 1]

Scenario: Envío y recepción de mensajes
  Given que el reclutador y el estudiante están conectados
  When el reclutador realiza la siguiente acción:
    | Acción | Mensaje |
    | Enviar mensaje | "Hola, ¿interesado en la vacante?" |
  Then el sistema debe notificar al estudiante por plataforma y correo
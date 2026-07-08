Feature: US-46 Tips semanales
  Como estudiante de BridgeTalent, 
  quiero recibir tips semanales de cómo mejorar la descripción de mis proyectos, 
  para aprender a vender mejor mi trabajo.[cite: 1]

  Scenario: Envío de correo semanal con tips
    Given que el estudiante tiene una cuenta activa[cite: 1]
    When inicia cada semana (lunes 9am)[cite: 1]
    Then el sistema envía un correo electrónico con un tip para mejorar su portafolio[cite: 1]

  Scenario: Historial de tips en plataforma
    Given que el estudiante accede a la sección "Tips de mejora"[cite: 1]
    When carga la página[cite: 1]
    Then puede ver todos los tips anteriores organizados por categorías[cite: 1]

  Scenario: Recepción de tips de mejora
  Given que el estudiante está suscrito a los tips
  When llega el momento del envío:
    | Frecuencia | Canal |
    | Lunes 9:00 AM | Correo electrónico |
  Then el estudiante recibe un consejo para mejorar su portafolio
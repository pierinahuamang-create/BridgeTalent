Feature: US-20 Marcar favoritos
  Como reclutador de BridgeTalent, 
  quiero marcar estudiantes como "favoritos", 
  para crear una lista de talento potencial.[cite: 1]

  Scenario: Marcado de estudiante favorito
    Given que el reclutador visualiza el perfil de un estudiante[cite: 1]
    When hace clic en el ícono de estrella o "Marcar favorito"[cite: 1]
    Then el estudiante se agrega a su lista de favoritos[cite: 1]

Scenario: Gestión de lista de favoritos
  Given que el reclutador está en el perfil de un estudiante
  When realiza la siguiente acción:
    | Estudiante | Acción |
    | Raúl Palomino | Marcar favorito |
  Then el sistema debe agregar al estudiante a la lista de "Favoritos" del reclutador

  Scenario: Adición de nota privada a favorito
    Given que el reclutador desea agregar una nota sobre un estudiante favorito[cite: 1]
    When escribe una nota privada en el campo correspondiente[cite: 1]
    Then el sistema guarda la nota asociada a ese estudiante[cite: 1]
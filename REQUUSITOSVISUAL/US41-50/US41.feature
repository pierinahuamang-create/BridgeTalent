Feature: US-41 Retirar postulación
  Como estudiante de BridgeTalent, 
  quiero retirar mi postulación si ya acepté otra oferta, 
  para no saturar al reclutador.[cite: 1]

Scenario: Retiro exitoso de postulación
  Given que el estudiante tiene una postulación activa
  When realiza la acción:
    | Acción | Comentario opcional |
    | Retirar postulación | "Acepté otra oferta" |
  Then el sistema notifica al reclutador y actualiza el historial del estudiante

  Scenario: Notificación al reclutador
    Given que el estudiante confirma el retiro[cite: 1]
    When se completa la acción[cite: 1]
    Then el sistema envía una notificación automática al reclutador 
    indicando que el estudiante se retiró[cite: 1]

  Scenario: Comentario opcional de retiro
    Given que el estudiante desea dejar un comentario al retirarse[cite: 1]
    When escribe un motivo y confirma[cite: 1]
    Then el reclutador puede ver ese comentario junto a la notificación[cite: 1]
Feature: US-39 Rechazar con causa predefinida
  Como reclutador de BridgeTalent, 
  quiero rechazar un postulante con una causa predefinida (falta skill, proyecto débil, 
  perfil incompleto), 
  para dar feedback rápido sin escribir mucho.[cite: 1]

  Scenario: Selección de causa de rechazo
    Given que el reclutador está revisando una postulación[cite: 1]
    When hace clic en "Rechazar"[cite: 1]
    Then el sistema muestra un menú desplegable con causas predefinidas[cite: 1]

  Scenario: Rechazo rápido por parte del reclutador
  Given que el reclutador revisa un perfil
  When rechaza al candidato usando:
    | Causa |
    | Skill insuficiente |
    | Error formato CV |
  Then el sistema envía el feedback automáticamente sin requerir texto adicional

  Scenario: Registro de rechazo en historial
    Given que el reclutador rechaza la postulación[cite: 1]
    When se completa la acción[cite: 1]
    Then la postulación aparece como "Rechazada" en el panel del reclutador con la causa seleccionada[cite: 1]
Feature: US-31 Reportar perfil sospechoso
  Como reclutador de BridgeTalent, 
  quiero reportar un perfil sospechoso de plagio, 
  para mantener la integridad de la plataforma.[cite: 1]

  Scenario: Reportar un perfil por irregularidades
    Given que el reclutador detecta un perfil sospechoso
    When selecciona los siguientes motivos de reporte:
      | Motivo |
      | Plagio |
      | Información falsa |
    Then el sistema debe registrar el reporte y ocultar el perfil para investigación

  Scenario: Envío de reporte
    Given que el reclutador selecciona un motivo y envía el reporte[cite: 1]
    When confirma el envío[cite: 1]
    Then el sistema registra el reporte y lo envía al equipo de moderación de BridgeTalent[cite: 1]

  Scenario: Ocultamiento de perfil reportado
    Given que el equipo de moderación revisa el reporte[cite: 1]
    When determina que es válido[cite: 1]
    Then el sistema oculta el perfil reportado mientras se realiza una investigación adicional[cite: 1]
Feature: US-22 Alertas de nuevo talento
  Como reclutador de BridgeTalent, 
  quiero recibir alertas cuando un nuevo estudiante que cumpla mis filtros se registre, 
  para no perder talento fresco.[cite: 1]

  Scenario: Activación de alertas
    Given que el reclutador tiene filtros guardados[cite: 1]
    When activa la opción "Recibir alertas"[cite: 1]
    Then el sistema habilita notificaciones para esa búsqueda guardada[cite: 1]

  Scenario: Envío de alerta por nuevo talento
    Given que el reclutador tiene configurada la alerta:
      | Filtro | Criterio |
      | Junior Backend | Python, 8vo ciclo |
    When un nuevo estudiante se registra cumpliendo el criterio
    Then el sistema debe enviar un correo al reclutador con el perfil del estudiante
    
  Scenario: Redirección desde alerta
    Given que el reclutador recibe la alerta por correo[cite: 1]
    When hace clic en el enlace del correo[cite: 1]
    Then el sistema redirige al perfil del nuevo estudiante[cite: 1]
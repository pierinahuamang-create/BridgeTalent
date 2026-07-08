Feature: US-47 Checklist perfil fuerte
  Como estudiante de BridgeTalent, 
  quiero completar un checklist de "Perfil Fuerte" (3 proyectos, 2 endorsements, foto), 
  para saber si estoy listo para postular.[cite: 1]

  Scenario: Verificación de perfil competitivo
    Given que el estudiante completa los requisitos:
      | Ítem | Acción |
      | Foto | Subida |
      | 3 proyectos | Creados |
      | 2 endorsements | Recibidos |
    Then el sistema activa el mensaje "¡Tu perfil es fuerte!"

  Scenario: Marcado automático de ítems completados
    Given que el estudiante completa un ítem del checklist (ej. sube su foto)[cite: 1]
    When guarda los cambios[cite: 1]
    Then el sistema marca automáticamente ese ítem como completado en el checklist[cite: 1]

  Scenario: Mensaje de "Perfil Fuerte"
    Given que el estudiante completa todos los ítems del checklist[cite: 1]
    When se actualiza el último ítem[cite: 1]
    Then el sistema muestra un mensaje de felicitación "¡Tu perfil es fuerte! Estás listo para postular"[cite: 1]
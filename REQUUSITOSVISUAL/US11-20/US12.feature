Feature: US-12 Foto y datos de contacto
  Como usuario postulante de BridgeTalent, 
  quiero completar mi perfil con foto y datos de contacto, 
  para que los reclutadores puedan identificar y contactarme fácilmente.[cite: 1]

Scenario: Completar perfil con datos válidos
  Given que el estudiante está en la sección de perfil
  When ingresa la siguiente información:
    | Campo | Valor |
    | Foto | profile_pic.png |
    | Correo | estudiante@upc.edu.pe |
    | Telefono | 999888777 |
  Then el sistema debe guardar los datos y hacerlos visibles para reclutadores verificados

  Scenario: Ingreso de datos de contacto
    Given que el usuario ingresa su correo, LinkedIn y teléfono[cite: 1]
    When guarda los cambios[cite: 1]
    Then el sistema almacena los datos de contacto de forma segura[cite: 1]

  Scenario: Visualización de contacto por reclutador
    Given que un reclutador verificado visita el perfil[cite: 1]
    When accede a la sección de contacto[cite: 1]
    Then puede ver los datos de contacto que el estudiante ha hecho visibles[cite: 1]
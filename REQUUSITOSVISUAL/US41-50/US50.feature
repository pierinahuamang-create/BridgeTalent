Feature: US-50 Compartir en LinkedIn
  Como estudiante de BridgeTalent, 
  quiero compartir mi portafolio de BridgeTalent en LinkedIn con un solo botón, 
  para difundir mi perfil en redes profesionales.[cite: 1]

  Scenario: Difusión de perfil en redes profesionales
    Given que el estudiante desea promocionar su portafolio
    When hace clic en:
      | Acción | Destino |
      | Compartir perfil | LinkedIn |
    Then el sistema genera el enlace con vista previa automática

  Scenario: Vista previa del enlace
    Given que el enlace ha sido generado[cite: 1]
    When la publicación se muestra[cite: 1]
    Then el sitio web de LinkedIn muestra una vista previa con su nombre, 
    título y foto de perfil[cite: 1]

  Scenario: Copiar enlace manualmente
    Given que el estudiante no desea compartir directamente[cite: 1]
    When hace clic en "Copiar enlace"[cite: 1]
    Then el sistema copia la URL de su perfil público al portapapeles[cite: 1]
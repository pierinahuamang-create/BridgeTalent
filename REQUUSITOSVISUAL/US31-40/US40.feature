Feature: US-40 Descargar portafolio en ZIP
  Como reclutador de BridgeTalent, 
  quiero descargar el portafolio completo de un postulante en ZIP, 
  para revisarlo offline antes de la entrevista técnica.[cite: 1]

  Scenario: Generación de paquete ZIP para reclutadores
    Given que el reclutador solicita la descarga de un portafolio
    When el sistema compila el contenido:
      | Elemento | Formato |
      | Proyectos | Archivos originales |
      | Perfil | PDF resumen |
    Then el reclutador recibe un archivo ZIP para revisión offline

  Scenario: Contenido del ZIP
    Given que el reclutador abre el archivo ZIP descargado[cite: 1]
    When explora su contenido[cite: 1]
    Then encuentra una carpeta por proyecto con los archivos subidos y 
    un archivo PDF resumen del perfil[cite: 1]

  Scenario: Descarga disponible solo con vacante activa
    Given que el reclutador intenta descargar un portafolio sin tener una vacante activa asociada[cite: 1]
    When hace clic en el botón de descarga[cite: 1]
    Then el sistema muestra un mensaje indicando que no tiene permisos para descargar[cite: 1]
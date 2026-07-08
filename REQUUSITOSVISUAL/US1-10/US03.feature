Feature: US-03 Integración con GitHub
  Como usuario postulante de BridgeTalent, 
  quiero conectar mi cuenta de GitHub y importar mis repositorios automáticamente, 
  para que así mis proyectos queden visibles en mi perfil sin tener que subirlos manualmente.

Scenario: Selección e importación de repositorios
  Given que el estudiante se autentica con GitHub
  When selecciona los siguientes repositorios:
    | Repositorio | Lenguaje |
    | sistema-gestion-medica | React, Node.js |
    | app-pagos-fullstack | Python, Django |
  Then el sistema importa los datos y los muestra en el perfil
Feature: US-38 Contador de postulantes
  Como estudiante de BridgeTalent, 
  quiero ver cuántas personas postularon a la misma vacante, 
  para medir mi competencia realista.[cite: 1]

  Scenario: Visualización de competencia en vacantes
    Given que el estudiante visualiza una lista de vacantes
    When el sistema muestra el contador:
      | Vacante | Postulantes |
      | Junior Dev | 10 |
      | Trainee QA | 5 |
    Then el estudiante puede medir su nivel de competencia

  Scenario: Actualización en tiempo real del contador
    Given que un nuevo estudiante postula a la vacante[cite: 1]
    When se completa la postulación[cite: 1]
    Then el contador se incrementa automáticamente para todos los que ven la vacante[cite: 1]

  Scenario: Desglose por tipo de perfil (opcional)
    Given que el estudiante hace clic en el contador[cite: 1]
    When se despliega información adicional[cite: 1]
    Then muestra cuántos son de su misma carrera o universidad (sin identidades)[cite: 1]
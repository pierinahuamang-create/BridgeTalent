Feature: US-16 Filtrar por carrera y ciclo
  Como reclutador de BridgeTalent, 
  quiero filtrar estudiantes por carrera y ciclo académico, 
  para enfocarme en perfiles que se ajusten a mis vacantes junior.[cite: 1]

  Scenario: Filtrado por carrera
    Given que el reclutador accede a los filtros de búsqueda[cite: 1]
    When selecciona una o más carreras (Ing. Software, Sistemas, etc.)[cite: 1]
    Then el sistema filtra estudiantes que pertenecen a esas carreras[cite: 1]

  Scenario: Filtrado por ciclo
    Given que el reclutador selecciona un rango de ciclos (ej. 5to ciclo a egresados)[cite: 1]
    When aplica el filtro[cite: 1]
    Then el sistema muestra solo estudiantes en ese rango[cite: 1]

Scenario: Filtrado avanzado por carrera y ciclo
  Given que el reclutador desea encontrar talento específico
  When configura los filtros:
    | Filtro | Valor |
    | Carrera | Ingeniería de Sistemas |
    | Ciclo | 8vo a 10mo |
  Then el sistema debe mostrar solo estudiantes que cumplan ambas condiciones
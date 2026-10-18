# Arquitectura - Laberinto de 72 Estados

## Visión general

Implementación de búsqueda en profundidad (DFS) sobre un grafo de 72 nodos representado como lista de adyacencia en Prolog.

## Decisiones de arquitectura

### ADR-001: Búsqueda en profundidad con backtracking

**Estado:** Aceptado  
**Contexto:** Se requiere encontrar un camino entre dos nodos en un grafo, evitando ciclos.  
**Decisión:** Usar DFS con backtracking en Prolog, representando el grafo como lista de adyacencia.  
**Consecuencias:** Búsqueda completa pero puede no encontrar el camino más corto.

## Tecnologías

- SWI-Prolog 8.x

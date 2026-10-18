# Guia de Instalacion - Laberinto de 72 Estados

Esta guia te ayuda a ejecutar el proyecto en tu entorno local.

## Requisitos previos

- SWI-Prolog 8.x

## Instalacion

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Matthew-Garay/72estados.git
   cd 72estados
   ```
2. Ejecuta el programa:
   ```bash
   swipl -s laberinto72estados.pl -g "main" -t "halt"
   ```

## Verificacion

El programa busca un camino entre dos nodos en un grafo de 72 estados usando busqueda en profundidad (DFS).

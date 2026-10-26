# Laberinto de 72 Estados

## A. Titulo del Proyecto y Resumen Ejecutivo

Laberinto de 72 Estados es una implementacion de busqueda en profundidad (DFS) sobre un grafo de 72 nodos representado como lista de adyacencia, desarrollado en lenguaje Prolog. El sistema resuelve el problema de encontrar un camino entre un nodo inicial y un nodo final dentro de un grafo no dirigido, evitando ciclos mediante el registro de nodos ya visitados. Su alcance tecnologico se limita a la ejecucion local en el entorno SWI-Prolog, sin dependencias de red, base de datos ni componentes externos.

## B. Arquitectura del Sistema

El programa sigue una arquitectura de capas logicas basada en programacion logica. La entrada consiste en un identificador de nodo inicial, un identificador de nodo final y la definicion del grafo como lista de adyacencia. El motor de busqueda aplica el algoritmo de profundidad con backtracking: explora un camino hasta llegar al nodo destino o hasta agotar las opciones, momento en el cual retrocede al ultimo nodo con sucesores no visitados. El flujo de datos va de la definicion del grafo al predicado de busqueda, que devuelve una lista de nodos representando el camino encontrado, y finalmente se imprime la secuencia en consola.

## C. Caracteristicas Tecnicas Clave

- Representacion de grafos mediante listas de adyacencia en Prolog.
- Algoritmo de busqueda en profundidad (DFS) con backtracking para explorar el espacio de estados.
- Mecanismo de evitacion de ciclos mediante verificacion de membresia en la lista de nodos visitados.
- Persistencia limitada a la ejecucion en memoria; no se utiliza base de datos ni almacenamiento en disco.
- Ausencia de mecanismos de concurrencia, procesamiento en tiempo real o red; es un programa de ejecucion secuencial y por lotes.
- Seguridad limitada al ambito de ejecucion local; no maneja datos sensibles ni autenticacion.

## D. Especificacion del Stack Tecnologico

| Categoria | Tecnologia / Librería |
|-----------|----------------------|
| Lenguaje | SWI-Prolog 8.x |
| Paradigma | Programacion logica, busqueda en grafos, backtracking |
| Entorno | SWI-Prolog 8.x |

## E. Guia de Instalacion, Configuracion y Despliegue

### Requisitos previos del sistema

- SWI-Prolog 8.x instalado en el sistema operativo.
- Acceso a terminal o consola de comandos.

### Secuencia de comandos para clonacion e instalacion

```bash
git clone https://github.com/Matthew-Garay/72estados.git
cd 72estados
```

### Configuracion de variables de entorno

Este proyecto no requiere archivo .env ni variables de entorno. Todo el comportamiento se configura dentro del archivo fuente `laberinto72estados.pl`.

### Comandos para ejecucion en entorno de Desarrollo

```bash
swipl -s laberinto72estados.pl -g "main" -t "halt"
```

### Comandos para ejecucion en entorno de Produccion

No aplica entorno de produccion separado; el programa se ejecuta localmente con el mismo comando de desarrollo.

## F. Creditos de Autoría

Desarrollado por: Matthew Ilveneff Garay Pérez
Correo Electronico: 1911.garay.perez@gmail.com

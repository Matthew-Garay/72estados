# Laberinto de 72 estados

Practica de IA en Prolog. Un grafo de 72 nodos guardado como lista de adyacencia y una busqueda en profundidad (DFS) que devuelve el camino entre dos nodos.

La busqueda la hace `resolver/3`: recibe inicio, fin y regresa el camino. El predicado `sucesor_disp/4` evita repetir nodos para no ciclarse, e `invertir/2` y `concatenar/3` estan escritas a mano porque la practica lo pide.

## Requisitos

SWI-Prolog.

## Uso

```bash
swipl laberinto72estados.pl
```

```prolog
?- resolver(n1, n72, Camino).
```

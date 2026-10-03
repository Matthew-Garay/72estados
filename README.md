# Laberinto de 72 estados

Práctica de Inteligencia Artificial en Prolog. Resuelve un laberinto de 72
nodos haciendo una búsqueda en profundidad (DFS) sobre un grafo representado
como lista de adyacencia.

## Cómo funciona

El grafo es una lista de 72 listas. Cada elemento dice qué nodos son alcanzables
desde ese nodo:

```prolog
[n1, n2, n3],       % desde n1 se llega a n2 y a n3
[n2, n1, n5],       % desde n2 se llega a n1 y a n5
...
```

La búsqueda la hace `resolver/3`, que recibe el nodo inicial, el final y
devuelve el camino:

```prolog
resolver(n1, n72, Camino).
```

Se apoya en cuatro predicados:

| Predicado | Función |
|-----------|---------|
| `resolver/3` | punto de entrada; llama a `busqueda/4` e invierte el resultado |
| `busqueda/4` | envuelve la recursión y aplica `invertir/2` |
| `camino1/5` | recursión de DFS; el camino se construye hacia atrás |
| `sucesor_disp/4` | busca el siguiente nodo disponible, evitando repetir |

El corte se hace con `not(miembro(Y, P1))` dentro de `sucesor_disp/4`: un nodo
que ya está en el camino actual no se vuelve a visitar, y así termina la
exploración en vez de girar para siempre.

`invertir/2` y `concatenar/3` son definiciones propias, sin usar los
predicados de la biblioteca estándar, porque la práctica pide escribirlas a mano.

## Cómo ejecutarlo

Hace falta [SWI-Prolog](https://www.swi-prolog.org/).

```bash
swipl laberinto72estados.pl
```

```prolog
?- resolver(n1, n72, P).
?- resolver(n30, n69, P).
```

## Nota sobre la codificación

El archivo está en **UTF-8 sin BOM**. Venía en Windows-1252 con dos espacios
duros (`0xA0`) dentro de la lista del grafo, en la línea 34 y en la 46. Prolog no
trata el espacio duro como separador, así que la lista no se leía bien.

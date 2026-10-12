<div align="center">

# 🗺️ Laberinto de 72 Estados

**Práctica de Inteligencia Artificial en Prolog** — búsqueda en profundidad (DFS) sobre un grafo de 72 nodos.

[![SWI-Prolog](https://img.shields.io/badge/SWI--Prolog-8.x-007ACC?style=flat-square&logo=prolog&logoColor=white)](https://www.swi-prolog.org/)
[![IA](https://img.shields.io/badge/Inteligencia%20Artificial-B%C3%BAsqueda%20en%20Profundidad-6f42c1?style=flat-square)]()

</div>

---

## 📖 Descripción

Implementación clásica de **búsqueda en profundidad (DFS)** sobre un grafo de **72 nodos** representado como lista de adyacencia. Dados un nodo inicial y uno final, el programa devuelve la secuencia de nodos que forman el camino entre ambos, **evitando ciclos**.

Es una práctica académica de la asignatura de Inteligencia Artificial: ilustra la representación de grafos, el recorrido con backtracking y la escritura manual de predicados auxiliares en Prolog.

## ✨ Características

- Grafo de 72 nodos modelado como **lista de adyacencia**.
- **Búsqueda en profundidad (DFS)** con detección de ciclos para no repetir nodos.
- Predicados auxiliares escritos a mano (`invertir/2`, `concatenar/3`, `miembro/2`), como pide la práctica.
- Sin librerías externas: aprovecha el backtracking nativo de Prolog.

## 🛠️ Tecnologías utilizadas

- **Lenguaje:** Prolog
- **Intérprete:** SWI-Prolog 8.x

## 📋 Requisitos previos

- [SWI-Prolog](https://www.swi-prolog.org/) instalado y accesible desde la terminal.

## 🚀 Instalación

```bash
git clone https://github.com/Matthew-Garay/72estados.git
cd 72estados
swipl laberinto72estados.pl
```

## 🧪 Uso

Una vez cargado el programa, consulta el camino entre dos nodos con `resolver/3` (inicio, fin, camino):

```prolog
?- resolver(n1, n72, Camino).
?- resolver(n3, n38, Camino).
```

`sucesor_disp/4` garantiza que no se visiten nodos repetidos y `invertir/2` devuelve el camino en orden correcto.

## 📂 Estructura del proyecto

```
72estados/
├── laberinto72estados.pl              # Programa Prolog (grafo + DFS)
├── Práctica 14. Laberinto de 72 estados.pdf   # Memoria de la práctica
├── laberinto IA.pdf
└── README.md
```

## 📜 Licencia

Proyecto académico y educativo; puedes usarlo libremente con fines de aprendizaje.

## ✍️ Autor

**Matthew Garay** — [GitHub](https://github.com/Matthew-Garay)

# Laberinto de 72 Estados

<p align="center">
  <a href="https://github.com/Matthew-Garay/72estados/actions/workflows/ci.yml"><img src="https://github.com/Matthew-Garay/72estados/actions/workflows/ci.yml/badge.svg" alt="CI Status"/></a>
  <a href="https://github.com/Matthew-Garay/72estados/security/dependabot"><img src="https://img.shields.io/badge/Dependabot-enabled-blue?style=flat-square&logo=github&labelColor=555555" alt="Dependabot"/></a>
</p>

Implementacion de busqueda en profundidad (DFS) sobre un grafo de 72 nodos representado como lista de adyacencia en Prolog. Dados un nodo inicial y uno final, el programa devuelve la secuencia de nodos que forman el camino entre ambos, evitando ciclos.

## Stack tecnologico

- **Lenguaje:** SWI-Prolog
- **Paradigma:** Programacion logica, busqueda en grafos, backtracking
- **Entorno:** SWI-Prolog 8.x

## Arquitectura

```mermaid
graph TD
    A[Grafo de 72 nodos] --> B[Nodo inicial y nodo final]
    B --> C[Busqueda en profundidad con backtracking]
    C --> D[Camino entre nodos evitando ciclos]
    D --> E[Secuencia de nodos del recorrido]
    
    style A fill:#e1f5fe,stroke:#01579b
    style B fill:#fff3e0,stroke:#e65100
    style C fill:#e8f5e9,stroke:#1b5e20
    style D fill:#f3e5f5,stroke:#4a148c
    style E fill:#ffe0b2,stroke:#ef6c00
```

## Caracteristicas

- Representacion de grafos como lista de adyacencia
- Busqueda en profundidad (DFS) con backtracking
- Evitacion de ciclos en el recorrido
- Codigo modular y documentado

## Como ejecutar

### Requisitos previos

- SWI-Prolog 8.x instalado

### Ejecucion

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Matthew-Garay/72estados.git
   cd 72estados
   ```
2. Ejecuta el archivo principal con SWI-Prolog:
   ```bash
   swipl -s laberinto72estados.pl -g "main" -t "halt"
   ```
3. El programa muestra el camino encontrado entre los nodos especificados.

## Estructura del proyecto

```
72estados/
├── laberinto72estados.pl    # Codigo fuente en Prolog
├── .gitignore               # Archivos excluidos del control de versiones
├── LICENSE                  # Licencia MIT
├── README.md                # Este archivo
└── docs/                    # Documentacion extendida
    ├── setup-guide.md       # Guia de instalacion
    └── architecture.md      # Diagrama de arquitectura
```

## Contacto

<p align="center">
  <a href="mailto:1911.garay.perez@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white" alt="Email"/></a>
  <a href="https://www.linkedin.com/in/matthewgarayperez/"><img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn"/></a>
</p>

% ============================================================================
% Laberinto de 72 Estados - Busqueda en Profundidad (DFS) en Prolog
% Refactorizado: separacion de datos y logica, punto de entrada interactivo,
% validacion de entrada y mensajes de consola claros.
% ============================================================================

% ----------------------------------------------------------------------------
% Punto de entrada principal: solicita nodos al usuario y ejecuta la busqueda.
% ----------------------------------------------------------------------------
main :-
    write('=== Laberinto de 72 Estados ==='), nl,
    write('Algoritmo: Busqueda en Profundidad (DFS) con backtracking'), nl, nl,
    write('Ingrese el nodo inicial (ej. n1): '), read(Ni),
    write('Ingrese el nodo final   (ej. n72): '), read(Nf),
    (   validar_nodo(Ni), validar_nodo(Nf) ->
        resolver(Ni, Nf, Camino),
        (   Camino = [] ->
            write('No se encontro camino entre los nodos especificados.'), nl
        ;   write('Camino encontrado:'), nl,
            mostrar_camino(Camino)
        )
    ;   write('Uno o ambos nodos no son validos.'), nl
    ).

% ----------------------------------------------------------------------------
% Muestra el camino encontrado nodo por nodo.
% ----------------------------------------------------------------------------
mostrar_camino([]).
mostrar_camino([N | Resto]) :-
    write('  '), write(N), nl,
    mostrar_camino(Resto).

% ----------------------------------------------------------------------------
% Valida que un nodo pertenezca al grafo de 72 estados.
% ----------------------------------------------------------------------------
nodo_valido(n1).  nodo_valido(n2).  nodo_valido(n3).  nodo_valido(n4).
nodo_valido(n5).  nodo_valido(n6).  nodo_valido(n7).  nodo_valido(n8).
nodo_valido(n9).  nodo_valido(n10). nodo_valido(n11). nodo_valido(n12).
nodo_valido(n13). nodo_valido(n14). nodo_valido(n15). nodo_valido(n16).
nodo_valido(n17). nodo_valido(n18). nodo_valido(n19). nodo_valido(n20).
nodo_valido(n21). nodo_valido(n22). nodo_valido(n23). nodo_valido(n24).
nodo_valido(n25). nodo_valido(n26). nodo_valido(n27). nodo_valido(n28).
nodo_valido(n29). nodo_valido(n30). nodo_valido(n31). nodo_valido(n32).
nodo_valido(n33). nodo_valido(n34). nodo_valido(n35). nodo_valido(n36).
nodo_valido(n37). nodo_valido(n38). nodo_valido(n39). nodo_valido(n40).
nodo_valido(n41). nodo_valido(n42). nodo_valido(n43). nodo_valido(n44).
nodo_valido(n45). nodo_valido(n46). nodo_valido(n47). nodo_valido(n48).
nodo_valido(n49). nodo_valido(n50). nodo_valido(n51). nodo_valido(n52).
nodo_valido(n53). nodo_valido(n54). nodo_valido(n55). nodo_valido(n56).
nodo_valido(n57). nodo_valido(n58). nodo_valido(n59). nodo_valido(n60).
nodo_valido(n61). nodo_valido(n62). nodo_valido(n63). nodo_valido(n64).
nodo_valido(n65). nodo_valido(n66). nodo_valido(n67). nodo_valido(n68).
nodo_valido(n69). nodo_valido(n70). nodo_valido(n71). nodo_valido(n72).

validar_nodo(N) :- nodo_valido(N).

% ----------------------------------------------------------------------------
% Definicion del grafo de 72 estados como lista de adyacencia.
% Separada de la logica de busqueda para facilitar mantenimiento.
% ----------------------------------------------------------------------------
grafo_72([
    [n1, n2, n3],
    [n2, n1, n5],
    [n3, n1, n4],
    [n4, n3, n38],
    [n5, n2, n7],
    [n6, n7],
    [n7, n5, n6, n8],
    [n8, n7, n9, n10],
    [n9, n8],
    [n10, n8, n11],
    [n11, n10, n12],
    [n12, n11, n13],
    [n13, n12, n23],
    [n14, n15],
    [n15, n16, n14],
    [n16, n15, n17],
    [n17, n16, n18],
    [n18, n17, n19],
    [n19, n18, n20],
    [n20, n19, n21],
    [n21, n20, n22],
    [n22, n21, n23, n24],
    [n23, n13, n22],
    [n24, n22, n25],
    [n25, n24, n26],
    [n26, n25, n27],
    [n27, n26],
    [n28, n29, n31],
    [n29, n28, n30],
    [n30, n29, n69],
    [n31, n28, n32],
    [n32, n31, n33],
    [n33, n32, n34],
    [n34, n33, n35],
    [n35, n34, n36],
    [n36, n35, n37],
    [n37, n36, n38],
    [n38, n4, n37, n39, n40],
    [n39, n38, n40, n44],
    [n40, n38, n39, n41, n42],
    [n41, n40, n42],
    [n42, n40, n41, n43],
    [n43, n42],
    [n44, n39, n45],
    [n45, n46, n44],
    [n46, n45, n47],
    [n47, n46, n48],
    [n48, n47, n49],
    [n49, n48, n50],
    [n50, n49],
    [n51, n52],
    [n52, n51, n53],
    [n53, n52, n54],
    [n54, n53, n55],
    [n55, n54, n56],
    [n56, n55, n57, n61],
    [n57, n56, n58, n65],
    [n58, n57, n59, n65],
    [n59, n58, n60],
    [n60, n59],
    [n61, n56, n62],
    [n62, n61, n63],
    [n63, n62, n64],
    [n64, n63],
    [n65, n57, n66, n67, n68],
    [n66, n65, n70],
    [n67, n65, n68, n69],
    [n68, n65, n67],
    [n69, n30, n67],
    [n70, n66, n71],
    [n71, n70, n72],
    [n72, n72]
]).

% ----------------------------------------------------------------------------
% Busca un camino entre el nodo Inicio y el nodo Fin usando DFS.
% Devuelve la lista de nodos que conforman el camino.
% ----------------------------------------------------------------------------
busqueda(Inicio, Fin, Grafo, Camino) :-
    camino1(Inicio, Fin, [Inicio], Grafo, CaminoInverso),
    invertir(CaminoInverso, Camino).

camino1(Fin, Fin, Camino, _, Camino).
camino1(Actual, Fin, Visitados, Grafo, Camino) :-
    sucesor_disp(Actual, Grafo, Visitados, Siguiente),
    camino1(Siguiente, Fin, [Siguiente | Visitados], Grafo, Camino).

% ----------------------------------------------------------------------------
% Obtiene el siguiente sucesor no visitado del nodo Actual.
% ----------------------------------------------------------------------------
sucesor_disp(Nodo, Grafo, Visitados, Sucesor) :-
    miembro([Nodo | Sucesores], Grafo),
    miembro(Sucesor, Sucesores),
    not(miembro(Sucesor, Visitados)),
    !.

sucesor_disp(_Nodo, [_Resto | Grafo], Visitados, Sucesor) :-
    sucesor_disp(_Nodo, Grafo, Visitados, Sucesor).

% ----------------------------------------------------------------------------
% Utilidades de lista.
% ----------------------------------------------------------------------------
invertir([], []).
invertir([Cabeza | Cola], Resultado) :-
    invertir(Cola, Intermedio),
    concatenar(Intermedio, [Cabeza], Resultado).

concatenar([], L, L).
concatenar([X | L1], L2, [X | L3]) :-
    concatenar(L1, L2, L3).

miembro(X, [X | _]).
miembro(X, [_ | Cola]) :-
    miembro(X, Cola).

% ----------------------------------------------------------------------------
% Predicado de conveniencia para resolver directamente con nodos dados.
% ----------------------------------------------------------------------------
resolver(Ni, Nf, Camino) :-
    grafo_72(Grafo),
    busqueda(Ni, Nf, Grafo, Camino).

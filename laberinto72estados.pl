busqueda(A, Z, G, P) :-
    camino1(A, Z, [A], G, Pr),
    invertir(Pr, P).

camino1(Z, Z, P, _, P).
camino1(X, Z, P1, G, P) :-
    sucesor_disp(X, G, P1, Y),
    camino1(Y, Z, [Y | P1], G, P).

sucesor_disp(X, [[X | Scx] | _], P1, Y) :-
    !, miembro(Y, Scx), not(miembro(Y, P1)).
sucesor_disp(X, [_ | GRest], P1, Y) :-
    sucesor_disp(X, GRest, P1, Y).

invertir([], []).
invertir([Cabeza | Cola], Linvertida) :-
    invertir(Cola, Colainvertida),
    concatenar(Colainvertida, [Cabeza], Linvertida).

concatenar([], L, L).
concatenar([X | L1], L2, [X | L3]) :-
    concatenar(L1, L2, L3).

miembro(X, [X | _]).
miembro(X, [_ | Cola]) :-
    miembro(X, Cola).

resolver(Ni, Nf, P) :- busqueda( Ni, Nf,
[[n1, n2, n3], [n2, n1, n5], [n3, n1, n4], [n4,n3,n38],
[n5,n2,n7], [n6,n7], [n7,n5,n6,n8], [n8,n7,n9,n10],
[n9,n8], [n10,n8,n11], [n11,n10,n12],
[n12,n11,n13], [n13,n12,n23], [n14,n15],
[n15,n16,n14], [n16,n15,n17], [n17,n16,n18],
[n18,n17,n19], [n19,n18,n20], [n20,n19,n21], [n21,n20,n22],
[n22,n21,n23,n24],[n23,n13,n22],[n24,n22,n25],[n25,n24,n26],
[n26,n25,n27],[n27,n26],[n28,n29,n31],[n29,n28,n30],[n30,n29,n69],
[n31,n28,n32],[n32,n31,n33],[n33,n32,n34],[n34,n33,n35],
[n35,n34,n36],[n36,n35,n37],[n37,n36,n38],[n38,n4,n37,n39,n40],
[n39,n38,n40,n44],[n40,n38,n39,n41,n42],[n41,n40,n42],
[n42,n40,n41,n43],[n43,n42],[n44,n39,n45],[n45,n46,n44],
[n46,n45,n47],[n47,n46,n48],[n48,n47,n49],[n49,n48,n50],
[n50,n49],[n51,n52],[n52,n51,n53],[n53,n52,n54],
[n54,n53,n55],[n55,n54,n56],[n56,n55,n57,n61],[n57,n56,n58,n65],
[n58,n57,n59,n65],[n59,n58,n60],[n60,n59],[n61,n56,n62],[n62,n61,n63],
[n63,n62,n64],[n64,n63],[n65,n57,n66,n67,n68],[n66,n65,n70],[n67,n65,n68,n69],
[n68,n65,n67],[n69,n30,n67],[n70,n66,n71],[n71,n70,n72],[n72,n72]], P).

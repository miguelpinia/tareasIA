%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tarea 1.                  %
% Miguel Angel Piña Avelino %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%
% Base de conocimiento %
%%%%%%%%%%%%%%%%%%%%%%%%
hombre(bart).
hombre(homero).
hombre(abraham).
hombre(herb).
hombre(clancy).
mujer(lisa).
mujer(maggie).
mujer(marge).
mujer(selma).
mujer(patty).
mujer(mona).
mujer(jackeline).
mujer(ling).
padre(bart,homero).
padre(lisa,homero).
padre(maggie,homero).
padre(homero,abraham).
padre(herb,abraham).
padre(marge,clancy).
padre(patty,clancy).
padre(selma,clancy).
madre(bart,marge).
madre(lisa,marge).
madre(maggie,marge).
madre(homero,mona).
madre(herb,mona).
madre(marge,jackeline).
madre(patty,jackeline).
madre(selma,jackeline).
madre(ling,selma).

% Ejercicio 1.- a)
abuelo(X, Y) :- hombre(Y), padre(Z, Y), padre(X, Z).
abuelo(X, Y) :- hombre(Y), padre(Z, Y), madre(X, Z).
%:- abuelo(maggie, X).
%:- abuelo(bart, X).

% Ejercicio 1.- b)
abuela(X, Y) :- mujer(Y), madre(Z, Y), madre(X, Z).
abuela(X, Y) :- mujer(Y), madre(Z, Y), padre(X, Z).
%:- abuela(maggie, X).
%:- abuela(ling, X).

% Ejercicio 1.- c)
nieto(X, Y) :- hombre(Y), abuelo(Y, X).
nieto(X, Y) :- hombre(Y), abuela(Y, X).
%:- nieto(X, bart).

% Ejercicio 1.- d)
nieta(X, Y) :- mujer(Y), abuelo(Y, X).
nieta(X, Y) :- mujer(Y), abuela(Y, X).
%:- nieta(X, maggie).
%:- nieta(X, Y).

% Ejercicio 1.- e)
hermano(X, Y) :- hombre(Y), padre(Y, Z), padre(X, Z), X \= Y.
hermano(X, Y) :- hombre(Y), madre(Y, Z), madre(X, Z), X \= Y.
%:- hermano(X, Y).

% Ejercicio 1.- f)
hermana(X, Y) :- mujer(Y), padre(Y, Z), padre(X, Z), X \= Y.
hermana(X, Y) :- mujer(Y), madre(Y, Z), madre(X, Z), X \= Y.
%:- hermana(X, Y).

% Ejercicio 1.- g)
tia(X, Y) :- padre(X, Z), hermana(Z, Y).
tia(X, Y) :- madre(X, Z), hermana(Z, Y).
%:- tia(X, Y).


% Ejercicio 1.- h) Revisar con el debugger lo que está haciendo
primo(X, Y) :- hombre(Y), padre(Y, Z), hermano(Z, W), padre(X, W).
primo(X, Y) :- hombre(Y), padre(Y, Z), hermana(Z, W), madre(X, W).
primo(X, Y) :- hombre(Y), madre(Y, Z), hermano(Z, W), padre(X, W).
primo(X, Y) :- hombre(Y), madre(Y, Z), hermana(Z, W), madre(X, W).
%:- primo(X, Y).

% Ejercicio 1.- i)
sobrino(X, Y) :- hombre(Y), padre(Y, W), hermano(X, W).
sobrino(X, Y) :- hombre(Y), padre(Y, W), hermana(X, W).
sobrino(X, Y) :- hombre(Y), madre(Y, W), hermano(X, W).
sobrino(X, Y) :- hombre(Y), madre(Y, W), hermana(X, W).
%:- sobrino(X, Y).

% Ejercicio 1.- j)
pareja(X, Y) :- padre(Z, X), madre(Z, Y).
%:- pareja(X, Y).


%%%%%%%%%%%%%%%
% Ejercicio 2 %
%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %:- mujer(X), hombre(Y).    %
% %@ X = lisa,                %
% %@ Y = bart ;               %
% %@ X = lisa,                %
% %@ Y = homero ;             %
% %@ X = lisa,                %
% %@ Y = abraham ;            %
% %@ X = lisa,                %
% %@ Y = herb ;               %
% %@ X = lisa,                %
% %@ Y = clancy ;             %
% %@ X = maggie,              %
% %@ Y = bart ;               %
% %@ X = maggie,              %
% %@ Y = homero ;             %
% %@ X = maggie,              %
% %@ Y = abraham ;            %
% %@ X = maggie,              %
% %@ Y = herb ;               %
% %@ X = maggie,              %
% %@ Y = clancy ;             %
% %@ X = marge,               %
% %@ Y = bart ;               %
% %@ X = marge,               %
% %@ Y = homero ;             %
% %@ X = marge,               %
% %@ Y = abraham ;            %
% %@ X = marge,               %
% %@ Y = herb ;               %
% %@ X = marge,               %
% %@ Y = clancy ;             %
% %@ X = selma,               %
% %@ Y = bart ;               %
% %@ X = selma,               %
% %@ Y = homero ;             %
% %@ X = selma,               %
% %@ Y = abraham ;            %
% %@ X = selma,               %
% %@ Y = herb ;               %
% %@ X = selma,               %
% %@ Y = clancy ;             %
% %@ X = patty,               %
% %@ Y = bart ;               %
% %@ X = patty,               %
% %@ Y = homero ;             %
% %@ X = patty,               %
% %@ Y = abraham ;            %
% %@ X = patty,               %
% %@ Y = herb ;               %
% %@ X = patty,               %
% %@ Y = clancy ;             %
% %@ X = mona,                %
% %@ Y = bart ;               %
% %@ X = mona,                %
% %@ Y = homero ;             %
% %@ X = mona,                %
% %@ Y = abraham ;            %
% %@ X = mona,                %
% %@ Y = herb ;               %
% %@ X = mona,                %
% %@ Y = clancy ;             %
% %@ X = jackeline,           %
% %@ Y = bart ;               %
% %@ X = jackeline,           %
% %@ Y = homero ;             %
% %@ X = jackeline,           %
% %@ Y = abraham ;            %
% %@ X = jackeline,           %
% %@ Y = herb ;               %
% %@ X = jackeline,           %
% %@ Y = clancy ;             %
% %@ X = ling,                %
% %@ Y = bart ;               %
% %@ X = ling,                %
% %@ Y = homero ;             %
% %@ X = ling,                %
% %@ Y = abraham ;            %
% %@ X = ling,                %
% %@ Y = herb ;               %
% %@ X = ling,                %
% %@ Y = clancy.              %
%                             %
%                             %
% %:- mujer(X), !, hombre(Y). %
% %@ X = lisa,                %
% %@ Y = bart ;               %
% %@ X = lisa,                %
% %@ Y = homero ;             %
% %@ X = lisa,                %
% %@ Y = abraham ;            %
% %@ X = lisa,                %
% %@ Y = herb ;               %
% %@ X = lisa,                %
% %@ Y = clancy.              %
%                             %
%                             %
% %:- mujer(X), hombre(Y), !. %
% %@ X = lisa,                %
% %@ Y = bart.                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
% Ejercicio 3 %
%%%%%%%%%%%%%%%

cuenta([], 0).
cuenta([_|T], Z) :- cuenta(T, N), Z is 1 + N.
%:- cuenta([a,b,e,j,a], X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ejercicio 4.                               %
% Encontrar el i-ésimo elemento de fibonacci %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fibo(1, 0) :- !.
fibo(2, 1) :- !.
fibo(N, X) :- N1 is N - 1, N2 is N - 2, fibo(N1, Z), fibo(N2, W), X is Z + W.
%:- fibo(7, X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ejercicio 5.                             %
% Contar el número de veces que aparece un %
% elemento en una lista.                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cuenta(_, [], 0) :- !.
cuenta(X, [X|T], Y) :- cuenta(X, T, Z), Y is Z + 1.
cuenta(X, [Z|T], Y) :- X \= Z, cuenta(X, T, Y).
%:- cuenta(a, [b,a,n,a,n,a], X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ejercicio 6.                      %
% Elimina un elemento de una lista. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elimina(_, [], []) :- !.
elimina(X, [X|Xs], Z) :- elimina(X, Xs, Z), !.
elimina(X, [Y|Xs], [Y|Z]) :- X \= Y, elimina(X, Xs, Z).
% :- elimina(a, [b,a,n,a,n,a], X).

%%%%%%%%%%%%%%%%%%%%%
% Ejercicio 7.      %
% Lista palindroma. %
%%%%%%%%%%%%%%%%%%%%%
reversa([], Z, Z).
reversa([H|T],Z,Acc) :- reversa(T,Z,[H|Acc]).
palindroma([]).
palindroma(Y) :- reversa(Y, Z, []), Y = Z.
%:- palindroma([r,e,c,o,n,o,c,e,r]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ejercicio 8.               %
% Obtener valor de una lista %
% atributo-valor.            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- op(15,xfx,'=>').
valor(_, [], _) :- !.
valor(X, [X=>Y|_], Y) :- !.
valor(X, [_=>_|Xs], W) :- valor(X, Xs, W).
%:- valor(forma, [color=>azul , forma=>esferica , peso=>ligero , material=>plastico] , X).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ejercicio 9.                        %
% Representación de un árbol binario, %
% más recorridos en preorden, inorden %
% y postorden                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

esArbolBinario(nil).            % La raíz vacía es AB
esArbolBinario(nodo(Izq, _, Der)) :- esArbolBinario(Izq), esArbolBinario(Der).
%:- esArbolBinario(nodo(nodo(nodo(nil, 7, nil), 6, nodo(nil, 5, nil)), 1, nodo(nodo(nil, 3, nil), 2, nil))).

preorden(nil) :- !.
preorden(nodo(I, X, D)) :- esArbolBinario(I), esArbolBinario(D), write(X), tab(3), preorden(I), preorden(D).
%:- preorden(nodo(nodo(nodo(nil, 7, nil), 6, nodo(nil, 5, nil)), 1, nodo(nodo(nil, 3, nil), 2, nil))).
%@ 1   6   7   5   2   3
%@ true.


inorden(nil) :- !.
inorden(nodo(I,X,D)) :- esArbolBinario(I), esArbolBinario(D), inorden(I), write(X), tab(3), inorden(D).
%:- inorden(nodo(nodo(nodo(nil, 7, nil), 6, nodo(nil, 5, nil)), 1, nodo(nodo(nil, 3, nil), 2, nil))).
%@ 7   6   5   1   3   2
%@ true.


postorden(nil) :- !.
postorden(nodo(I,X,D)) :- esArbolBinario(I), esArbolBinario(D), postorden(I), postorden(D), write(X), tab(3).
%:- postorden(nodo(nodo(nodo(nil, 7, nil), 6, nodo(nil, 5, nil)), 1, nodo(nodo(nil, 3, nil), 2, nil))).
%@ 7   5   6   3   2   1
%@ true.
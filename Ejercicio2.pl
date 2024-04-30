% Predicados
persona(barbara, mujer).
persona(susana, mujer).
persona(roberto, hombre).
persona(juan, hombre).
persona(maria, mujer).
persona(pedro, hombre).

amistad(barbara, roberto).
amistad(susana, juan).
amistad(barbara, juan).
amistad(barbara, maria).
amistad(susana, pedro).

sospechoso(roberto). % Se asume que ya hay un sospechoso
% Reglas
sospechoso_hombres(Persona) :- amistad(susana, Persona), persona(Persona, hombre).
sospechoso_mujeres(Persona) :- amistad(Persona, Hombre), amistad(susana, Hombre), persona(Persona, mujer).
sospechoso_amigos_mujeres(Persona) :- amistad(Persona, Mujer), amistad(Mujer, Hombre), amistad(susana, Hombre), persona(Mujer, mujer).

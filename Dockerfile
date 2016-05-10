FROM ocaml/opam:alpine
RUN opam depext -ui atdgen

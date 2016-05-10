FROM ocaml/opam:alpine
COPY test.ml /home/opam/test.ml
RUN sudo chown opam /home/opam/test.ml
WORKDIR /home/opam
RUN opam config exec -- ocamlopt -o test test.ml
RUN ./test

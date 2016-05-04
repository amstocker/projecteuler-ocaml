ocamlc -o $1 $1.ml
./$1
rm $1
rm $1.cmi
rm $1.cmo

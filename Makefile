.PHONY: ctan manual tex

ctan: manual
	mkdir babel-latin
	cp latin.dtx babel-latin/
	cp latin.ins babel-latin/
	cp latin.pdf babel-latin/
	cp README.ctan babel-latin/README
	zip -r babel-latin.zip babel-latin
	rm -r babel-latin

manual:
	lualatex latin.dtx
	makeindex -s gglo.ist -o latin.gls latin.glo
	lualatex latin.dtx

tex:
	latex latin.ins

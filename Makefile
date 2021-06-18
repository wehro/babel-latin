.PHONY: ctan, manual, tex

ctan: manual
	mkdir latin
	cp latin.dtx latin/
	cp latin.ins latin/
	cp latin.pdf latin/
	zip -r latin.zip latin
	rm -r latin

manual:
	lualatex latin.dtx
	makeindex -s gglo.ist -o latin.gls latin.glo
	lualatex latin.dtx

tex:
	latex latin.ins

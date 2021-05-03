manual:
	lualatex latin.dtx
	makeindex -s gglo.ist -o latin.gls latin.glo
	lualatex latin.dtx

tex:
	latex latin.ins

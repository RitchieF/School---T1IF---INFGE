program RCP;
	uses crt;

	var	LI, CO, HAUTEUR, LARGEUR: integer;
		INTERIEUR, CI: char;

begin
	clrscr;
	writeln('Dessin d''un rectangle');
	writeln;

	{****Entrez des donnes************}
	repeat
		write('Veuillez entrer la largeur s.v.p.: ');
		readln(LARGEUR);
	until (LARGEUR in [3..79]);
	repeat
		write('Veuillez entrer la hauteur s.v.p.: ');
		readln(HAUTEUR);
	until (HAUTEUR in [3..22]);
	repeat
		write('Desirez-vous un rectangle creux ou plein [C/P]: ');
		readln(INTERIEUR);
	until (INTERIEUR in ['C', 'c', 'P', 'p']);

	{****Calcul************}
	if (INTERIEUR in ['C', 'c'])
		then CI:= ' '
		else CI:= '*';

	{****Affichage des donnes************}
	for LI:= 1 to HAUTEUR do begin
		for CO:= 1 to LARGEUR do
			if (LI in[1, HAUTEUR]) or (CO in [1,LARGEUR])
				then write('*')
				else write(CI);
			writeln;
		end;

	readln;
end.

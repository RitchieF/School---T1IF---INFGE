program C5;
	uses crt;
	var PHRASE, MOT, MAXMOT: string;
	MAXL, L, P: integer;

begin
	clrscr;
	writeln;
	writeln('Recherche du mot le plus long dans une phrase.');
	writeln;

	{*Entree de donnees*}
	write('Veuillez entrer une phrase: ');
	readln(PHRASE);

	{*Traitement*}
	MAXMOT:= '';
	MAXL:= 0;
	P:= pos(' ',PHRASE);
	while (P > 0) do begin
		MOT:= copy(PHRASE,1,P-1);
		delete(PHRASE,1,P);
		L:= length(MOT);
		if (L > MAXL)
			then begin
				MAXMOT:= MOT;
				MAXL:= L;
			end;
			P:= pos(' ',PHRASE);
	end;
	if (length(PHRASE) > MAXL)
		then begin
			MAXMOT:= PHRASE;
			MAXL:= length(PHRASE);
		end;

	{*Sortie*}
	writeln;
	writeln('Le mot le plus long est ',MAXMOT, ' et comporte ',MAXL, ' caracteres.');

	readln;
end.

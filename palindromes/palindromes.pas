program PALINDROMES;
	uses crt;
	var	I, L, C: integer;
		PHRASE: string;

begin
	clrscr;
	readln(PHRASE);
	for I:= length(PHRASE) downto 1 do
		begin
			if PHRASE[I] in ['.','?','!'] then delete(PHRASE,I,1);
		end;
	
{*	I:= 1;

	while I <= length(PHRASE) do
		begin
			if PHRASE[I] in ['.','?','!']
				then
					delete(PHRASE,I,1)
				else
					I:= I+1;

		end;*}

	L:= length(PHRASE);
	C:= 0;

	for I:= 1 to (L div 2) do
		begin
			if upcase(PHRASE[I]) <> upcase(PHRASE[L+1-I]) then C:= C+1;
		end;

	if C=0
		then
			writeln('palin')
		else
			writeln('non');

	readln;
end.
				

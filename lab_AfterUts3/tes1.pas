program ptop1;
uses crt;

var
angka: integer;
p: ^integer;
pp: ^Pinteger;

begin
clrscr;

angka := 7;

p := @angka;
pp := @p;
writeln('Nilai angka: ', angka);
writeln('Alamat angka: ', p^);
writeln('Alamat pointer: ', pp^^);
end.



program la;
uses crt;

var
    tahun: integer;
begin;
    clrscr;

writeln('Masukkan nilai tahun: ');
readln(tahun);



if (tahun mod 400=0) or (tahun mod 4=0) and (tahun mod 100<>0) then
    begin
    writeln('tahun kabisat');
    end
else
begin
    writeln('bukan tahun kabisat');
    end;

writeln('Nilai tahun: ', tahun);
end.
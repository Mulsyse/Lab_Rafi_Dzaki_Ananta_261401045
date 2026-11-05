program la;
uses crt;

var
    uts,uas,na: real;
    poin:char;
begin;
    clrscr;

writeln('Masukkan nilai UTS: ');
readln(uts);
writeln('Masukkan nilai UAS: ');
readln(uas);

na := 0.4 * uts + 0.6 * uas;

if (na >= 80) then
    begin
    writeln('ciko');
    poin := 'A'
    end
    
else if (na >= 70) then
    begin
    writeln('buah');
    poin := 'B'
    end
else if (na >= 60) then
    begin
    writeln('mantap');
    poin := 'C'
    end
else if (na >= 50) then
    begin
    writeln('bolelah');
    poin := 'D'
    end
else
    begin
    writeln('Maaf, Anda tidak lulus');
    poin := 'E'
    end;

writeln('Nilai akhir: ', na:0:2);
writeln('Poin: ', poin);

end.
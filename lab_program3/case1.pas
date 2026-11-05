program la;
uses crt;

var
    suhu: real;
begin;
    clrscr;

writeln('Masukkan nilai suhu: ');
readln(suhu);



if (suhu < 36) then
    begin
    writeln('suhu rendah');
    end


else if (suhu >= 36) and (suhu <= 37.5) then
    begin
    writeln('suhu normal');
    end

else if (suhu > 37.5) then
    begin
    writeln('mantap');
    end;

writeln('Nilai suhu: ', suhu:0:2);
end.
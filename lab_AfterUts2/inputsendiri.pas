program perkenalan;
uses crt;

procedure perkenalan(teks:string);
begin
  writeln('Halo!');
  writeln('Nama saya adalah ', teks, '!');
  writeln('Saya lagi belajar pascal');
end;

begin
  clrscr;
  perkenalan('rafi');
  readln;
end.
program latihan;
uses crt;

var
    nama: string;
    tugas :real;
    uts : real;
    uas: real;
    nilai_tugas:real;
    nilai_uts:real;
    nilai_uas:real;
    nilai_akhir:real;
    a:real;
    b:real;
    c:real;


begin;
    clrscr;
    writeln('nama=');
    read(nama);
    writeln('nilai tugas=');
    read(tugas);
    writeln('nilai uts=');
    read(uts);
    writeln('nilai uas=');
    read(uas);


    a:= tugas *30/100;
    b:= uts *30/100;
    c:= uas *40/100;
    nilai_akhir := a + b + c ;
    writeln('nilai_akhir' ,nilai_akhir:0:2);

end.
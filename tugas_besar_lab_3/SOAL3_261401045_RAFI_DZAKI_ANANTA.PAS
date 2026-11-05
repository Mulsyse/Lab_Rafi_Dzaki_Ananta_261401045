{Buatlah program yang menampilkan deret angka dari 1 sampai N menggunakan 'while loop' dan
'continue':
1. Minta masukan nilai N dan pilihan kategori deret (1: Ganjil, 2: Genap).
2. Gunakan 'while loop' dari 1 hingga N.
3. Jika angka tidak sesuai kategori deret (misal ganjil saat memilih genap), lewati menggunakan
'continue'.
4. Jika angka merupakan kelipatan 5, lewati angka tersebut menggunakan 'continue'.
5. Tampilkan deret angka hasil penyaringan ke layar!}

program soal3;
uses crt;
var
    N, i, pilihan: integer;

begin
clrscr;
    // user diminta untuk memasukkan nilai N dan pilihan kategori deret
    write('Masukkan nilai N: ');
    readln(N);
    writeln('Pilih kategori deret:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihan (1/2): ');
    readln(pilihan);

    i := 1;
    writeln('Deret angka hasil penyaringan:');
    while i <= N do
    begin
        // sistem ngecek apakah angka sesuai kategori deret yang dipilih user
        if (pilihan = 1) and (i mod 2 = 0) then
        begin
            i := i + 1;
            continue; // lewati angka genap jika user memilih ganjil
        end
        else if (pilihan = 2) and (i mod 2 <> 0) then
        begin
            i := i + 1;
            continue; // lewati angka ganjil jika user memilih genap
        end;

        // sistem ngecek apakah angka merupakan kelipatan 5, jika iya lewati
        if i mod 5 = 0 then
        begin
            i := i + 1;
            continue; // lewati angka kelipatan 5
        end;

        // tampilkan angka yang lolos penyaringan ke layar
        writeln(i);
        i := i + 1;
    end;

end.

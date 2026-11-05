{Hitung tarif parkir berdasarkan kode kendaraan menggunakan 'case-of':
1. Kode 'M' (Mobil): Rp5.000 (jam pertama), berikutnya tambahan Rp3.000/jam.
2. Kode 'K' (Motor): Rp2.000 (jam pertama), berikutnya tambahan Rp1.000/jam berikutnya.
3. Kode 'B' (Bus): Rp10.000 (jam pertama), berikutnya tambahan Rp5.000/jam berikutnya.
Jika lama parkir > 10 jam, berlaku Tarif Maksimal Flat (Mobil Rp30.000, Motor Rp10.000, Bus
Rp50.000).}
program soal7;
uses crt;
var
    kodeKendaraan: char;
    lamaParkir: integer;
    tarif: real;

begin
clrscr;
    // tempat untuk si user Input kode kendaraan miliknya dan sama berapa lama waktu parkir dia
    write('Masukkan Kode Kendaraan (M/K/B): ');
    readln(kodeKendaraan);
    write('Masukkan Lama Parkir (jam): ');
    readln(lamaParkir);

    // ngitung biaya parkir dengan acuan kode kendaraan sama lama parkir
    case upcase(kodeKendaraan) of
        'M': begin
            if lamaParkir <= 1 then
                tarif := 5000
            else if lamaParkir > 10 then
                tarif := 30000
            else
                tarif := 5000 + (lamaParkir - 1) * 3000;
        end;
        'K': begin
            if lamaParkir <= 1 then
                tarif := 2000
            else if lamaParkir > 10 then
                tarif := 10000
            else
                tarif := 2000 + (lamaParkir - 1) * 1000;
        end;
        'B': begin
            if lamaParkir <= 1 then
                tarif := 10000
            else if lamaParkir > 10 then
                tarif := 50000
            else
                tarif := 10000 + (lamaParkir - 1) * 5000;
        end;
        else begin
            writeln('Kode kendaraan tidak valid.');
            exit; // Keluar dari program jika kode tidak valid
        end;
    end;

    // untuk nampilin hasil akhir dari perhitungan tarif parkir
    writeln('Tarif Parkir: Rp', tarif:0:2);
end.
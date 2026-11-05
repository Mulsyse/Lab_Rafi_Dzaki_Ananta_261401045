{Buatlah program penentuan nilai akhir matkul dari masukan Nilai Tugas (30%), UTS (30%), dan
UAS (40%):
1. Hitung Nilai Akhir.
2. Tentukan status LULOS jika Nilai Akhir >= 60 DAN Kehadiran >= 80%.
3. Tentukan Indeks Huruf: A (>=85), B (75-84), C (60-74), D (50-59), E (<50).}

program soal6;
uses crt;
var
    nilaiTugas, nilaiUTS, nilaiUAS, kehadiran, nilaiAkhir: real;
    statusLulus: string;
    indeksHuruf: char;

begin
clrscr;
    // Input nilai tugas, UTS, UAS, dan kehadiran
    write('Masukkan Nilai Tugas (0-100): ');
    readln(nilaiTugas);
    write('Masukkan Nilai UTS (0-100): ');
    readln(nilaiUTS);
    write('Masukkan Nilai UAS (0-100): ');
    readln(nilaiUAS);
    write('Masukkan Kehadiran (%) (0-100): ');
    readln(kehadiran);

    // Hitung Nilai Akhir
    nilaiAkhir := (nilaiTugas * 0.3) + (nilaiUTS * 0.3) + (nilaiUAS * 0.4);

    // Tentukan status LULUS atau TIDAK LULUS
    if (nilaiAkhir >= 60) and (kehadiran >= 80) then
        statusLulus := 'LULUS'
    else
        statusLulus := 'TIDAK LULUS';

    // Tentukan Indeks Huruf
    if nilaiAkhir >= 85 then
        indeksHuruf := 'A'
    else if nilaiAkhir >= 75 then
        indeksHuruf := 'B'
    else if nilaiAkhir >= 60 then
        indeksHuruf := 'C'
    else if nilaiAkhir >= 50 then
        indeksHuruf := 'D'
    else
        indeksHuruf := 'E';

    // Tampilkan hasil
    writeln;
    writeln('Nilai Akhir: ', nilaiAkhir:0:2);
    writeln('Status: ', statusLulus);
    writeln('Indeks Huruf: ', indeksHuruf);

end.
program PenentuanNilaiAkhir;
uses crt;
var
	tugas, uts, uas, nilaiAkhir: real;
	kehadiran: integer;
	indeks: char;
	status: string;
begin
	clrscr;
	write('Masukkan nilai Tugas : '); readln(tugas);
	write('Masukkan nilai UTS   : '); readln(uts);
	write('Masukkan nilai UAS   : '); readln(uas);
	write('Masukkan % Kehadiran : '); readln(kehadiran);
	nilaiAkhir := (0.3 * tugas) + (0.3 * uts) + (0.4 * uas);
	if (nilaiAkhir >= 60) and (kehadiran >= 80) then
		status := 'LULUS'
	else
		status := 'TIDAK LULUS';
	if nilaiAkhir >= 85 then indeks := 'A'
	else if nilaiAkhir >= 75 then indeks := 'B'
	else if nilaiAkhir >= 60 then indeks := 'C'
	else if nilaiAkhir >= 50 then indeks := 'D'
	else indeks := 'E';
	writeln;
	writeln('Hasil Perhitungan Nilai Akhir');
	writeln('Nilai Akhir : ', nilaiAkhir:0:2);
	writeln('Indeks      : ', indeks);
	writeln('Status      : ', status);
	readln;
end.

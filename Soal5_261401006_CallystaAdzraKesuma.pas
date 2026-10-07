program RekapitulasiNilai;
uses crt;
var
    m, n, i, j, lulus, tidakLulus: integer;
    nilai, totalNilai, rataRata: real;
begin
    clrscr;
    write('Masukkan jumlah mahasiswa: ');
    readln(m);
    write('Masukkan jumlah tugas: ');
    readln(n);
    lulus := 0; tidakLulus := 0;
    for i := 1 to m do
    begin
        writeln;
        writeln('--- Input Data Mahasiswa ke-', i, ' ---');
        totalNilai := 0;
        for j := 1 to n do
        begin
            write('  Masukkan nilai tugas ke-', j, ': ');
            readln(nilai);
            totalNilai := totalNilai + nilai;
        end;
        rataRata := totalNilai / n;
        write('  Rata-rata Nilai: ', rataRata:0:2);
        if rataRata >= 65 then
        begin
            writeln(' [LULUS]');
            lulus := lulus + 1;
        end
        else
        begin
            writeln(' [TIDAK LULUS]');
            tidakLulus := tidakLulus + 1;
        end;
    end;
    writeln;
    writeln('RINGKASAN HASIL REKAPITULASI NILAI MAHASISWA');
    writeln('Total mahasiswa LULUS       : ', lulus);
    writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
    readln;
end.

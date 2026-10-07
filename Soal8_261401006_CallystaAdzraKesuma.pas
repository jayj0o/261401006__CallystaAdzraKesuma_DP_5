program GajiKaryawan;
uses crt;
var
    golongan: char;
    jam, pokok, lembur, bonus, total: longint;
begin
    clrscr;
    write('Masukkan golongan (A/B/C): '); readln(golongan);
    write('Masukkan total jam kerja: '); readln(jam);
    case golongan of
        'A', 'a': pokok := 1500000;
        'B', 'b': pokok := 2000000;
        'C', 'c': pokok := 2500000;
    else
        writeln('Golongan tidak valid.');
        readln;
        exit;
    end;
    if jam > 40 then
        lembur := (jam - 40) * 20000
    else
        lembur := 0;
    if (golongan = 'C') or (golongan = 'c') then
        if jam > 50 then
            bonus := 100000
        else
            bonus := 0
    else
        bonus := 0;
    total := pokok + lembur + bonus;
    writeln('Gaji Pokok: Rp', pokok);
    writeln('Lembur: Rp', lembur);
    writeln('Bonus: Rp', bonus);
    writeln('Total Gaji Akhir: Rp', total);
    readln;
end.
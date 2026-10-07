program JumlahHari;
uses crt;
var
    tahun, bulan, hari: integer;
    kabisat: boolean;
begin
    clrscr;
    write('Masukkan tahun: '); readln(tahun);
    write('Masukkan nomor bulan (1-12): '); readln(bulan);
    kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));
    case bulan of
        1, 3, 5, 7, 8, 10, 12: hari := 31;
        4, 6, 9, 11: hari := 30;
        2:
            if kabisat then
                hari := 29 
            else
                hari := 28;
    else
        begin
            writeln('Nomor bulan tidak valid.');
            readln;
            exit;
        end;
    end;
    writeln('Jumlah hari: ', hari);
    readln;
end.
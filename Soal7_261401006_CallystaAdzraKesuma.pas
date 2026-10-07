program TarifParkir;
uses crt;
var
    kode: char;
    jam, tarif: integer;
begin
    clrscr;
    write('Masukkan kode kendaraan (M/K/B): '); readln(kode);
    write('Masukkan lama parkir (jam): '); readln(jam);
    case kode of
        'M', 'm':
            if jam > 10 then
                tarif := 30000
            else
                tarif := 5000 + (jam - 1) * 3000;
        'K', 'k':
            if jam > 10 then
                tarif := 10000
            else
                tarif := 2000 + (jam - 1) * 1000;
        'B', 'b':
            if jam > 10 then
                tarif := 50000
            else
                tarif := 10000 + (jam - 1) * 5000;
    else
        begin
            writeln('Kode kendaraan tidak valid.');
            readln;
            exit;
        end;
    end;
    writeln('Tarif parkir: Rp', tarif);
    readln;
end.
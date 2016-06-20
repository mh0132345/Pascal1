PROGRAM Nhi_Phan_Thap_Phan;
USES crt;
VAR dec_begin, i: INTEGER;
bin_number: STRING;
zero_or_one, bin_or_dec: CHAR;
bin: STRING;
currHeading, intBinChar, x: INTEGER;
dec: REAL;
repeat_char: CHAR;
BEGIN
clrscr;
REPEAT
WRITELN('Muon chuyen tu Nhi Phan qua Thap Phan, bam B,Chuyen tu Thap Phan qua Nhi Phan, bam D');
READLN(bin_or_dec);
IF (bin_or_dec='D') OR (bin_or_dec='d') THEN
BEGIN
WRITELN('Hay nhap vao mot so Thap Phan: ');
READLN(dec_begin);
REPEAT
IF (dec_begin MOD 2) = 0 THEN zero_or_one := '0'
ELSE zero_or_one := '1';
bin_number := bin_number + zero_or_one;
dec_begin := dec_begin DIV 2;
UNTIL dec_begin = 0;
FOR i := Length(bin_number) DOWNTO 1 DO
WRITE(bin_number[i]);
WRITELN;
END
ELSE
BEGIN
WRITELN('Hay nhap vao mot so Nhi Phan: ');
READLN(bin);
dec := 0;
currHeading := 0;
FOR i := Length(bin) DOWNTO 0 DO
BEGIN
IF currHeading > 0 THEN currHeading := currHeading * 2
ELSE currHeading := 1;
Val(bin[i], intBinChar, x);
dec := dec + (intBinChar * currHeading);
END;
WRITELN(dec:10:0);
END;
WRITELN('Ban co muon tiep tuc khong? Y/N');
READLN(repeat_char);
UNTIL (repeat_char = 'N') OR (repeat_char = 'n');
READLN;
END.
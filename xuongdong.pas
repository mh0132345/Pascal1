PROGRAM tao_bang;
USES crt;
VAR i,a: BYTE; {chi so cua hang}
j: BYTE;
    {chi so cua cot}
BEGIN

clrscr;      {xoa man hinh}
a:=10;
i:=0;
   REPEAT
    inc(a);
    Gotoxy(20,a);
    FOR j:=0 TO 9 DO write(10*i+j:4);
    inc(i);
    writeln;

   UNTIL i=10;


readln {dung chuong trinh de xem ket qua}
END.
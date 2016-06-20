USES crt;
VAR
a:ARRAY [1..1000] OF LONGINT;kq:ARRAY [1..5] OF INTEGER;i,k,n,d1,d2,d3:INTEGER;
BEGIN
clrscr;
Repeat
Write('Ban hay nhap so phan tu cua day:');
Readln(n);
IF n<=0 THEN Writeln('Ban phai nhap so lon hon 0.');
UNTIL n>0;FOR i:=1 TO n do
begin
    Write('Ban hay nhap so thu ',i,':');
    Readln(a[i]);
    IF ((a[i]>a[kq[1]]) OR (kq[1]=0)) AND (a[i]<0) THEN kq[1]:=i;
    IF ((a[i]<a[kq[2]]) OR (kq[2]=0)) AND (a[i]>0) THEN kq[2]:=i;
    IF (a[i]>0) AND (a[i-1]>0) AND (i>1) then
    begin
        IF d1=0 THEN d1:=2 
        ELSE d1:=d1+1;
    end
    ELSE begin
        IF kq[3]<d1 THEN kq[3]:=d1;
        d1:=0;
        END;
    IF (a[i]<0) AND (a[i-1]<0) AND (i>1) then
    BEGIN 
        IF d2=0 THEN d2:=2 
        ELSE d2:=d2+1;end
    else
    BEGIN IF kq[4]<d2 THEN kq[4]:=d2
        ;d2:=0;
    END;
    IF (a[i]*a[i-1]<0) AND (i>1) then
    BEGIN 
        IF d3=0 THEN d3:=2 
        ELSE d3:=d3+1;
    end
    ELSE 
    BEGIN
        IF kq[5]<d3 THEN kq[5]:=d3;
        kq[5]:=d3;
        d3:=0;
        END;
END;
IF kq[3]<d1 THEN kq[3]:=d1;
IF kq[4]<d2 THEN kq[4]:=d2;
IF kq[5]<d3 THEN kq[5]:=d3;
IF kq[1]<>0 THEN Writeln('So hang am lon nhat la so thu ',kq[1],':',a[kq[1]],'.')
ELSE Writeln('Khong co so am nao trong day.');
IF kq[2]<>0 THEN Writeln('So hang duong nho nhat la so thu ',kq[2],':',a[kq[2]],'.')
ELSE Writeln('Khong co so duong nao trong day.');
IF kq[3]<>0 THEN Writeln('So luong cac so duong lien tiep lon nhat la:',kq[3],'.')
ELSE Writeln('Khong co cac so duong nao lien tiep trong day.');
IF kq[4]<>0 THEN Writeln('So luong cac so am lien tiep lon nhat la:',kq[4],'.')
ELSE Writeln('Khong co cac so am nao lien tiep trong day.');
IF kq[5]<>0 THEN Writeln('So luong cac so dan dau lien tiep lon nhat la:',kq[5],'.')
ELSE Writeln('Khong co cac so dan dau nhau nao lien tiep trong day.');Readln;
END
.


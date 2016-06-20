PROGRAM cong;
TYPE BigNum=ansistring;
FUNCTION Sosanh(a,b:BigNum):SHORTINT; {-1: a<b; 0: a=b; 1: a>b}
BEGIN
  IF a=b THEN exit(0);
  WHILE length(a)<length(b) DO a:='0'+a;
  WHILE length(b)<length(a) DO b:='0'+b;
  IF a<b THEN exit(-1) ELSE exit(1);
END;
FUNCTION Cong(a,b:BigNum):BigNum;
VAR s:BigNum;
    i,t:LONGINT;
BEGIN
  WHILE length(a)<length(b) DO a:='0'+a;
  WHILE length(b)<length(a) DO b:='0'+b;
  s:=''; t:=0;
  FOR i:=length(a) DOWNTO 1 DO
    BEGIN
      t:=t+ord(a[i])+ord(b[i])-96;
      s:=chr(t MOD 10 + 48)+s;
      t:=t DIV 10;
    END;
  IF t>0 THEN s:=chr(t+48)+s;
  Exit(s);
 end;
 var a,b:bignum;
begin
write('nhap a,b');
readln(a,b);
writeln(cong(a,b));
readln
end.
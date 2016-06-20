PROGRAM Bai10;
USES crt;
VAR k: LONGINT;
(*--------------------------------------------*)
FUNCTION chuso(NN: LONGINT):CHAR;
VAR st:STRING[10];
       dem,M:LONGINT;
BEGIN
  dem:=0;
  M:=1;
  REPEAT
     str(M,st);
     dem := dem+length(st);
     inc(M);
  UNTIL dem >= NN;
  chuso := st[length(st) - (dem - NN)];
  END;
  (*-------------------------------------*)
  BEGIN
      clrscr;;
      write('Nhap k:');
      Readln(k);
      Writeln('Chu so thu', k,'cua day vo han cac so nguyen khong am');
      write('123456789101112... la:', chuso(k));
      Readln;
END.

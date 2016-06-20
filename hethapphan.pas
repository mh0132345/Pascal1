       PROGRAM Doi_thap_phan_ra_nhi_phan;
VAR
   He10,N,Y:WORD;
   He2,Tam:STRING;
BEGIN
   Writeln('DOI SO TU HE THAP PHAN SANG HE NHI PHAN');
   Writeln('         -----------------');
   Writeln;
   Write('-Nhap so nguyen he thap phan: ');
   Readln(He10);
   N:=He10;
   He2:=' ';
   REPEAT
      Y:=He10 MOD 2;
      Str(Y, Tam);
      He2:=Tam + He2;
      He10:= He10 DIV 2;
   UNTIL He10 = 0;
   Writeln;
   Writeln('+So he 10 la     : ',N);
   Writeln('+Doi sang he 2 la: ',He2);
   Writeln;
   Writeln('      Bam phim <Enter> de ket thuc');
   Readln
END.
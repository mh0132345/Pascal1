USES crt;
  VAR i,j,k,dem,n:INTEGER;
        a:ARRAY[1..100] OF INTEGER;
       {khai báo m?ng d? luu 100 ph?n t? là s? nguyên t? }
      FUNCTION kt(i:INTEGER):BOOLEAN;
          {khiem tra 1 so i có ph?i là s? nguyên t? ko}
      VAR j,dem:INTEGER;
            dd:BOOLEAN;
      BEGIN
            dem:=0;dd:=TRUE;
            FOR j:=2 TO i DIV 2 DO
                 IF (i MOD j=0) THEN dem:=dem+1;
            IF (dem<>0) OR (i=1) THEN dd:=FALSE
            ELSE dd:=TRUE;
            kt:=dd;
       END;
       FUNCTION ktlan2(i,j:INTEGER):BOOLEAN;
          {ki?m tra 1 s? dc t?o thành b?ng cách ghép liên ti?p s? i và j dc ij, ki?m tra ij có ph?i là s? nguyên t? ko? n?u dúng tr? v? true}
        VAR st:STRING;
              o,p,k:INTEGER;
              dd:BOOLEAN;
         BEGIN
              str(i,st);
              o:=length(st);
              str(i,st);
              p:=length(st);
             IF (p+o)<=5 THEN 
                 {ki?m tra d? dài c?a s? dc t?o thành. do mi?n giá tr? c?a Integer là 32768 (d? dài nó b?ng 5) nên c?n gi?i h?n nó nh? hon ho?c b?ng 5}
             BEGIN
                   k:=i*round(exp((o+p)*ln(10)))+j;
                     {k là s? dc t?o b?i ghép i v?i j}
                   IF kt(k) THEN ktlan2:=TRUE  
                    {ki?m tra xem k có ph?i là s? nguyên t? ko?n?u dúng thì tr? v? true, sai tr? v? false}
                   ELSE ktlan2:=FALSE;
              END
        ELSE ktlan2:=FALSE;
   END;

BEGIN
      k:=1;i:=0;clrscr;
      writeln('100 so nguyen to dau tien la:');
       WHILE (i<=100) DO 
        {tìm 100 s? nguyên t? d?u tiên rùi gán vào m?ng a}
             BEGIN
                          IF kt(k) THEN
                                        BEGIN
                                                     a[i]:=k;
                                                     write(' ',a[i]);
                                                     i:=i+1;
                                        END;
                           k:=k+1;
              END;
         dem:=0;
         writeln;
        REPEAT write('Nhap 0< N <=50 :');readln(n); UNTIL (n>0) AND (n<=50);{nh?p n}
         writeln('Ket qua:',n,' so ghep duoc tao thanh la:');
         FOR i:=1 TO 100 DO  
                {ki?m tra xem s? dc t?o thành b?ng cách ghép  ph?n t? a[i] v?i a[k] ta du?c k có d?ng a[i]a[k] có ph?i là s? nguyên t? không?n?u ph?i thì in ra màn hình}
                 FOR k:=2 TO 100 DO
                         IF ktlan2(a[i],a[k]) THEN
                                 BEGIN
                                         dem:=dem+1;
                                         write(' ',a[i],a[k]);
                                         IF dem=n THEN  {dây là di?u ki?n d?ng}
                                                 BEGIN
                                                         readln;
                                                         exit;
                                                 END;
                                  END;
        readln;
END. 

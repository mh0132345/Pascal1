USES crt;
  VAR i,j,k,dem,n:INTEGER;
        a:ARRAY[1..100] OF INTEGER;
       {khai b�o m?ng d? luu 100 ph?n t? l� s? nguy�n t? }
      FUNCTION kt(i:INTEGER):BOOLEAN;
          {khiem tra 1 so i c� ph?i l� s? nguy�n t? ko}
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
          {ki?m tra 1 s? dc t?o th�nh b?ng c�ch gh�p li�n ti?p s? i v� j dc ij, ki?m tra ij c� ph?i l� s? nguy�n t? ko? n?u d�ng tr? v? true}
        VAR st:STRING;
              o,p,k:INTEGER;
              dd:BOOLEAN;
         BEGIN
              str(i,st);
              o:=length(st);
              str(i,st);
              p:=length(st);
             IF (p+o)<=5 THEN 
                 {ki?m tra d? d�i c?a s? dc t?o th�nh. do mi?n gi� tr? c?a Integer l� 32768 (d? d�i n� b?ng 5) n�n c?n gi?i h?n n� nh? hon ho?c b?ng 5}
             BEGIN
                   k:=i*round(exp((o+p)*ln(10)))+j;
                     {k l� s? dc t?o b?i gh�p i v?i j}
                   IF kt(k) THEN ktlan2:=TRUE  
                    {ki?m tra xem k c� ph?i l� s? nguy�n t? ko?n?u d�ng th� tr? v? true, sai tr? v? false}
                   ELSE ktlan2:=FALSE;
              END
        ELSE ktlan2:=FALSE;
   END;

BEGIN
      k:=1;i:=0;clrscr;
      writeln('100 so nguyen to dau tien la:');
       WHILE (i<=100) DO 
        {t�m 100 s? nguy�n t? d?u ti�n r�i g�n v�o m?ng a}
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
                {ki?m tra xem s? dc t?o th�nh b?ng c�ch gh�p  ph?n t? a[i] v?i a[k] ta du?c k c� d?ng a[i]a[k] c� ph?i l� s? nguy�n t? kh�ng?n?u ph?i th� in ra m�n h�nh}
                 FOR k:=2 TO 100 DO
                         IF ktlan2(a[i],a[k]) THEN
                                 BEGIN
                                         dem:=dem+1;
                                         write(' ',a[i],a[k]);
                                         IF dem=n THEN  {d�y l� di?u ki?n d?ng}
                                                 BEGIN
                                                         readln;
                                                         exit;
                                                 END;
                                  END;
        readln;
END. 

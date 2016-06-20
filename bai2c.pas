PROGRAM bai2b;
USES crt; 
  VAR  S: STRING; 
      i, j: BYTE; 
  BEGIN
      Clrscr; 
      Write('Nhap xau S='); Readln(S); 
     FOR i:=1 TO length(S) DO
         BEGIN 
           IF S[i]='.' THEN 
           BEGIN 
              j:=i; 
              WHILE (S[i]='.')AND(i<=length(S)) DO  i:=i+1; 
              i:=i-1; 
              IF (i-j)=1 THEN insert('.',S,i) 
              ELSE 
           IF (i-j)>2 THEN 
               BEGIN 
                  Delete(S,j+2,i-j-2);   i:=j+1; 
              END; 
           END ;
           
        END; 
      Write('Chuoi sau khi bien doi la: ',S); 
      Readln; 
  END .


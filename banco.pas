Program Ban_co;
Uses Crt;
        Var      a: array [1..8, 1..8] of 0..1;
                                    b, c, d, p: array [0..8,0..8] of integer;
                                  max:integer;
Procedure  Input;
            Var      f: text;   i, j: integer;                
                                   st: string[8];
Begin
          Assign (f, 'banco2.txt');
          Reset (f);
          For i:=1 to 8 do
           begin
                     Readln(f,st);
                      For j:=1 to 8 do If st[j]= 0 then  a[i,j]:=0 else a[i,j]:=1;
           end;
         Close(f);
End;
Procedure Init;
Begin
           Input;
           Fillchar(b,sizeof(b),0);
           c:=b;  d:=b;  p:=b;
End;
Function Get_max(x, y, z, t: integer): integer;
            Var     k: integer;
           Begin
                        k:=x;
                        If k < y then k:=y;                                                       
                       If k < z then k:=z;
                       If k < t then k:=t;
                       Get_max:=k;
           End;
Procedure   Find_max;
         Var
                       i, j, k: integer;
           Begin
                     max:=0;
                     For i:=1 to 8 do                       
                       For j:=1 to 8 do
                         If   a[i, j]= 1 then
                             begin
                                       b[i, j]:=b[i-1,j]+1;
                                       c[i, j]:=c[i,j-1]+1;
                                       d[i,j]:=d[i-1,j-1]+1;
                                       p[i,j]:=p[i-1,j+1]+1;
                                       k:=get_max(b[i,j], c[i,j], d[i,j], p[i,j]);
                                       If   max < k then  max:=k;
                                end;
                     Writeln (max);
                     Readln;
           End;
BEGIN
            
            Init;
          Find_max;
END.

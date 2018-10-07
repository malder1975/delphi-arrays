program Project1;

{$APPTYPE CONSOLE}

uses
  System.SysUtils;

type mas = array[1..200,1..200] of integer;
var A: mas;
    i,j,temp,m,n,tmp: integer;


procedure swap(var x: integer; var y: integer);
var tmp: integer;
begin
tmp:=x;
x:=y;
y:=tmp;
end;
{ГЏГ°Г®Г¶ГҐГ¤ГіГ°Г* Г®ГЎГ°Г*ГЎГ®ГІГЄГЁ. }
procedure obr(var A: mas; temp: integer);
begin
if temp = 0 then writeln('Нулевой строки нет!')
else begin
writeln('Перестановка:');
  for j:=1 to n do swap(A[1,j],A[temp,j]);
end;
for i:=1 to m do begin
  for j:=1 to n do write(A[i,j]:4);
    writeln;
  end;
end;
{ГѓГ«Г*ГўГ*Г*Гї ГЇГ°Г®ГЈГ°Г*Г¬Г¬Г*.}
begin //clrscr;
randomize;
write('Введите количество строк: '); readln(m);
write('Введите количество столбцов: '); readln(n);
writeln('Исходная матрица:');
for i:=1 to m do begin
  for j:=1 to n do begin
  A[i,j]:=random(26);
  write(A[i,j]:4);
  end;
  writeln;
end;
writeln;
writeln;
for i:=m downto 1 do
  for j:=n downto 1 do
    if A[i,j]=0 then temp:=i;
obr(A,temp);
//readkey;
end.


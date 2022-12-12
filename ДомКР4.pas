uses graphabc;
var i,n: integer;
x1, y1, x0, y0,a,b,h,o,y1h,x1h: real;
begin
  writeln('Введите отрезок');
  readln(a,b);
  writeln('Введите шаг');
  readln(h);
  writeln('Введите масштаб');
  readln(n);
setwindowsize (800,550);
setwindowtitle (' График функции: 2 * x*x*x + (5) * x + (12)');
SetFontColor(clgreen);
SetFontSize(10);
textout (30,30,'2 * power(x1, 3) + (0) * power(x1, 2) + (5) * x1 + (12)');
setpencolor (clPurple);
setpenwidth (1);
line (80,400,720,400);
line (400,30,400,520);
SetFontSize(8);
for i:=-15 to 15 do
begin
line (400+i*n,395,400+i*n,405);
textout (395+i*n,410, floattostr (i));
end;
textout (720,420, 'X');
for i:=-18 to 5 do
begin
line (395,400+i*n,405,400+i*n);
textout (370,400+i*n, '');
textout (375,395+i*n, floattostr (-i*(10)));
end;
textout (420,20, 'Y, Pi');
a:=400+(a*n);
b:=400+(b*n);
h:=n*h;
o:=a;
for i:=-300 to 300 do
begin
x1:=i/n;
y1:= (1 / 4 * power(x1, 4) + 1 / 3 * power(x1, 3) + 17 * x1);
line(trunc(x0), trunc(y0), trunc(400+x1*n), trunc(400-y1*(n/10)), clBlue);
if trunc(400+x1*n)=a then line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(a), 400, clred);
if (trunc(400+x1*n)=o) and (o<b) then 
begin 
line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(o), 400, clred); 
x1h:=(i+h)/n;
y1h:=1 / 4 * power(x1h, 4) + 1 / 3 * power(x1h, 3) + 17 * x1h;
line(trunc(400+x1h*n),trunc(400-y1h*(n/10)), trunc(400+x1*n), trunc(400-y1*(n/10)),clred);
o:=o+h; 
end;
if trunc(400+x1*n)=b then line(trunc(400+x1*n), trunc(400-y1*(n/10)), trunc(b), 400, clred); 
x0:=trunc(400+x1*n);
y0:=trunc(400-y1*(n/10));
end;
end.
unit Chess;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    edtm: TEdit;
    edtn: TEdit;
    edta: TEdit;
    lbl: TLabel;
    btn: TButton;
    img: TImage;
    procedure btnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnClick(Sender: TObject);
var
m,n,a,i,j,x,codem,coden,codea:integer;
s,s1:string;
begin
 val(edtm.Text,m,codem);
val(edtn.text,n,coden);
val(edta.Text,a,codea);
repeat
  if (m>26) or (n>26) or (m<0) or (n<0) or (codem<>0) or(coden<>0) or (codea<>0) then
  begin
  img.Canvas.Font.Size:=100;
  img.Canvas.TextOut(100,100,'Error');
  exit;
   end
   else
   IMG.Canvas.Brush.Color:=clwhite;
 img.Canvas.Rectangle(0,0,n*i,m*i);
until (m<=26) and (n<=26) and (n>=0) and (m>=0) and (codem=0) and (coden=0) and (codea=0);
s:='ABCDEFGHIJKLMONPQRSTUVWXYZ';
img.canvas.Font.height:=a;
for i := 1 to m do
begin
 img.Canvas.Brush.Color:=clwhite;
img.canvas.textout(0,a*i,inttostr(i));
 for j := 1 to n do
  begin
      img.Canvas.Brush.Color:=clwhite;
      s1:=copy(s,j,1);
     img.canvas.textout(a*j,0,s1);
      if (j+i) mod 2=0 then
  begin
  img.canvas.brush.color:=clwhite;
  end
  else
  img.Canvas.Brush.Color:=clblack;
  img.Canvas.Rectangle(a*j,a*i,a*(j+1),a*(i+1));
end;
end;
end;
end.

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, StdCtrls, Mask, Menus, jpeg, Buttons;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    sgC: TStringGrid;
    Panel1: TPanel;
    sgA: TStringGrid;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Edit1: TEdit;
    Button2: TButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    sgMat: TStringGrid;
    Fichier1: TMenuItem;
    vider3: TMenuItem;
    Fichier2: TMenuItem;
    Noveauprogram1: TMenuItem;
    Exit1: TMenuItem;
    Label6: TLabel;
    Label7: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    home: TPanel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button3: TButton;
    Button8: TButton;
    Image1: TImage;
    Fermer1: TMenuItem;
    N1: TMenuItem;
    btValMat: TButton;
    Button9: TButton;
    Label5: TLabel;
    Image2: TImage;
    edit3: TMenuItem;
    Vider1: TMenuItem;
    Nbdevariable1: TMenuItem;
    Nbdecontrainte1: TMenuItem;
    vidertous1: TMenuItem;
    Vidertous2: TMenuItem;
    levecteurC1: TMenuItem;
    lamatriceA1: TMenuItem;
    levecteurB1: TMenuItem;
    Help1: TMenuItem;
    N2: TMenuItem;
    Aproposdenous1: TMenuItem;
    Algorithmedusimplexe1: TMenuItem;
    helputilisateur1: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    Button10: TButton;
    Label13: TLabel;
    sgVar: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure sgCKeyPress(Sender: TObject; var Key: Char);
    procedure sgAKeyPress(Sender: TObject; var Key: Char);
    procedure sgBKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Noveauprogram1Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure btValMatClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Nbdevariable1Click(Sender: TObject);
    procedure Nbdecontrainte1Click(Sender: TObject);
    procedure vidertous1Click(Sender: TObject);
    procedure levecteurC1Click(Sender: TObject);
    procedure lamatriceA1Click(Sender: TObject);
    procedure levecteurB1Click(Sender: TObject);
    procedure Vidertous2Click(Sender: TObject);
    procedure sgCExit(Sender: TObject);
    procedure sgAExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure base(r:integer;s:integer);   //Déclaration de la proc Base sgVar.Cols[2]:=sgA.Cols[sgA.colcount-1];   affectation des b pour Var d'écart
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

uses Presentation;

{$R *.dfm}
procedure  TForm1.base(r:integer;s:integer );

begin
//dsf
sgVar.Cells[0,s]:='X'+intToStr(r+1);
//sgVar.Cells[2,s]:=sgA.Cells[sgA.colcount-1,s];
sgVar.Cols[2]:=sgMat.Cols[sgMat.colcount-1];

end;

procedure TForm1.Button1Click(Sender: TObject);  //Affecter une taille à chaque matrice
var
i,j:integer;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') then
  begin
      sgVar.ColCount:=3;
      sgVar.RowCount:=strToInt(Edit2.text);
      sgVar.Height:=sgVar.RowCount*sgVar.DefaultRowHeight+14;
      sgVar.Width:=130;
      for  j:=0  to sgVar.RowCount-1  do
      begin
      sgVar.Cells[0,j]:='X'''+IntToStr(j+1);
      sgVar.Cells[1,j]:='=';
      end;

      sgC.ColCount:=StrToInt(Edit1.Text);
      sgC.Width:=sgC.DefaultColWidth*sgC.ColCount+20;
      sgC.Height:=30;

      sgA.ColCount:=StrToInt(Edit1.Text)+2;
      sgA.RowCount:=StrToInt(Edit2.Text);
      sgA.Width:=sgA.DefaultColWidth*sgA.ColCount+13;
      sgA.Height:=sgA.DefaultRowHeight*sgA.RowCount+13;
      for  i:=0  to sgA.RowCount-1  do
      begin
      sgA.Cells[sgA.ColCount-2,i]:='<=';
      end;

      GroupBox1.Visible:=false;
      Panel1.Visible:=true;
      edit3.Enabled:=false;
      edit3.Visible:=false;
      fichier1.Visible:=true;
      Label9.Caption:='';
      Label10.Caption:='';
      Button4.Enabled:=false;
      Button9.Enabled:=false;
      Button2.Enabled:=true;
      Label5.Visible:=false;
      sgMat.Visible:=false;
      sgA.Enabled:=true;
      sgC.Enabled:=true;

  end
  else
      begin
     MessageDlg('Vous devez entrer un entier supérieur à 2!',mtError,[mbok],0);

        end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in [#8,'0'..'9']) then key:=#0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in [#8,'0'..'9']) then key:=#0;
end;

procedure TForm1.sgCKeyPress(Sender: TObject; var Key: Char);
begin
if key='.' then key:=',';
if not (key in [#8,'0'..'9',',','-']) then key:=#0;
end;

procedure TForm1.sgAKeyPress(Sender: TObject; var Key: Char);
begin
if key='.' then key:=',';
if not (key in [#8,'0'..'9',',','-']) then key:=#0;
end;

procedure TForm1.sgBKeyPress(Sender: TObject; var Key: Char);
begin
if key='.' then key:=',';
if not (key in [#8,'0'..'9',',','-']) then key:=#0;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j:integer;
begin
Edit1.Text:='';
Edit2.Text:='';
Panel1.Visible:=false;
GroupBox1.Visible:=true;
Fichier1.Visible:=false;
edit3.Enabled:=true;
edit3.Visible:=true;
for j:= 0 to sgC.colcount-1 do sgC.cells[j,0] := '';

for i := 0 to sgA.rowcount-1 do
  begin
  for j := 0 to sgA.colcount-1 do
    sgA.cells[j,i] := '';
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
if messageDlg('Voulez vous quitter le programme?',mtconfirmation,[mbyes,mbno],0)=mryes then close;
end;

procedure TForm1.Button4Click(Sender: TObject);
var r,i,j,s:integer;
      pivo,maxi,mini:real;
      a,b,c,z:real;
    opt,existe:boolean;
    //t:string;
begin
Button4.Enabled:=false;
if RadioButton1.Checked then
begin
//*********************** SIMPLEXE****************************
//Commencement du simplexe
 repeat
  opt:=false;
  //trouver r
  maxi:=StrToFloat(sgmat.cells[0,sgMat.RowCount-1]);
  r:=0;

  for i:=0 to sgMat.ColCount-2 do
    begin
      if (maxi<StrToFloat(sgMat.Cells[i,sgMat.RowCount-1])) then
        begin
          maxi:=StrToFloat(sgMat.Cells[i,sgMat.RowCount-1]);
          r:=i;
        end;
    end;

  //teste d'optimalité
  if maxi<=0 then opt:=true
  else
    begin
   //teste d'existence de solution
  existe:=false;
  mini:=0;
 for i:=0 to sgMat.RowCount-2 do
    if StrToFloat(sgMat.Cells[r,i])>0 then
      begin
        existe:=true;
        mini:=StrToFloat(sgMat.Cells[sgMat.ColCount-1,i])/StrToFloat(sgMat.Cells[r,i]);//valeur par défaut
        s:=i;
        break;
      end;

  //trouver s
  if (existe=true) then
    begin
      for i:=0 to sgMat.RowCount-2 do
        if StrToFloat(sgMat.Cells[r,i])>0 then
          begin
            if mini>=StrToFloat(sgMat.Cells[sgMat.ColCount-1,i])/StrToFloat(sgMat.Cells[r,i]) then
              begin
                mini:=StrToFloat(sgMat.Cells[sgMat.ColCount-1,i])/StrToFloat(sgMat.Cells[r,i]);
                s:=i;
              end;
          end;

    //pivotage

      pivo:=StrToFloat(sgmat.cells[r,s]);
          for j:=0 to sgMat.ColCount-1 do
            begin
              sgmat.cells[j,s]:=FloatToStr(StrToFloat(sgmat.cells[j,s])/pivo);
            end;

          for i:=0 to sgMat.RowCount-1 do
          begin
            if (i<>s) then
              begin
              b:=StrToFloat(sgmat.cells[r,i]);
              for j:=0 to sgMat.ColCount-1 do
                  begin
                     a:=StrToFloat(sgmat.cells[j,i]);
                     c:=StrToFloat(sgmat.cells[j,s]);
                     z:=a-(b*c);
                  sgmat.cells[j,i]:=FloatToStr(z);
                  end;
              end;
          end;
        end;
      end;
      base(r,s);//Actualise la nouvelle base
    //fin du pivotage
   until (opt=true) or (existe=false);
//********************* fin du simplexe***************************
    if (existe=false)and(opt=false) then
        begin
          ShowMessage('Y a pas de solution !!');
          BitBtn1.Enabled:=true;
          Button10.Enabled:=false;
          Panel2.Visible:=true;
          btValMat.Enabled:=false;
          Button9.Enabled:=false;
          Button2.Enabled:=false;
          Edit4.Enabled:=false;
          Label13.Visible:=true;
          Button4.Enabled:=false;
        end;
   if opt=true then
     begin
      Panel2.Visible:=true;
      btValMat.Enabled:=false;
      Button9.Enabled:=false;
      Button2.Enabled:=false;
      z:=strtofloat(sgMat.Cells[sgMat.colcount-1,sgMat.rowcount-1]);
      z:=-z;
      Edit4.text:=floattostr(z);
      Label13.Visible:=false;
      Button10.Enabled:=false;
      BitBtn1.Enabled:=true;
   end;
//********************* fin ***************************
end
else
//************************ par itération ***************************
    begin

  opt:=false;
  //trouver r
  maxi:=StrToFloat(sgmat.cells[0,sgMat.RowCount-1]);
  r:=0;

  for i:=0 to sgMat.ColCount-2 do
    begin
      if (maxi<StrToFloat(sgMat.Cells[i,sgMat.RowCount-1])) then
        begin
          maxi:=StrToFloat(sgMat.Cells[i,sgMat.RowCount-1]);
          r:=i;
        end;
    end;

  //teste d'optimalité
  if maxi<=0 then opt:=true
  else
    begin
   //teste d'existence de solution
  existe:=false;
  mini:=0;
 for i:=0 to sgMat.RowCount-2 do
    if StrToFloat(sgMat.Cells[r,i])>0 then
      begin
        existe:=true;
        mini:=StrToFloat(sgMat.Cells[sgMat.ColCount-1,i])/StrToFloat(sgMat.Cells[r,i]);//valeur par défaut
        s:=i;
        break;
      end;

  //trouver s
  if (existe=true) then
    begin
      for i:=0 to sgMat.RowCount-2 do
        if StrToFloat(sgMat.Cells[r,i])>0 then
          begin
            if mini>=StrToFloat(sgMat.Cells[sgMat.ColCount-1,i])/StrToFloat(sgMat.Cells[r,i]) then
              begin
                mini:=StrToFloat(sgMat.Cells[sgMat.ColCount-1,i])/StrToFloat(sgMat.Cells[r,i]);
                s:=i;
              end;
          end;
    //pivotage

      pivo:=StrToFloat(sgmat.cells[r,s]);
          for j:=0 to sgMat.ColCount-1 do
            begin
              sgmat.cells[j,s]:=FloatToStr(StrToFloat(sgmat.cells[j,s])/pivo);
            end;

          for i:=0 to sgMat.RowCount-1 do
          begin
            if (i<>s) then
              begin
              b:=StrToFloat(sgmat.cells[r,i]);
              for j:=0 to sgMat.ColCount-1 do
                  begin
                     a:=StrToFloat(sgmat.cells[j,i]);
                     c:=StrToFloat(sgmat.cells[j,s]);
                     z:=a-(b*c);
                  sgmat.cells[j,i]:=FloatToStr(z);
                  end;
              end;
          end;
        end;
      end;
    //fin du pivotage

//********************* fin du simplexe***************************
  Panel2.Visible:=true;
  BitBtn1.Enabled:=false;
  Button10.Enabled:=true;
  Button4.Enabled:=false;
  Button9.Enabled:=false;
  Button2.Enabled:=false;
if (existe=false)and(opt=false) then
        begin
          ShowMessage('Y a pas de solution !!');
          BitBtn1.Enabled:=true;
          Button10.Enabled:=false;
          Panel2.Visible:=true;
          btValMat.Enabled:=false;
          Button9.Enabled:=false;
          Button2.Enabled:=false;
          Edit4.Enabled:=false;
          Label13.Visible:=true;
          Button4.Enabled:=false;
        end;
   if opt=true then
     begin
      Panel2.Visible:=true;
      btValMat.Enabled:=false;
      Button9.Enabled:=false;
      Button4.Enabled:=false;
      Button2.Enabled:=false;
      z:=strtofloat(sgMat.Cells[sgMat.colcount-1,sgMat.rowcount-1]);
      z:=-z;
      Edit4.text:=floattostr(z);
      Label13.Visible:=false;
      Button10.Enabled:=false;
      BitBtn1.Enabled:=true;
   end;








    end;

End;

procedure TForm1.Edit1Enter(Sender: TObject);
begin
Label6.Visible:=true;

end;

procedure TForm1.Edit2Enter(Sender: TObject);
begin
Label7.Visible:=true;
end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
Label6.Visible:=false;
if (Edit1.Text='')or (Edit1.Text='0')or (Edit1.Text='1') then Edit1.Text:='2';
end;

procedure TForm1.Edit2Exit(Sender: TObject);
begin
Label7.Visible:=false;
if (Edit2.Text='') or (Edit2.Text='0')or (Edit2.Text='1') then Edit2.Text:='2';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
home.Visible:=false;
GroupBox1.Visible:=true;
Fermer1.Enabled:=true;
edit3.Enabled:=true;
end;

procedure TForm1.Noveauprogram1Click(Sender: TObject);
var i,j: integer;
begin
Noveauprogram1.Enabled:=false;
edit3.Enabled:=true;
Fichier1.Visible:=false;
Panel1.Visible:=false;
GroupBox1.Visible:=true;
home.Visible:=false;
Fermer1.Enabled:=true;
Edit1.Clear;
Edit2.Clear;
for j := 0 to sgC.colcount-1 do sgC.cells[j,0] := '';
for i := 0 to sgA.rowcount-1 do
  begin
  for j := 0 to sgA.colcount-1 do
    sgA.cells[j,i] := '';
  end;
end;

procedure TForm1.Fermer1Click(Sender: TObject);
var i,j:integer ;
begin

if messageDlg('Voulez vous fermer le courant programme linéaire ?',mtconfirmation,[mbyes,mbno],0)=mryes then
begin
Noveauprogram1.Enabled:=true;
edit3.Enabled:=false;
edit3.Visible:=true;
Fichier1.Visible:=false;
Panel1.Visible:=false;
GroupBox1.Visible:=false;
home.Visible:=true;
Fermer1.Enabled:=false;
Edit1.Clear;
Edit2.Clear;
for j := 0 to sgC.colcount-1 do sgC.cells[j,0] := '';

for i := 0 to sgA.rowcount-1 do
  begin
  for j := 0 to sgA.colcount-1 do
    sgA.cells[j,i] := '';
  end;
          BitBtn1.Enabled:=false;
          Button10.Enabled:=false;
          Panel2.Visible:=false;
          btValMat.Enabled:=true;
          Button9.Enabled:=false;
          Button2.Enabled:=false;
          Edit4.Enabled:=false;
          Label13.Visible:=true;
          Button4.Enabled:=false;
          Panel2.Visible:=false;
end;






end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
if messageDlg('Voulez vous quitter le programme?',mtconfirmation,[mbyes,mbno],0)=mryes then close;
end;

procedure TForm1.btValMatClick(Sender: TObject);
var
i,j:integer;
boolC,boolA,boolCe,boolAe:boolean;
begin
boolC:=True;
boolA:=True;
boolCe:=True;
boolAe:=True;
i:=0;
j:=0;
while (i<sgC.ColCount) and(boolc=true)and (boolCe=true) do
  begin
  if (sgC.Cells[i,0]='') then boolc:=false
  else if(sgC.Cells[i,0]=',') then  boolCe:=false
  else
  begin
  try
  strToFloat(sgC.Cells[i,0]);
  except
  on EConvertError do  boolCe:=false;
  end;
  end;
  i:=i+1;
  end;




 while (j<sgA.ColCount) and (boolA=true) and (boolAe=true) do
        begin
        i:=0;
        if (j<>sgA.ColCount-2)then
          begin
          while (i<sgA.RowCount)and (boolA=true) and(boolAe=true) do
          begin
          if (sgA.Cells[j,i]='') then
          boolA:=false
          else if(sgA.Cells[j,i]=',') then boolAe:=false
          else
            begin
            try
            strToFloat(sgA.Cells[j,i]);
            except
            on EConvertError do  boolAe:=false;
            end;
            end;
          i:=i+1;

          end;
          end;
  j:=j+1;
  end;
//Affichage de messages d'erreurs si les matrices ne sont pas correctement remplis.

if (boolCe=false) then MessageDlg('Une ou plusieurs valeurs entrées dans la fonction objectif sont incorrectes!',mtwarning,[mbok],0);

if (boolC=false) then MessageDlg('Toutes les cases de la fonction objectif doivent être remplies',mtwarning,[mbok],0);

if (boolAe=False) then MessageDlg('Une ou plusieurs valeurs entrées dans la matrice des contraintes sont incorrectes!',mtwarning,[mbok],0);
if (boolA=false) then MessageDlg('Toutes les cases de la matrice doivent être remplies',mtwarning,[mbok],0);

if (boolC=true) and (boolA=true) and (boolCe=true) and (boolAe=true) then
  begin
      fichier1.Enabled:=false;
      Label5.Visible:=true;
      sgMat.Visible:=true;
      Button9.Enabled:=true;
      btValMat.Enabled:=false;
      Button4.Enabled:=true;
      sgC.Enabled:=false;
      sgA.Enabled:=false;

//**************** tableau de pivotage *************************
//taille du tableau de pivotage
  sgMat.RowCount:=strToInt(Edit2.Text)+1;
  sgMat.ColCount:=sgA.ColCount+strToInt(Edit2.Text)-1;
  sgMat.Width:=sgMat.DefaultColWidth*sgMat.ColCount+20;
  sgmat.Height:=sgMat.DefaultRowHeight*sgMat.RowCount+20;

//ecrire la matrice a et le vecteur c
  for i:=0 to sgMat.RowCount-1 do
    begin
      if (i<sgA.RowCount) then
          for j:=0 to StrToInt(Edit1.text) do sgMat.Cells[j,i]:=sgA.Cells[j,i]
    else if(i=sgMat.RowCount-1) then
          sgMat.Rows[i]:=sgC.Rows[0];
    end;

//écrire le vecteur b
  sgMat.Cols[sgMat.ColCount-1]:=sgA.Cols[sgA.ColCount-1];
  sgMat.Cells[sgMat.ColCount-1,sgMat.RowCount-1]:='0';

//ajouter les variables d'écarts
  for j:=StrToInt(Edit1.text) to sgMat.ColCount-2do
    begin
      for i:=0 to sgMat.RowCount-1 do
        begin
          if (j=i+StrToInt(Edit1.text)) then
              sgMat.Cells[j,i]:='1'
          else
              sgMat.Cells[j,i]:='0';
        end;
    end;
  sgMat.Cells[sgMat.RowCount-1,sgMat.ColCount-1]:='0';
//********************* fin d'écriture du tableau ****************

//********************* fin d'écriture du tableau ****************


      end;

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  fichier1.Enabled:=true;
  Label5.Visible:=false;
  sgMat.Visible:=false;
  Button4.Enabled:=false;
  btValMat.Enabled:=true;
  Button9.Enabled:=false;
  sgC.Enabled:=true;
  sgA.Enabled:=true;
end;

procedure TForm1.Nbdevariable1Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.Nbdecontrainte1Click(Sender: TObject);
begin
  Edit2.Clear;
end;

procedure TForm1.vidertous1Click(Sender: TObject);
begin
  Edit2.Clear;
  Edit1.Clear;
end;

procedure TForm1.levecteurC1Click(Sender: TObject);
var j:integer;
begin
  for j:= 0 to sgC.colcount-1 do sgC.cells[j,0] := '';
end;

procedure TForm1.lamatriceA1Click(Sender: TObject);
var i,j:integer;
begin
for i := 0 to sgA.rowcount-1 do
  begin
  for j := 0 to sgA.colcount-3 do
    sgA.cells[j,i] := '';
  end;
end;

procedure TForm1.levecteurB1Click(Sender: TObject);
var i:integer;
begin
for i := 0 to sgA.rowcount-1 do
    sgA.cells[sgA.colcount-1,i] := '';

end;

procedure TForm1.Vidertous2Click(Sender: TObject);
var i,j:integer;
begin
for j:= 0 to sgC.colcount-1 do sgC.cells[j,0] := '';

for i := 0 to sgA.rowcount-1 do
  begin
  for j := 0 to sgA.colcount-3 do
    sgA.cells[j,i] := '';
  end;

for i := 0 to sgA.rowcount-1 do
    sgA.cells[sgA.colcount-1,i] := '';

end;

procedure TForm1.sgCExit(Sender: TObject);
var i:integer;
    verOk:boolean;
begin
verOk:=true;
for i:=0 to sgC.colcount-1 do
    if (sgC.Cells[i,0]='') then verOk:=false;
if verOk=false then
      begin
      Label9.Caption:='Le vecteur C contient des case vides';
      Label9.Font.Color:=clred;
      end
  else
      begin
          Label9.Caption:='Vecteur C valide';
          Label9.Font.Color:=clLime;
      end;

end;

procedure TForm1.sgAExit(Sender: TObject);
var i,j:integer;
    verOk:boolean;
begin
verOk:=true;
  for j:=0 to sgA.colcount-1 do
    begin
    for i:=0 to sgA.RowCount-1 do
      begin
        if (sgA.Cells[j,i]='') then verOk:=false;
        end;
    end;

if verOk=false then
      begin
      Label10.Caption:='La matrice A contient des case vides';
      Label10.Font.Color:=clred;
      end
  else
      begin
          Label10.Caption:='Matrice A valide';
          Label10.Font.Color:=clLime;
      end;

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var j,i:integer;
begin
Noveauprogram1.Enabled:=true;
edit3.Enabled:=false;
edit3.Visible:=true;
Fichier1.Visible:=false;
Panel1.Visible:=false;
GroupBox1.Visible:=false;
home.Visible:=true;
Fermer1.Enabled:=false;
Edit1.Clear;
Edit2.Clear;
for j := 0 to sgC.colcount-1 do sgC.cells[j,0] := '';

for i := 0 to sgA.rowcount-1 do
  begin
  for j := 0 to sgA.colcount-1 do
    sgA.cells[j,i] := '';
  end;
          BitBtn1.Enabled:=false;
          Button10.Enabled:=false;
          Panel2.Visible:=false;
          btValMat.Enabled:=true;
          Button9.Enabled:=false;
          Button2.Enabled:=false;
          Edit4.Enabled:=false;
          Label13.Visible:=true;
          Button4.Enabled:=false;
          Panel2.Visible:=false;
          Label5.Visible:=false;
          sgMat.Visible:=false;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
form2.show;
//ShowMessage(' Jokers Team '#13' 200600003776 BOUSBAA Imad Eddine '#13' 200600002560 BENGHEZAL Mamoun Omar '#13' 520052652   REGGANE Lilia');
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
ShowMessage('Ce programme donne le résultat d''un programme linéaire de type:'#13'Max(Z)=C*X'#13'A*X<=B');
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
ShowMessage('L''algorithme du simplexe de George Dantzig est une technique pour '#13'les problèmes de programmation linéaire.'#13'Ainsi, étant donné un ensemble d''inégalités linéaires sur n variables réelles, l''algorithme permet de  maximiser une fonction objectif linéaire');
end;

end.


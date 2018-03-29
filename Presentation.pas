unit Presentation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm2 = class(TForm)
    lbNom: TLabel;
    lbPrenom: TLabel;
    lbMatricule: TLabel;
    lbBeng: TLabel;
    lbMob: TLabel;
    lbNumMatricule: TLabel;
    lbSpecialite: TLabel;
    lbSpec2MIR: TLabel;
    PopupMenu1: TPopupMenu;
    Quitter1: TMenuItem;
    procedure Quitter1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Quitter1Click(Sender: TObject);
begin
if messageDlg('Voulez vous quitter la page de présentation?',mtconfirmation,[mbyes,mbno],0)=mryes then form2.close;
end;

end.

unit MainForm;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
    TRecognizerForm = class(TForm)
        Memo1: TMemo;
        Memo2: TMemo;
        Button: TButton;
        procedure ButtonClick(Sender: TObject);
        procedure Memo1Change(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    RecognizerForm: TRecognizerForm;

implementation

{$R *.dfm}

procedure TRecognizerForm.ButtonClick(Sender: TObject);
var
    i, Index: integer;
    MyText, ResultText, AStr, RStr, BigAStr, BigRStr: String;
begin
    MyText := Memo1.Text;
    ResultText := '';
    AStr := 'qwertyuiop[]asdfghjkl;"zxcvbnm,.QWERTYUIOP[]ASDFGHJKL;"ZXCVBNM,.';
    RStr := 'йцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ';
    for i := 1 to High(MyText) do
    begin
        if MyText[i] in ['a' .. 'z', 'A' .. 'Z', ';', '.', ',', '[', ']', '"']
        then
        begin
            Index := Pos(MyText[i], AStr);
            ResultText := ResultText + RStr[Index];
        end
        else if (ord(MyText[i]) >= 1040) and (ord(MyText[i]) <= 1103) then
        begin
            Index := Pos(MyText[i], RStr);
            ResultText := ResultText + AStr[Index];
        end
        else
            ResultText := ResultText + MyText[i];
    end;
    Memo2.Text := ResultText;
end;

procedure TRecognizerForm.Memo1Change(Sender: TObject);
begin
    Memo2.Text := '';
end;

end.

unit JuBing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm11 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

procedure DaYinLook;
var
  JuBing: HWND;
begin

  while True do //��̨һֱ����
  begin
    Sleep(500);
    JuBing := FindWindow(nil, '��ӡ');
    if JuBing <> 0 then
    begin
      Sleep(100);
      //ShowMessage('�Ѿ��ҵ�');
      PostMessage(JuBing, WM_KEYDOWN, 13, 0);    //���������Ľ��̷��ͻس���
      Continue;
    end
    else
      Continue;
  end;
end;

procedure TForm11.Button1Click(Sender: TObject);
begin

  TThread.CreateAnonymousThread(DaYinLook).Start;    //���������߳�

end;

procedure TForm11.FormCreate(Sender: TObject);
begin

  TThread.CreateAnonymousThread(DaYinLook).Start;    //���������߳�
end;

end.


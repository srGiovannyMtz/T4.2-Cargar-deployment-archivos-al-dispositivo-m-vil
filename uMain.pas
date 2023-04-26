unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.ListBox;

type
  TfrmMain = class(TForm)
    pnlHeader: TPanel;
    imgFile: TImage;
    btnOpenImage: TButton;
    btnClose: TButton;
    cboxImgSelection: TComboBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure btnOpenImageClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure cboxImgSelectionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  imageName, imagePath: string;

implementation

{$R *.fmx}

// para la clase TPath
uses System.IOUtils;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMain.btnOpenImageClick(Sender: TObject);
begin
  // este método carga la imagen en el componente TImage
  imgFile.Bitmap.LoadFromFile(imagePath + PathDelim + imageName);
end;

procedure TfrmMain.cboxImgSelectionChange(Sender: TObject);
begin
imageName:= cboxImgSelection.Selected.Text;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  // debe ser el mismo nombre del archivo del paso 7
  imageName := 'img1.png';
  imagePath := TPath.GetDocumentsPath;
end;

end.

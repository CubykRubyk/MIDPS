//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "lab1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"

static int i = 0;

TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
    Edit1->Text="0";
    Label1->Caption = "Incrementare decrementare contor";
    Label2->Caption = "";
    Edit1->Enabled = false;
    
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
      Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{

        AnsiString lab;
        lab.sprintf("%d creste in %d ",i,i+1);
        i++;
     Edit1->Text = i;
     Label2->Caption = lab;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
         AnsiString lab;
        lab.sprintf("%d scade in %d ",i,i-1);
    i--;
  Edit1->Text = i;
  Label2->Caption = lab;

}
//---------------------------------------------------------------------------

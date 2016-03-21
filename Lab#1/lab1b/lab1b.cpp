//---------------------------------------------------------------------------

#include <vcl.h>
#include <stdio.h>
#include "dos.h"

#pragma hdrstop

#include "lab1b.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
        struct date d;
        struct time t;
        int i;
        int secunde = 0, minute = 0, ore = 0;

TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)

{
        Timer2->Enabled = false;
        Button2->Enabled = false;
        Edit1->Text = "";
        Edit2->Text = "";
        Label1->Caption = "Realizarea unui cronometru in C++ Builder" ;
        Label2->Caption = "C++ Builder Cronometru"  ;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
        Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
        char buff[20];
        getdate(&d);
        gettime(&t);
        sprintf(buff, "%02d-%02d-%4d %02d:%02d:%02d",d.da_day,d.da_mon,d.da_year,
                t.ti_hour,t.ti_min,t.ti_sec);

        Edit2->Text = buff;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
        Button1->Enabled = false;
        Button3->Enabled = false;
        Button2->Enabled = true;
        Timer2->Enabled = true;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
        char buff[20];
        i++;

              if (i == 1)
                {
                        i = 0;
                        if (secunde < 60)
                                ++secunde;
                        if (secunde == 60)
                            {
                                ++minute;
                                secunde = 0;
                            }
                        if (minute == 60)
                            {
                                ++ore;
                                minute = 0;
                            }
                        if (ore == 24)
                                ore = 0;
                }

        sprintf(buff, "%02d ore %02d min %02d sec", ore, minute, secunde);

        Edit1->Text =  buff;



}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
        Timer2->Enabled = false;
        Button2->Enabled = false;
        Button1->Enabled = true;
        Button3->Enabled = true;

}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button3Click(TObject *Sender)
{
        char buff[20];
        secunde = 0;
        minute = 0;
        ore = 0;

        sprintf(buff, "%02d ore %02d min %02d sec", ore, minute, secunde);
        Edit1->Text =  buff;

}
//---------------------------------------------------------------------------

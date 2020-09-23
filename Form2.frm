VERSION 5.00
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   Caption         =   "Michael Belenky"
   ClientHeight    =   3810
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8595
   LinkTopic       =   "Form2"
   ScaleHeight     =   3810
   ScaleWidth      =   8595
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   480
      Top             =   3000
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   495
      Left            =   3240
      TabIndex        =   1
      Top             =   3000
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFC0C0&
      Caption         =   $"Form2.frx":0000
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   735
      Left            =   480
      TabIndex        =   0
      Top             =   960
      Width           =   7815
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me

End Sub

Private Sub Timer1_Timer()
Label1.BackColor = RGB(0, 0, Rnd * 255)

End Sub

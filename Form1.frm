VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Advanced Task Manager"
   ClientHeight    =   7275
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   10425
   ControlBox      =   0   'False
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7275
   ScaleWidth      =   10425
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Update"
      Height          =   255
      Left            =   5640
      TabIndex        =   8
      Top             =   720
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Minimize to tray"
      Height          =   255
      Left            =   3360
      TabIndex        =   7
      Top             =   720
      Width           =   2055
   End
   Begin Project1.TrayArea tIcon 
      Left            =   6720
      Top             =   6600
      _ExtentX        =   900
      _ExtentY        =   900
      Icon            =   "Form1.frx":0442
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   6
      Top             =   7020
      Width           =   10425
      _ExtentX        =   18389
      _ExtentY        =   450
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   2
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   3528
            MinWidth        =   3528
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   177
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.ComboBox Combo1 
      BackColor       =   &H00E0E0E0&
      ForeColor       =   &H00000000&
      Height          =   315
      Left            =   120
      TabIndex        =   5
      Text            =   "Loaded files(s)"
      Top             =   720
      Width           =   3015
   End
   Begin MSComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   570
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   10425
      _ExtentX        =   18389
      _ExtentY        =   1005
      ButtonWidth     =   1773
      ButtonHeight    =   953
      Appearance      =   1
      Style           =   1
      ImageList       =   "ImageList1"
      DisabledImageList=   "ImageList1"
      HotImageList    =   "ImageList1"
      _Version        =   393216
      BeginProperty Buttons {66833FE8-8583-11D1-B16A-00C0F0283628} 
         NumButtons      =   5
         BeginProperty Button1 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Run..."
            Key             =   "run"
            ImageIndex      =   1
         EndProperty
         BeginProperty Button2 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Close"
            Key             =   "close"
            ImageIndex      =   8
         EndProperty
         BeginProperty Button3 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button4 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Style           =   3
         EndProperty
         BeginProperty Button5 {66833FEA-8583-11D1-B16A-00C0F0283628} 
            Caption         =   "Shut down..."
            Key             =   "shut"
            ImageIndex      =   7
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ProgressBar pb1 
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   6480
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   450
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   9360
      Top             =   6120
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   600
      Top             =   2880
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   8
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":0894
            Key             =   "task"
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":3048
            Key             =   "verinfo"
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":349C
            Key             =   "startime"
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":3BF0
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":63A4
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":8B58
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":B30C
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "Form1.frx":DAC0
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   2000
      Left            =   6960
      Top             =   5040
   End
   Begin MSComctlLib.ListView Windowlist 
      Height          =   5175
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Visible         =   0   'False
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   9128
      View            =   3
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      PictureAlignment=   1
      _Version        =   393217
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ColHdrIcons     =   "ImageList1"
      ForeColor       =   -2147483624
      BackColor       =   8421376
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   1
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Window"
         Object.Width           =   7056
      EndProperty
   End
   Begin MSComctlLib.ListView Tasklist 
      Height          =   5175
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   9128
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      PictureAlignment=   1
      _Version        =   393217
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ColHdrIcons     =   "ImageList1"
      ForeColor       =   -2147483624
      BackColor       =   8421376
      BorderStyle     =   1
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   3
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Task"
         Object.Width           =   7056
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Version"
         Object.Width           =   2540
      EndProperty
      BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   2
         Text            =   "No. of Threads"
         Object.Width           =   2540
      EndProperty
      Picture         =   "Form1.frx":DF14
   End
   Begin VB.Label Label1 
      Caption         =   "CPU usage:"
      ForeColor       =   &H00C00000&
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   6240
      Width           =   1575
   End
   Begin VB.Menu file 
      Caption         =   "File"
      NegotiatePosition=   2  'Middle
      Begin VB.Menu min 
         Caption         =   "Minimize to system tray"
      End
      Begin VB.Menu ex 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu about 
      Caption         =   "About..."
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Public User_name As String
Const REG_DWORD = 4
Const HKEY_DYN_DATA = &H80000006

Private Declare Function GetWindow Lib "user32" _
(ByVal hwnd As Long, ByVal wCmd As Long) As Long
Private Declare Function GetParent Lib "user32" _
(ByVal hwnd As Long) As Long
Private Declare Function GetWindowTextLength Lib _
"user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long
Private Declare Function GetWindowText Lib "user32" _
Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal _
lpString As String, ByVal cch As Long) As Long

Const GW_HWNDFIRST = 0
Const GW_HWNDNEXT = 2

Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function PostMessage Lib "user32" Alias "PostMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function RegQueryValueEx Lib "advapi32.dll" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
Private Declare Function RegOpenKey Lib "advapi32.dll" Alias "RegOpenKeyA" (ByVal hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Private Declare Sub ExitProcess Lib "kernel32" (ByVal uExitCode As Long)
Private Const VER_PLATFORM_WIN32s = 0
Private Const VER_PLATFORM_WIN32_WINDOWS = 1
Private Const VER_PLATFORM_WIN32_NT = 2

'Private Type OSVERSIONINFO
'    dwOSVersionInfoSize As Long
 '   dwMajorVersion      As Long
  '  dwMinorVersion      As Long
  '  dwBuildNumber       As Long
   ' dwPlatformId        As Long
   ' szCSDVersion        As String * 128
'End Type

Private Declare Function GetUserName Lib "advapi32.dll" Alias "GetUserNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Private Type MEMORYSTATUS
    dwLength        As Long ' sizeof(MEMORYSTATUS)
    dwMemoryLoad    As Long ' percent of memory in use
    dwTotalPhys     As Long ' bytes of physical memory
    dwAvailPhys     As Long ' free physical memory bytes
    dwTotalPageFile As Long ' bytes of paging file
    dwAvailPageFile As Long ' free bytes of paging file
    dwTotalVirtual  As Long ' user bytes of address space
    dwAvailVirtual  As Long ' free user bytes
End Type

Private Declare Sub GlobalMemoryStatus Lib "kernel32" (lpBuffer As MEMORYSTATUS)

'Private Declare Function GetVersionEx Lib "kernel32" Alias "GetVersionExA" (lpVersionInformation As OSVERSIONINFO) As Long

Private Const TH32CS_SNAPPROCESS As Long = 2&
Private Const MAX_PATH As Integer = 260

Private Type PROCESSENTRY32
  dwSize As Long
  cntUsage As Long
  th32ProcessID As Long
  th32DefaultHeapID As Long
  th32ModuleID As Long
  cntThreads As Long
  th32ParentProcessID As Long
  pcPriClassBase As Long
  dwFlags As Long
  szExeFile As String * MAX_PATH
End Type

Private Declare Function CreateToolhelpSnapshot Lib "kernel32" _
Alias "CreateToolhelp32Snapshot" _
(ByVal lFlags As Long, ByVal lProcessID As Long) As Long

Private Declare Function ProcessFirst Lib "kernel32" _
Alias "Process32First" _
(ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long

Private Declare Function ProcessNext Lib "kernel32" _
Alias "Process32Next" _
(ByVal hSnapShot As Long, uProcess As PROCESSENTRY32) As Long

Private Declare Sub CloseHandle Lib "kernel32" _
(ByVal hPass As Long)
Private Declare Function TerminateProcess Lib "kernel32" (ByVal hProcess As Long, ByVal uExitCode As Long) As Long
Private Type VS_FIXEDFILEINFO
   dwSignature As Long
   dwStrucVersionl As Integer     '  e.g. = &h0000 = 0
   dwStrucVersionh As Integer     '  e.g. = &h0042 = .42
   dwFileVersionMSl As Integer    '  e.g. = &h0003 = 3
   dwFileVersionMSh As Integer    '  e.g. = &h0075 = .75
   dwFileVersionLSl As Integer    '  e.g. = &h0000 = 0
   dwFileVersionLSh As Integer    '  e.g. = &h0031 = .31
   dwProductVersionMSl As Integer '  e.g. = &h0003 = 3
   dwProductVersionMSh As Integer '  e.g. = &h0010 = .1
   dwProductVersionLSl As Integer '  e.g. = &h0000 = 0
   dwProductVersionLSh As Integer '  e.g. = &h0031 = .31
   dwFileFlagsMask As Long        '  = &h3F for version "0.42"
   dwFileFlags As Long            '  e.g. VFF_DEBUG Or VFF_PRERELEASE
   dwFileOS As Long               '  e.g. VOS_DOS_WINDOWS16
   dwFileType As Long             '  e.g. VFT_DRIVER
   dwFileSubtype As Long          '  e.g. VFT2_DRV_KEYBOARD
   dwFileDateMS As Long           '  e.g. 0
   dwFileDateLS As Long           '  e.g. 0
End Type
Private Declare Function SHShutDownDialog Lib "shell32" Alias "#60" (ByVal YourGuess As Long) As Long
Const shrdNoMRUString = &H2    '2nd bit is set
Private Declare Function SHRunDialog Lib "shell32" Alias "#61" (ByVal hOwner As Long, ByVal Unknown1 As Long, ByVal Unknown2 As Long, ByVal szTitle As String, ByVal szPrompt As String, ByVal uFlags As Long) As Long
Private Declare Function GetFileVersionInfo Lib "Version.dll" Alias "GetFileVersionInfoA" (ByVal lptstrFilename As String, ByVal dwhandle As Long, ByVal dwlen As Long, lpData As Any) As Long
Private Declare Function GetFileVersionInfoSize Lib "Version.dll" Alias "GetFileVersionInfoSizeA" (ByVal lptstrFilename As String, lpdwHandle As Long) As Long
Private Declare Function VerQueryValue Lib "Version.dll" Alias "VerQueryValueA" (pBlock As Any, ByVal lpSubBlock As String, lplpBuffer As Any, puLen As Long) As Long
Private Declare Sub MoveMemory Lib "kernel32" Alias "RtlMoveMemory" (dest As Any, ByVal Source As Long, ByVal Length As Long)
Dim Filename As String, Directory As String, FullFileName As String
Dim StrucVer As String, FileVer As String, ProdVer As String
Dim FileFlags As String, FileOS As String, FileType As String, FileSubType As String
Private Sub DisplayVerInfo() ' Used Api guide ( www.allapi.com)
   Dim rc As Long, lDummy As Long, sBuffer() As Byte
   Dim lBufferLen As Long, lVerPointer As Long, udtVerBuffer As VS_FIXEDFILEINFO
   Dim lVerbufferLen As Long

   '*** Get size ****
   lBufferLen = GetFileVersionInfoSize(FullFileName, lDummy) ' if 0 is returned then there's no info
   If lBufferLen < 1 Then
    
      Exit Sub
   End If

   '**** Store info to udtVerBuffer struct ****
   ReDim sBuffer(lBufferLen)
   rc = GetFileVersionInfo(FullFileName, 0&, lBufferLen, sBuffer(0))
   rc = VerQueryValue(sBuffer(0), "\", lVerPointer, lVerbufferLen)
   MoveMemory udtVerBuffer, lVerPointer, Len(udtVerBuffer)

 
   '**** Determine File Version number ****
   FileVer = Format$(udtVerBuffer.dwFileVersionMSh) & "." & Format$(udtVerBuffer.dwFileVersionMSl) & "." & Format$(udtVerBuffer.dwFileVersionLSh) & "." & Format$(udtVerBuffer.dwFileVersionLSl)

   '**** Determine Product Version number ****
   ProdVer = Format$(udtVerBuffer.dwProductVersionMSh) & "." & Format$(udtVerBuffer.dwProductVersionMSl) & "." & Format$(udtVerBuffer.dwProductVersionLSh) & "." & Format$(udtVerBuffer.dwProductVersionLSl)

End Sub


Private Sub Check1_Click()


End Sub


Sub fillwindowList()
Windowlist.ListItems.Clear

Dim CurrWnd As Long
Dim Length As Long
Dim TaskName As String
Dim parent As Long


CurrWnd = GetWindow(Form1.hwnd, GW_HWNDFIRST)

While CurrWnd <> 0
parent = GetParent(CurrWnd)
Length = GetWindowTextLength(CurrWnd)
TaskName = Space$(Length + 1)
Length = GetWindowText(CurrWnd, TaskName, Length + 1)
TaskName = Left$(TaskName, Len(TaskName) - 1)

If Length > 0 Then
'    If TaskName <> Me.Caption Then
     '   If TaskName <> "taskmon" Then
   Windowlist.ListItems.Add , , TaskName, 5, 5
   
  '      End If
  '  End If
End If
CurrWnd = GetWindow(CurrWnd, GW_HWNDNEXT)
DoEvents

Wend

End Sub





Private Sub about_Click()
Form2.Show

End Sub

Private Sub Combo1_Click()
If Combo1.Text = "Open window(s)" Then
Listswitch Tasklist

Exit Sub
End If
Listswitch Windowlist
End Sub

Private Sub Combo1_Scroll()
If Combo1.Text = "Open window(s)" Then
Listswitch Tasklist
Else: Listswitch (Windowlist)
End If
End Sub

Private Sub Command1_Click()
Form1.Hide
tIcon.Visible = True
tIcon.ToolTip = "One Click To Activate Task Manager -  Takes a few seconds"
End Sub

Private Sub Command2_Click()
Call Timer1_Timer
Call fillwindowList
End Sub

Private Sub ex_Click()
' Quit
tIcon.Visible = False
End
End Sub

Private Sub Form_Load()
On Error GoTo erro
Tasklist.Picture = LoadPicture()
Combo1.AddItem "Loaded file(s)"
Combo1.AddItem "Open window(s)"
Dim rv, x As Long
' get user name
User_name = String(100, Chr$(0))
GetUserName User_name, 100
User_name = Left$(User_name, InStr(User_name, Chr$(0)) - 1)
StatusBar1.Panels(2).Text = "User : " & User_name


Tasklist.ListItems.Clear
' take snap shot of loaded files
Dim nstr As String
Dim hSnapShot As Long
Dim uProcess As PROCESSENTRY32
Dim r As Long
'List.AddItem " Running Tasks: "
hSnapShot = CreateToolhelpSnapshot(TH32CS_SNAPPROCESS, 0&)

If hSnapShot = 0 Then
  Exit Sub
End If

uProcess.dwSize = Len(uProcess)

r = ProcessFirst(hSnapShot, uProcess)

Do While r
 
 nstr = uProcess.szExeFile

 Tasklist.ListItems.Add , , nstr, 1, 1
FullFileName = nstr
DisplayVerInfo

 Tasklist.ListItems.Item(Tasklist.ListItems.Count).ListSubItems.Add , , FileVer, 2, ""
 Tasklist.ListItems.Item(Tasklist.ListItems.Count).ListSubItems.Add , , uProcess.cntThreads, 4, ""
  r = ProcessNext(hSnapShot, uProcess)

Loop ' Do all the processs

Call CloseHandle(hSnapShot)
'*-----------------------------------CPU USAGE REG VAL'S INIT -----------------------------*
    Dim lData As Long
    Dim lType As Long
    Dim lSize As Long
    Dim hKey As Long
    Dim Qry As String
    
    Qry = RegOpenKey(HKEY_DYN_DATA, "PerfStats\StartStat", hKey)
    
    If Qry <> 0 Then
            MsgBox "Could not open registery!"
        End
    End If
    
    lType = REG_DWORD
    lSize = 4
    
    Qry = RegQueryValueEx(hKey, "KERNEL\CPUUsage", 0, lType, lData, lSize)
    Qry = RegCloseKey(hKey)
Exit Sub

erro:
MsgBox Err.Description
End Sub


Private Sub min_Click()
Form1.Hide
tIcon.Visible = True

End Sub

Private Sub tIcon_MouseDown(Button As Integer)
'--  UPDATE & SHOW FORM
Call Timer1_Timer
Call fillwindowList
Form1.Show

End Sub

Private Sub Timer1_Timer()
Tasklist.ListItems.Clear
Dim nstr As String
Dim hSnapShot As Long
Dim uProcess As PROCESSENTRY32
Dim r As Long

hSnapShot = CreateToolhelpSnapshot(TH32CS_SNAPPROCESS, 0&)

If hSnapShot = 0 Then
  Exit Sub
End If

uProcess.dwSize = Len(uProcess)

r = ProcessFirst(hSnapShot, uProcess)

Do While r
 
 nstr = uProcess.szExeFile

 Tasklist.ListItems.Add , , nstr, 1, 1
FullFileName = nstr
DisplayVerInfo


 Tasklist.ListItems.Item(Tasklist.ListItems.Count).ListSubItems.Add , , FileVer, 2, ""
 Tasklist.ListItems.Item(Tasklist.ListItems.Count).ListSubItems.Add , , uProcess.cntThreads, 4, ""
  r = ProcessNext(hSnapShot, uProcess)

Loop

Call CloseHandle(hSnapShot)

End Sub

Private Sub Timer2_Timer()
 '--- needed for cpu usage - found it on PSC long ago
 Dim lData As Long
    Dim lType As Long
    Dim lSize As Long
    Dim hKey As Long
    Dim Qry As String
    Dim usg As Long
                  
    Qry = RegOpenKey(HKEY_DYN_DATA, "PerfStats\StatData", hKey)
                
    If Qry <> 0 Then
            MsgBox "Could not open registery!"
        End
    End If
                
    lType = REG_DWORD
    lSize = 4
                
    Qry = RegQueryValueEx(hKey, "KERNEL\CPUUsage", 0, lType, lData, lSize)
    
    usg = Int(lData)
         pb1.Max = 100
         pb1.Value = usg
         pb1.ToolTipText = "CPU usage : " & usg & "%"
Qry = RegCloseKey(hKey)

If Tasklist.Visible = True Then
StatusBar1.Panels(1).Text = Tasklist.ListItems.Count & " File(s) Loaded"
End If
If Windowlist.Visible = True Then
StatusBar1.Panels(1).Text = Windowlist.ListItems.Count & " Window(s) open"
End If

End Sub






Private Sub Toolbar1_ButtonClick(ByVal Button As MSComctlLib.Button)
If Button.Key = "shut" Then
SHShutDownDialog 0
End If
If Button.Key = "run" Then
SHRunDialog Form1.hwnd, 0, 0, Me.Caption & " - new task", "Enter the path: ", 0
End If
If Button.Key = "close" Then
Dim confirmation As VbMsgBoxResult
Dim winHwnd As Long
Dim RetVal As Long
If Windowlist.SelectedItem = "" Then Exit Sub

winHwnd = FindWindow(vbNullString, Windowlist.SelectedItem)

If winHwnd <> 0 Then
confirmation = MsgBox("Are you sure you would like to close the window : " & Windowlist.SelectedItem, vbCritical + vbYesNo, "Close Task")
If confirmation <> vbYes Then Exit Sub
RetVal = PostMessage(winHwnd, &H10, 0&, 0&)
Call fillwindowList
If RetVal = 0 Then
MsgBox "Error posting message."
End If
Else: MsgBox Windowlist.SelectedItem + " is not open."
End If
End If



End Sub

Public Function Listswitch(curlist As ListView)
If curlist.Name = "Tasklist" Then
Tasklist.Visible = False
Windowlist.Visible = True
Call fillwindowList
Else: Tasklist.Visible = True
Windowlist.Visible = False
End If
End Function

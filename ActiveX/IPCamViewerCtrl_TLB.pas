unit IPCamViewerCtrl_TLB;

// ************************************************************************ //
// AVERTISSEMENT
// -------
// Les types d�clar�s dans ce fichier ont �t� g�n�r�s � partir de donn�es lues
// depuis la biblioth�que de types. Si cette derni�re (via une autre biblioth�que de types
// s'y r�f�rant) est explicitement ou indirectement r�-import�e, ou la commande "Actualiser"
// de l'�diteur de biblioth�que de types est activ�e lors de la modification de la biblioth�que
// de types, le contenu de ce fichier sera r�g�n�r� et toutes les modifications
// manuellement apport�es seront perdues.
// ************************************************************************ //

// $Rev: 17244 $
// Fichier g�n�r� le 17/02/2011 18:13:20 depuis la biblioth�que de types ci-dessous.

// ************************************************************************  //
// Biblio. types : C:\Users\Yann\Documents\RAD Studio\Projets\AX\IPCamViewer (1)
// LIBID : {078BEFC3-BAB7-476B-810C-F687E48CB8EF}
// LCID : 0
// Fichier d'aide :
// Cha�ne d'aide :
// DepndLst :
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // L'unit� doit �tre compil�e sans pointeur � type contr�l�.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, StdVCL, Variants;

// *********************************************************************//
// GUIDS d�clar�s dans la biblioth�que de types. Pr�fixes utilis�s:
//   Biblioth�ques de types : LIBID_xxxx
//   CoClasses              : CLASS_xxxx
//   Interfaces DISP        : DIID_xxxx
//   Interfaces Non-DISP    : IID_xxxx
// *********************************************************************//
const
  // Versions mineure et majeure de la biblioth�que de types
  IPCamViewerCtrlMajorVersion = 1;
  IPCamViewerCtrlMinorVersion = 0;

  LIBID_IPCamViewerCtrl: TGUID = '{078BEFC3-BAB7-476B-810C-F687E48CB8EF}';

  IID_IIPCamViewerAx: TGUID = '{D340B454-B893-42D7-ABF0-CAE159CA52A1}';
  DIID_IIPCamViewerAxEvents: TGUID = '{45B46F66-FC40-4DC7-8BFC-5F7606C4C44B}';
  CLASS_IPCamViewerAx: TGUID = '{8FB3F136-96B6-44AC-80EE-BEF071923492}';

// *********************************************************************//
// D�claration d'�num�rations d�finies dans la biblioth�que de types
// *********************************************************************//
// Constantes pour enum TxAlignment
type
  TxAlignment = TOleEnum;
const
  taLeftJustify = $00000000;
  taRightJustify = $00000001;
  taCenter = $00000002;

// Constantes pour enum TxBevelCut
type
  TxBevelCut = TOleEnum;
const
  bvNone = $00000000;
  bvLowered = $00000001;
  bvRaised = $00000002;
  bvSpace = $00000003;

// Constantes pour enum TxBevelKind
type
  TxBevelKind = TOleEnum;
const
  bkNone = $00000000;
  bkTile = $00000001;
  bkSoft = $00000002;
  bkFlat = $00000003;

// Constantes pour enum TxBorderStyle
type
  TxBorderStyle = TOleEnum;
const
  bsNone = $00000000;
  bsSingle = $00000001;

// Constantes pour enum TxDragMode
type
  TxDragMode = TOleEnum;
const
  dmManual = $00000000;
  dmAutomatic = $00000001;

// Constantes pour enum TxVerticalAlignment
type
  TxVerticalAlignment = TOleEnum;
const
  taAlignTop = $00000000;
  taAlignBottom = $00000001;
  taVerticalCenter = $00000002;

// Constantes pour enum TxMouseButton
type
  TxMouseButton = TOleEnum;
const
  mbLeft = $00000000;
  mbRight = $00000001;
  mbMiddle = $00000002;

type

// *********************************************************************//
// D�claration Forward des types d�finis dans la biblioth�que de types
// *********************************************************************//
  IIPCamViewerAx = interface;
  IIPCamViewerAxDisp = dispinterface;
  IIPCamViewerAxEvents = dispinterface;

// *********************************************************************//
// D�claration de CoClasses d�finies dans la biblioth�que de types
// (REMARQUE: On affecte chaque CoClasse � son Interface par d�faut)
// *********************************************************************//
  IPCamViewerAx = IIPCamViewerAx;


// *********************************************************************//
// D�claration de structures, d'unions et d'alias.
// *********************************************************************//
  PPUserType1 = ^IFontDisp; {*}


// *********************************************************************//
// Interface :   IIPCamViewerAx
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {D340B454-B893-42D7-ABF0-CAE159CA52A1}
// *********************************************************************//
  IIPCamViewerAx = interface(IDispatch)
    ['{D340B454-B893-42D7-ABF0-CAE159CA52A1}']
    procedure Connect; safecall;
    procedure Disconnect; safecall;
    function Get_Host: WideString; safecall;
    procedure Set_Host(const Value: WideString); safecall;
    function Get_Alignment: TxAlignment; safecall;
    procedure Set_Alignment(Value: TxAlignment); safecall;
    function Get_AutoSize: WordBool; safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    function Get_BevelInner: TxBevelCut; safecall;
    procedure Set_BevelInner(Value: TxBevelCut); safecall;
    function Get_BevelKind: TxBevelKind; safecall;
    procedure Set_BevelKind(Value: TxBevelKind); safecall;
    function Get_BevelOuter: TxBevelCut; safecall;
    procedure Set_BevelOuter(Value: TxBevelCut); safecall;
    function Get_BorderStyle: TxBorderStyle; safecall;
    procedure Set_BorderStyle(Value: TxBorderStyle); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Color: OLE_COLOR; safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    function Get_Ctl3D: WordBool; safecall;
    procedure Set_Ctl3D(Value: WordBool); safecall;
    function Get_UseDockManager: WordBool; safecall;
    procedure Set_UseDockManager(Value: WordBool); safecall;
    function Get_DockSite: WordBool; safecall;
    procedure Set_DockSite(Value: WordBool); safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    function Get_DragCursor: Smallint; safecall;
    procedure Set_DragCursor(Value: Smallint); safecall;
    function Get_DragMode: TxDragMode; safecall;
    procedure Set_DragMode(Value: TxDragMode); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_FullRepaint: WordBool; safecall;
    procedure Set_FullRepaint(Value: WordBool); safecall;
    function Get_Font: IFontDisp; safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    function Get_Locked: WordBool; safecall;
    procedure Set_Locked(Value: WordBool); safecall;
    function Get_ParentBackground: WordBool; safecall;
    procedure Set_ParentBackground(Value: WordBool); safecall;
    function Get_ParentColor: WordBool; safecall;
    procedure Set_ParentColor(Value: WordBool); safecall;
    function Get_ParentCtl3D: WordBool; safecall;
    procedure Set_ParentCtl3D(Value: WordBool); safecall;
    function Get_ParentDoubleBuffered: WordBool; safecall;
    procedure Set_ParentDoubleBuffered(Value: WordBool); safecall;
    function Get_ShowCaption: WordBool; safecall;
    procedure Set_ShowCaption(Value: WordBool); safecall;
    function Get_VerticalAlignment: TxVerticalAlignment; safecall;
    procedure Set_VerticalAlignment(Value: TxVerticalAlignment); safecall;
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    procedure SetDesignVisible(Value: WordBool); safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_MouseInClient: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; safecall;
    procedure InitiateAction; safecall;
    function IsRightToLeft: WordBool; safecall;
    function UseRightToLeftReading: WordBool; safecall;
    function UseRightToLeftScrollBar: WordBool; safecall;
    function Get_ExplicitLeft: Integer; safecall;
    function Get_ExplicitTop: Integer; safecall;
    function Get_ExplicitWidth: Integer; safecall;
    function Get_ExplicitHeight: Integer; safecall;
    function Get_AlignWithMargins: WordBool; safecall;
    procedure Set_AlignWithMargins(Value: WordBool); safecall;
    function Get_ParentCustomHint: WordBool; safecall;
    procedure Set_ParentCustomHint(Value: WordBool); safecall;
    procedure SetSubComponent(IsSubComponent: WordBool); safecall;
    property Host: WideString read Get_Host write Set_Host;
    property Alignment: TxAlignment read Get_Alignment write Set_Alignment;
    property AutoSize: WordBool read Get_AutoSize write Set_AutoSize;
    property BevelInner: TxBevelCut read Get_BevelInner write Set_BevelInner;
    property BevelKind: TxBevelKind read Get_BevelKind write Set_BevelKind;
    property BevelOuter: TxBevelCut read Get_BevelOuter write Set_BevelOuter;
    property BorderStyle: TxBorderStyle read Get_BorderStyle write Set_BorderStyle;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Color: OLE_COLOR read Get_Color write Set_Color;
    property Ctl3D: WordBool read Get_Ctl3D write Set_Ctl3D;
    property UseDockManager: WordBool read Get_UseDockManager write Set_UseDockManager;
    property DockSite: WordBool read Get_DockSite write Set_DockSite;
    property DoubleBuffered: WordBool read Get_DoubleBuffered write Set_DoubleBuffered;
    property DragCursor: Smallint read Get_DragCursor write Set_DragCursor;
    property DragMode: TxDragMode read Get_DragMode write Set_DragMode;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property FullRepaint: WordBool read Get_FullRepaint write Set_FullRepaint;
    property Font: IFontDisp read Get_Font write Set_Font;
    property Locked: WordBool read Get_Locked write Set_Locked;
    property ParentBackground: WordBool read Get_ParentBackground write Set_ParentBackground;
    property ParentColor: WordBool read Get_ParentColor write Set_ParentColor;
    property ParentCtl3D: WordBool read Get_ParentCtl3D write Set_ParentCtl3D;
    property ParentDoubleBuffered: WordBool read Get_ParentDoubleBuffered write Set_ParentDoubleBuffered;
    property ShowCaption: WordBool read Get_ShowCaption write Set_ShowCaption;
    property VerticalAlignment: TxVerticalAlignment read Get_VerticalAlignment write Set_VerticalAlignment;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AlignDisabled: WordBool read Get_AlignDisabled;
    property MouseInClient: WordBool read Get_MouseInClient;
    property VisibleDockClientCount: Integer read Get_VisibleDockClientCount;
    property ExplicitLeft: Integer read Get_ExplicitLeft;
    property ExplicitTop: Integer read Get_ExplicitTop;
    property ExplicitWidth: Integer read Get_ExplicitWidth;
    property ExplicitHeight: Integer read Get_ExplicitHeight;
    property AlignWithMargins: WordBool read Get_AlignWithMargins write Set_AlignWithMargins;
    property ParentCustomHint: WordBool read Get_ParentCustomHint write Set_ParentCustomHint;
  end;

// *********************************************************************//
// DispIntf :    IIPCamViewerAxDisp
// Indicateurs : (4416) Dual OleAutomation Dispatchable
// GUID :        {D340B454-B893-42D7-ABF0-CAE159CA52A1}
// *********************************************************************//
  IIPCamViewerAxDisp = dispinterface
    ['{D340B454-B893-42D7-ABF0-CAE159CA52A1}']
    procedure Connect; dispid 201;
    procedure Disconnect; dispid 202;
    property Host: WideString dispid 203;
    property Alignment: TxAlignment dispid 204;
    property AutoSize: WordBool dispid 205;
    property BevelInner: TxBevelCut dispid 206;
    property BevelKind: TxBevelKind dispid 207;
    property BevelOuter: TxBevelCut dispid 208;
    property BorderStyle: TxBorderStyle dispid 209;
    property Caption: WideString dispid -518;
    property Color: OLE_COLOR dispid -501;
    property Ctl3D: WordBool dispid 210;
    property UseDockManager: WordBool dispid 211;
    property DockSite: WordBool dispid 212;
    property DoubleBuffered: WordBool dispid 213;
    property DragCursor: Smallint dispid 214;
    property DragMode: TxDragMode dispid 215;
    property Enabled: WordBool dispid -514;
    property FullRepaint: WordBool dispid 216;
    property Font: IFontDisp dispid -512;
    property Locked: WordBool dispid 217;
    property ParentBackground: WordBool dispid 218;
    property ParentColor: WordBool dispid 219;
    property ParentCtl3D: WordBool dispid 220;
    property ParentDoubleBuffered: WordBool dispid 221;
    property ShowCaption: WordBool dispid 222;
    property VerticalAlignment: TxVerticalAlignment dispid 223;
    property Visible: WordBool dispid 224;
    procedure SetDesignVisible(Value: WordBool); dispid 225;
    property AlignDisabled: WordBool readonly dispid 226;
    property MouseInClient: WordBool readonly dispid 227;
    property VisibleDockClientCount: Integer readonly dispid 228;
    function DrawTextBiDiModeFlagsReadingOnly: Integer; dispid 229;
    procedure InitiateAction; dispid 230;
    function IsRightToLeft: WordBool; dispid 231;
    function UseRightToLeftReading: WordBool; dispid 232;
    function UseRightToLeftScrollBar: WordBool; dispid 233;
    property ExplicitLeft: Integer readonly dispid 234;
    property ExplicitTop: Integer readonly dispid 235;
    property ExplicitWidth: Integer readonly dispid 236;
    property ExplicitHeight: Integer readonly dispid 237;
    property AlignWithMargins: WordBool dispid 238;
    property ParentCustomHint: WordBool dispid 239;
    procedure SetSubComponent(IsSubComponent: WordBool); dispid 240;
  end;

// *********************************************************************//
// DispIntf :    IIPCamViewerAxEvents
// Indicateurs : (0)
// GUID :        {45B46F66-FC40-4DC7-8BFC-5F7606C4C44B}
// *********************************************************************//
  IIPCamViewerAxEvents = dispinterface
    ['{45B46F66-FC40-4DC7-8BFC-5F7606C4C44B}']
    procedure OnCanResize(var NewWidth: Integer; var NewHeight: Integer; var Resize: WordBool); dispid 201;
    procedure OnClick; dispid 202;
    procedure OnConstrainedResize(var MinWidth: Integer; var MinHeight: Integer;
                                  var MaxWidth: Integer; var MaxHeight: Integer); dispid 203;
    procedure OnDblClick; dispid 204;
    procedure OnMouseEnter; dispid 205;
    procedure OnMouseLeave; dispid 206;
    procedure OnResize; dispid 207;
  end;

implementation

uses ComObj;

end.

﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\DUII\GMeterScreen.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	?errorCounter@@3HA				; errorCounter
PUBLIC	?memDev@@3JA					; memDev
PUBLIC	?hGMeterScreen@@3JA				; hGMeterScreen
PUBLIC	?pGM@@3PAVGMeter@@A				; pGM
_BSS	SEGMENT
?errorCounter@@3HA DD 01H DUP (?)			; errorCounter
?memDev@@3JA DD	01H DUP (?)				; memDev
?hGMeterScreen@@3JA DD 01H DUP (?)			; hGMeterScreen
?pGM@@3PAVGMeter@@A DD 01H DUP (?)			; pGM
_BSS	ENDS
CONST	SEGMENT
_configurableItemRect DW 00H
	DW	00H
	DW	08cH
	DW	058H
_DataElementRect DW 00H
	DW	05H
	DW	096H
	DW	025H
_NameRect DW	00H
	DW	026H
	DW	078H
	DW	03dH
_UnitsRect DW	00H
	DW	03dH
	DW	078H
	DW	055H
_config	DD	FLAT:_pData
	DD	FLAT:_pName
	DD	FLAT:_pUnits
CONST	ENDS
PUBLIC	??_GGMeter@@QAEPAXI@Z				; GMeter::`scalar deleting destructor'
PUBLIC	?GMDrawConfigRect@@YAXXZ			; GMDrawConfigRect
PUBLIC	__cbGMeterCallback
EXTRN	_WM_DefaultProc:PROC
EXTRN	_GUI_MEMDEV_Delete:PROC
EXTRN	_GUI_SelectLCD:PROC
EXTRN	_GUI_MEMDEV_CopyToLCD:PROC
EXTRN	_CheckWarningPopups:PROC
EXTRN	_DrawSignalStrength:PROC
EXTRN	_SlideOutVisible:PROC
EXTRN	_DisplayConfigurableItem:PROC
EXTRN	?DrawControl@GMeter@@QAEXXZ:PROC		; GMeter::DrawControl
EXTRN	_GUI_MEMDEV_Select:PROC
EXTRN	_lockupSemaphore:BYTE
EXTRN	_CS_IsVisible:PROC
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	?SetValue@GMeter@@QAEXMM@Z:PROC			; GMeter::SetValue
EXTRN	_GetValue:PROC
EXTRN	_configureGaugeMode:BYTE
EXTRN	_boxStartTime:DWORD
EXTRN	_GUI_GetTime:PROC
EXTRN	_drawFlag:BYTE
EXTRN	_WM_RestartTimer:PROC
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
_BSS	SEGMENT
_firsttimethrough DB 01H DUP (?)
	ALIGN	4

_hScreenTimer DD 01H DUP (?)
_BSS	ENDS
;	COMDAT rtc$TMZ
; File c:\duii\duii\gmeterscreen.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT __cbGMeterCallback
_TEXT	SEGMENT
tv137 = -252						; size = 4
tv64 = -252						; size = 4
$T16282 = -244						; size = 8
$T16283 = -228						; size = 8
$T16284 = -212						; size = 4
$T16285 = -200						; size = 4
_pMsg$ = 8						; size = 4
__cbGMeterCallback PROC					; COMDAT
; Line 110
	push	ebp
	mov	ebp, esp
	sub	esp, 252				; 000000fcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-252]
	mov	ecx, 63					; 0000003fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 112
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR tv64[ebp], ecx
	cmp	DWORD PTR tv64[ebp], 11			; 0000000bH
	je	$LN3@cbGMeterCa
	cmp	DWORD PTR tv64[ebp], 15			; 0000000fH
	je	$LN10@cbGMeterCa
	cmp	DWORD PTR tv64[ebp], 275		; 00000113H
	je	SHORT $LN14@cbGMeterCa
	jmp	$LN1@cbGMeterCa
$LN14@cbGMeterCa:
; Line 115
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	cmp	ecx, DWORD PTR _hScreenTimer
	jne	$LN13@cbGMeterCa
; Line 117
	push	50					; 00000032H
	mov	eax, DWORD PTR _hScreenTimer
	push	eax
	call	_WM_RestartTimer
	add	esp, 8
; Line 120
	movzx	eax, BYTE PTR _drawFlag
	test	eax, eax
	je	SHORT $LN11@cbGMeterCa
; Line 122
	call	_GUI_GetTime
	sub	eax, DWORD PTR _boxStartTime
	cmp	eax, 5000				; 00001388H
	jle	SHORT $LN11@cbGMeterCa
; Line 124
	mov	BYTE PTR _configureGaugeMode, 0
; Line 125
	mov	BYTE PTR _drawFlag, 0
$LN11@cbGMeterCa:
; Line 130
	push	10					; 0000000aH
	call	_GetValue
	add	esp, 4
	mov	DWORD PTR $T16282[ebp], eax
	mov	DWORD PTR $T16282[ebp+4], edx
	push	9
	call	_GetValue
	add	esp, 4
	mov	DWORD PTR $T16283[ebp], eax
	mov	DWORD PTR $T16283[ebp+4], edx
	push	ecx
	fld	DWORD PTR $T16282[ebp]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR $T16283[ebp]
	fstp	DWORD PTR [esp]
	mov	ecx, DWORD PTR ?pGM@@3PAVGMeter@@A	; pGM
	call	?SetValue@GMeter@@QAEXMM@Z		; GMeter::SetValue
; Line 132
	mov	eax, DWORD PTR ?hGMeterScreen@@3JA	; hGMeterScreen
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN13@cbGMeterCa:
; Line 134
	jmp	$LN15@cbGMeterCa
$LN10@cbGMeterCa:
; Line 137
	push	0
	call	_CS_IsVisible
	add	esp, 4
	test	eax, eax
	jne	SHORT $LN8@cbGMeterCa
	movzx	eax, BYTE PTR _firsttimethrough
	test	eax, eax
	je	$LN9@cbGMeterCa
$LN8@cbGMeterCa:
; Line 139
	mov	BYTE PTR _firsttimethrough, 0
; Line 141
	movzx	eax, BYTE PTR _lockupSemaphore
	test	eax, eax
	je	SHORT $LN7@cbGMeterCa
; Line 143
	mov	eax, DWORD PTR ?errorCounter@@3HA	; errorCounter
	add	eax, 1
	mov	DWORD PTR ?errorCounter@@3HA, eax	; errorCounter
; Line 144
	jmp	$LN15@cbGMeterCa
	jmp	SHORT $LN6@cbGMeterCa
$LN7@cbGMeterCa:
; Line 146
	mov	BYTE PTR _lockupSemaphore, 1
$LN6@cbGMeterCa:
; Line 148
	mov	eax, DWORD PTR ?memDev@@3JA		; memDev
	push	eax
	call	_GUI_MEMDEV_Select
	add	esp, 4
; Line 150
	mov	ecx, DWORD PTR ?pGM@@3PAVGMeter@@A	; pGM
	call	?DrawControl@GMeter@@QAEXXZ		; GMeter::DrawControl
; Line 153
	push	OFFSET _config
	call	_DisplayConfigurableItem
	add	esp, 4
; Line 159
	movzx	eax, BYTE PTR _drawFlag
	test	eax, eax
	je	SHORT $LN5@cbGMeterCa
; Line 161
	call	?GMDrawConfigRect@@YAXXZ		; GMDrawConfigRect
$LN5@cbGMeterCa:
; Line 163
	call	_SlideOutVisible
	movzx	eax, al
	test	eax, eax
	je	SHORT $LN4@cbGMeterCa
; Line 164
	call	_DrawSignalStrength
$LN4@cbGMeterCa:
; Line 166
	call	_CheckWarningPopups
; Line 168
	mov	eax, DWORD PTR ?memDev@@3JA		; memDev
	push	eax
	call	_GUI_MEMDEV_CopyToLCD
	add	esp, 4
; Line 169
	call	_GUI_SelectLCD
$LN9@cbGMeterCa:
; Line 171
	jmp	SHORT $LN15@cbGMeterCa
$LN3@cbGMeterCa:
; Line 174
	cmp	DWORD PTR ?pGM@@3PAVGMeter@@A, 0	; pGM
	je	SHORT $LN2@cbGMeterCa
; Line 176
	mov	eax, DWORD PTR ?pGM@@3PAVGMeter@@A	; pGM
	mov	DWORD PTR $T16285[ebp], eax
	mov	ecx, DWORD PTR $T16285[ebp]
	mov	DWORD PTR $T16284[ebp], ecx
	cmp	DWORD PTR $T16284[ebp], 0
	je	SHORT $LN19@cbGMeterCa
	push	1
	mov	ecx, DWORD PTR $T16284[ebp]
	call	??_GGMeter@@QAEPAXI@Z
	mov	DWORD PTR tv137[ebp], eax
	jmp	SHORT $LN20@cbGMeterCa
$LN19@cbGMeterCa:
	mov	DWORD PTR tv137[ebp], 0
$LN20@cbGMeterCa:
; Line 177
	mov	DWORD PTR ?pGM@@3PAVGMeter@@A, 0	; pGM
; Line 178
	mov	eax, DWORD PTR ?memDev@@3JA		; memDev
	push	eax
	call	_GUI_MEMDEV_Delete
	add	esp, 4
$LN2@cbGMeterCa:
; Line 180
	jmp	SHORT $LN15@cbGMeterCa
$LN1@cbGMeterCa:
; Line 183
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	call	_WM_DefaultProc
	add	esp, 4
$LN15@cbGMeterCa:
; Line 185
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 252				; 000000fcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__cbGMeterCallback ENDP
_TEXT	ENDS
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	??1GMeter@@QAE@XZ:PROC				; GMeter::~GMeter
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GGMeter@@QAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GGMeter@@QAEPAXI@Z PROC				; GMeter::`scalar deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1GMeter@@QAE@XZ			; GMeter::~GMeter
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@scalar
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN1@scalar:
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_GGMeter@@QAEPAXI@Z ENDP				; GMeter::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	_GUI_DrawRect:PROC
EXTRN	_GUI_SetColor:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?GMDrawConfigRect@@YAXXZ
_TEXT	SEGMENT
?GMDrawConfigRect@@YAXXZ PROC				; GMDrawConfigRect, COMDAT
; Line 191
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 192
	push	255					; 000000ffH
	call	_GUI_SetColor
	add	esp, 4
; Line 193
	movsx	eax, WORD PTR _configurableItemRect+6
	push	eax
	movsx	ecx, WORD PTR _configurableItemRect+4
	push	ecx
	movsx	edx, WORD PTR _configurableItemRect+2
	push	edx
	movsx	eax, WORD PTR _configurableItemRect
	push	eax
	call	_GUI_DrawRect
	add	esp, 16					; 00000010H
; Line 195
	movsx	eax, WORD PTR _configurableItemRect+6
	sub	eax, 1
	push	eax
	movsx	ecx, WORD PTR _configurableItemRect+4
	sub	ecx, 1
	push	ecx
	movsx	edx, WORD PTR _configurableItemRect+2
	add	edx, 1
	push	edx
	movsx	eax, WORD PTR _configurableItemRect
	add	eax, 1
	push	eax
	call	_GUI_DrawRect
	add	esp, 16					; 00000010H
; Line 196
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?GMDrawConfigRect@@YAXXZ ENDP				; GMDrawConfigRect
_TEXT	ENDS
PUBLIC	_Display_GMeterScreen
EXTRN	_WM_CreateTimer:PROC
EXTRN	??0GMeter@@QAE@H@Z:PROC				; GMeter::GMeter
EXTRN	??2@YAPAXI@Z:PROC				; operator new
EXTRN	_SystemError:PROC
EXTRN	_WM_CreateWindowAsChild:PROC
EXTRN	_GUI_MEMDEV_Create:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _Display_GMeterScreen
_TEXT	SEGMENT
tv87 = -220						; size = 4
$T16304 = -212						; size = 4
$T16305 = -200						; size = 4
_hParent$ = 8						; size = 4
_Display_GMeterScreen PROC				; COMDAT
; Line 204
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 205
	mov	BYTE PTR _firsttimethrough, 1
; Line 206
	mov	DWORD PTR ?errorCounter@@3HA, 0		; errorCounter
; Line 208
	push	272					; 00000110H
	push	480					; 000001e0H
	push	0
	push	0
	call	_GUI_MEMDEV_Create
	add	esp, 16					; 00000010H
	mov	DWORD PTR ?memDev@@3JA, eax		; memDev
; Line 210
	push	0
	push	OFFSET __cbGMeterCallback
	push	2
	mov	eax, DWORD PTR _hParent$[ebp]
	push	eax
	push	272					; 00000110H
	push	480					; 000001e0H
	push	0
	push	0
	call	_WM_CreateWindowAsChild
	add	esp, 32					; 00000020H
	mov	DWORD PTR ?hGMeterScreen@@3JA, eax	; hGMeterScreen
	cmp	DWORD PTR ?hGMeterScreen@@3JA, 0	; hGMeterScreen
	jg	SHORT $LN2@Display_GM
; Line 211
	call	_SystemError
$LN2@Display_GM:
; Line 215
	push	72					; 00000048H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T16305[ebp], eax
	cmp	DWORD PTR $T16305[ebp], 0
	je	SHORT $LN5@Display_GM
	push	2
	mov	ecx, DWORD PTR $T16305[ebp]
	call	??0GMeter@@QAE@H@Z			; GMeter::GMeter
	mov	DWORD PTR tv87[ebp], eax
	jmp	SHORT $LN6@Display_GM
$LN5@Display_GM:
	mov	DWORD PTR tv87[ebp], 0
$LN6@Display_GM:
	mov	eax, DWORD PTR tv87[ebp]
	mov	DWORD PTR $T16304[ebp], eax
	mov	ecx, DWORD PTR $T16304[ebp]
	mov	DWORD PTR ?pGM@@3PAVGMeter@@A, ecx	; pGM
	cmp	DWORD PTR ?pGM@@3PAVGMeter@@A, 0	; pGM
	ja	SHORT $LN1@Display_GM
; Line 216
	call	_SystemError
$LN1@Display_GM:
; Line 218
	push	0
	push	50					; 00000032H
	push	0
	mov	eax, DWORD PTR ?hGMeterScreen@@3JA	; hGMeterScreen
	push	eax
	call	_WM_CreateTimer
	add	esp, 16					; 00000010H
	mov	DWORD PTR _hScreenTimer, eax
; Line 220
	mov	eax, DWORD PTR ?hGMeterScreen@@3JA	; hGMeterScreen
; Line 221
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_Display_GMeterScreen ENDP
_TEXT	ENDS
PUBLIC	_IfGMeterConfigGaugePressed
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _IfGMeterConfigGaugePressed
_TEXT	SEGMENT
_lastx$ = 8						; size = 4
_lasty$ = 12						; size = 4
_IfGMeterConfigGaugePressed PROC			; COMDAT
; Line 227
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 228
	movsx	eax, WORD PTR _configurableItemRect
	cmp	DWORD PTR _lastx$[ebp], eax
	jl	SHORT $LN2@IfGMeterCo
	movsx	eax, WORD PTR _configurableItemRect+4
	cmp	DWORD PTR _lastx$[ebp], eax
	jg	SHORT $LN2@IfGMeterCo
	movsx	eax, WORD PTR _configurableItemRect+2
	cmp	DWORD PTR _lasty$[ebp], eax
	jl	SHORT $LN2@IfGMeterCo
	movsx	eax, WORD PTR _configurableItemRect+6
	cmp	DWORD PTR _lasty$[ebp], eax
	jg	SHORT $LN2@IfGMeterCo
; Line 229
	mov	al, 1
	jmp	SHORT $LN3@IfGMeterCo
	jmp	SHORT $LN3@IfGMeterCo
$LN2@IfGMeterCo:
; Line 230
	xor	al, al
$LN3@IfGMeterCo:
; Line 231
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_IfGMeterConfigGaugePressed ENDP
_TEXT	ENDS
EXTRN	_GUI_FontD32:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??__EpData@@YAXXZ
text$yc	SEGMENT
??__EpData@@YAXXZ PROC					; `dynamic initializer for 'pData'', COMDAT
; Line 103
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR _DataElementRect
	mov	DWORD PTR _pData, eax
	mov	ecx, DWORD PTR _DataElementRect+4
	mov	DWORD PTR _pData+4, ecx
	mov	DWORD PTR _pData+8, 0
	mov	DWORD PTR _pData+12, 33023		; 000080ffH
	mov	DWORD PTR _pData+16, OFFSET _GUI_FontD32
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??__EpData@@YAXXZ ENDP					; `dynamic initializer for 'pData''
text$yc	ENDS
EXTRN	_GUI_Font24B_ASCII:BYTE
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??__EpName@@YAXXZ
text$yc	SEGMENT
??__EpName@@YAXXZ PROC					; `dynamic initializer for 'pName'', COMDAT
; Line 104
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR _NameRect
	mov	DWORD PTR _pName, eax
	mov	ecx, DWORD PTR _NameRect+4
	mov	DWORD PTR _pName+4, ecx
	mov	DWORD PTR _pName+8, 0
	mov	DWORD PTR _pName+12, 13882323		; 00d3d3d3H
	mov	DWORD PTR _pName+16, OFFSET _GUI_Font24B_ASCII
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??__EpName@@YAXXZ ENDP					; `dynamic initializer for 'pName''
; Function compile flags: /Odtp /RTCsu /ZI
text$yc	ENDS
;	COMDAT ??__EpUnits@@YAXXZ
text$yc	SEGMENT
??__EpUnits@@YAXXZ PROC					; `dynamic initializer for 'pUnits'', COMDAT
; Line 105
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR _UnitsRect
	mov	DWORD PTR _pUnits, eax
	mov	ecx, DWORD PTR _UnitsRect+4
	mov	DWORD PTR _pUnits+4, ecx
	mov	DWORD PTR _pUnits+8, 0
	mov	DWORD PTR _pUnits+12, 13882323		; 00d3d3d3H
	mov	DWORD PTR _pUnits+16, OFFSET _GUI_Font24B_ASCII
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??__EpUnits@@YAXXZ ENDP					; `dynamic initializer for 'pUnits''
text$yc	ENDS
_BSS	SEGMENT
_pData	DB	014H DUP (?)
_pUnits	DB	014H DUP (?)
_pName	DB	014H DUP (?)
_BSS	ENDS
CRT$XCU	SEGMENT
_pData$initializer$ DD FLAT:??__EpData@@YAXXZ
_pName$initializer$ DD FLAT:??__EpName@@YAXXZ
_pUnits$initializer$ DD FLAT:??__EpUnits@@YAXXZ
CRT$XCU	ENDS
END
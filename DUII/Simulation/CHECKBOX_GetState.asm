﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\CHECKBOX_GetState.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_CHECKBOX_GetState
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_CHECKBOX_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\checkbox_getstate.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _CHECKBOX_GetState
_TEXT	SEGMENT
_pObj$ = -20						; size = 4
_Result$ = -8						; size = 4
_hObj$ = 8						; size = 4
_CHECKBOX_GetState PROC					; COMDAT
; Line 37
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 38
	mov	DWORD PTR _Result$[ebp], 0
; Line 40
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN1@CHECKBOX_G
; Line 42
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_CHECKBOX_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 43
	mov	eax, DWORD PTR _pObj$[ebp]
	movzx	ecx, BYTE PTR [eax+121]
	mov	DWORD PTR _Result$[ebp], ecx
; Line 44
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN1@CHECKBOX_G:
; Line 47
	mov	eax, DWORD PTR _Result$[ebp]
; Line 48
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_CHECKBOX_GetState ENDP
_TEXT	ENDS
END
﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI_CursorCrossL.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_BitmapCrossL
PUBLIC	_GUI_CursorCrossL
EXTRN	_GUI_CursorPal:BYTE
EXTRN	_GUI_Pixels_CrossL:BYTE
CONST	SEGMENT
_GUI_BitmapCrossL DW 01fH
	DW	01fH
	DW	08H
	DW	02H
	DD	FLAT:_GUI_Pixels_CrossL
	DD	FLAT:_GUI_CursorPal
	ORG $+4
_GUI_CursorCrossL DD FLAT:_GUI_BitmapCrossL
	DD	0fH
	DD	0fH
CONST	ENDS
END
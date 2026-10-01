//%attributes = {"invisible":true}
ARRAY LONGINT:C221($codes; 0)
ARRAY TEXT:C222($comp; 0)
ARRAY TEXT:C222($errorText; 0)

_O_GET LAST ERROR STACK:C1015($codes; $comp; $errorText)

errorMessage:=$errorText{1}

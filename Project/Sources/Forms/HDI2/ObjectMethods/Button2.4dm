C_OBJECT:C1216($pupil)
C_LONGINT:C283($rank)

If (btnTrace)
	TRACE:C157
End if 


$pupil:=ds:C1482.Pupil.get(Form:C1466.pupilObject2.__KEY)

$pupil.fromObject(Form:C1466.pupilObject2)

$pupil.save()

Form:C1466.pupils:=ds:C1482.Pupil.all()

$rank:=$pupil.indexOf(Form:C1466.pupils)+1

LISTBOX SELECT ROW:C912(*; "listBoxPupils"; $rank)
OBJECT SET SCROLL POSITION:C906(*; "listBoxPupils"; $rank)




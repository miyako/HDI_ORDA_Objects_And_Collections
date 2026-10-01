var $pupil : Object
var $rank : Integer

If (btnTrace)
	TRACE:C157
End if 


$pupil:=ds:C1482.Pupil.new()

$pupil.fromObject(Form:C1466.pupilObject1)

$pupil.save()

Form:C1466.pupils:=ds:C1482.Pupil.all()

$rank:=$pupil.indexOf(Form:C1466.pupils)+1

LISTBOX SELECT ROW:C912(*; "listBoxPupils"; $rank)
OBJECT SET SCROLL POSITION:C906(*; "listBoxPupils"; $rank)




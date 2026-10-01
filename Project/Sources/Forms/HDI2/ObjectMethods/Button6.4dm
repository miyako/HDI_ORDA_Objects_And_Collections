C_OBJECT:C1216($pupils; $es_pupils; $pupil0; $pupil1)
C_LONGINT:C283($rank0; $rank1)


If (btnTrace)
	TRACE:C157
End if 


$pupils:=ds:C1482.Pupil.fromCollection(Form:C1466.pupilsCollection)


Form:C1466.pupils:=ds:C1482.Pupil.all()

$es_pupils:=$pupils.query("lastName=:1"; Form:C1466.pupilsCollection[0].lastName)
$pupil0:=$es_pupils.first()
$rank0:=$pupil0.indexOf(Form:C1466.pupils)

$pupil1:=ds:C1482.Pupil.get(Form:C1466.pupilsCollection[1].__KEY)
$rank1:=$pupil1.indexOf(Form:C1466.pupils)

LISTBOX SELECT ROW:C912(*; "listBoxPupilsCollection"; $rank0+1)
LISTBOX SELECT ROW:C912(*; "listBoxPupilsCollection"; $rank1+1; lk add to selection:K53:2)
OBJECT SET SCROLL POSITION:C906(*; "listBoxPupilsCollection"; $rank1+1)




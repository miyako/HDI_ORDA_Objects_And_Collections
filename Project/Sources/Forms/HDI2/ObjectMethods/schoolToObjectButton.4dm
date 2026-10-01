C_COLLECTION:C1488($collection)
C_LONGINT:C283($option1; $option2)

If (btnTrace)
	TRACE:C157
End if 

Form:C1466.selectedSchool:=Form:C1466.selectedSchools.first()

$collection:=New collection:C1472

If (extractName=1)
	$collection.push("name")
End if 

If (extractPupilsLastName=1)
	$collection.push("pupils.lastName")
End if 

If (extractWholePupils=1)
	$collection.push("pupils.*")
End if 

$option1:=0
$option2:=0

If (extractSchoolPK=1)
	$option1:=dk with primary key:K85:6
End if 

If (extractSchoolStamp=1)
	$option2:=dk with stamp:K85:28
End if 

If ($collection.length=0)
	Form:C1466.schoolObject:=Form:C1466.selectedSchool.toObject(""; $option1+$option2)
Else 
	Form:C1466.schoolObject:=Form:C1466.selectedSchool.toObject($collection; $option1+$option2)
End if 


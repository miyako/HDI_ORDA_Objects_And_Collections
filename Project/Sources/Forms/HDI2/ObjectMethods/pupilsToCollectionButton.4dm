var $collection : Collection
var $option1; $option2 : Integer

If (btnTrace)
	TRACE:C157
End if 


$collection:=New collection:C1472

If (extractLastName=1)
	$collection.push("lastName")
End if 

If (extractFirstName=1)
	$collection.push("firstName")
End if 

If (extractEmail=1)
	$collection.push("email")
End if 

If (extractSchool=1)
	$collection.push("school.*")
End if 

If (extractSchoolName=1)
	$collection.push("school.name")
End if 

$option1:=0
$option2:=0

If (extractPupilPK=1)
	$option1:=dk with primary key:K85:6
End if 

If (extractPupilStamp=1)
	$option2:=dk with stamp:K85:28
End if 

If ($collection.length=0)
	Form:C1466.pupilObject:=Form:C1466.selectedPupils.toCollection(""; $option1+$option2)
Else 
	Form:C1466.pupilObject:=Form:C1466.selectedPupils.toCollection($collection; $option1+$option2)
End if 




//%attributes = {"invisible":true}


//Business logic related to the DataStore
var $txtPupils : Text
var $pupilsColl : Collection

buildDataFromJSON

Form:C1466.pupils:=ds:C1482.Pupil.all()
Form:C1466.schools:=ds:C1482.School.all()

$txtPupils:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"pupils_objects.json")
$pupilsColl:=JSON Parse:C1218($txtPupils)
Form:C1466.pupilObject1:=$pupilsColl[0]
Form:C1466.pupilObject2:=$pupilsColl[1]

$txtPupils:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"pupils_collection.json")
$pupilsColl:=JSON Parse:C1218($txtPupils)
Form:C1466.pupilsCollection:=$pupilsColl


OBJECT SET ENABLED:C1123(*; "pupilToObjectButton"; False:C215)
OBJECT SET ENABLED:C1123(*; "pupilsToCollectionButton"; False:C215)
OBJECT SET ENABLED:C1123(*; "schoolToObjectButton"; False:C215)
OBJECT SET ENABLED:C1123(*; "schoolsToCollectionButton"; False:C215)

btnTrace:=False:C215

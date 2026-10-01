//%attributes = {"invisible":true}
C_COLLECTION:C1488($collection)

$pupilsColl:=ds:C1482.Pupil.all().toCollection("")

$schoolsColl:=ds:C1482.School.all().toCollection("")

$txtPupils:=JSON Stringify:C1217($pupilsColl; *)
$txtSchools:=JSON Stringify:C1217($schoolsColl; *)


TEXT TO DOCUMENT:C1237(Get 4D folder:C485(Current resources folder:K5:16)+"pupils_data.json"; $txtPupils)
TEXT TO DOCUMENT:C1237(Get 4D folder:C485(Current resources folder:K5:16)+"schools_data.json"; $txtSchools)

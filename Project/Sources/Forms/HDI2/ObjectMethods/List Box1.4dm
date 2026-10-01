

If (btnTrace)
	TRACE:C157
End if 

Case of 
		
	: (Form event code:C388=On Selection Change:K2:29)
		
		Case of 
				
			: (Form:C1466.selectedSchools.length=0)
				OBJECT SET ENABLED:C1123(*; "schoolToObjectButton"; False:C215)
				OBJECT SET ENABLED:C1123(*; "schoolsToCollectionButton"; False:C215)
				
			: (Form:C1466.selectedSchools.length=1)
				OBJECT SET ENABLED:C1123(*; "schoolToObjectButton"; True:C214)
				OBJECT SET ENABLED:C1123(*; "schoolsToCollectionButton"; True:C214)
				
			: (Form:C1466.selectedSchools.length>=1)
				OBJECT SET ENABLED:C1123(*; "schoolToObjectButton"; False:C215)
				OBJECT SET ENABLED:C1123(*; "schoolsToCollectionButton"; True:C214)
				
		End case 
		
End case 

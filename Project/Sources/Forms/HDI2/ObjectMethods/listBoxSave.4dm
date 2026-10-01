

If (btnTrace)
	TRACE:C157
End if 


Case of 
		
	: (Form event code:C388=On Selection Change:K2:29)
		
		Case of 
				
			: (Form:C1466.selectedPupils.length=0)
				OBJECT SET ENABLED:C1123(*; "pupilToObjectButton"; False:C215)
				OBJECT SET ENABLED:C1123(*; "pupilsToCollectionButton"; False:C215)
				
			: (Form:C1466.selectedPupils.length=1)
				OBJECT SET ENABLED:C1123(*; "pupilToObjectButton"; True:C214)
				OBJECT SET ENABLED:C1123(*; "pupilsToCollectionButton"; True:C214)
				
			: (Form:C1466.selectedPupils.length>=1)
				OBJECT SET ENABLED:C1123(*; "pupilToObjectButton"; False:C215)
				OBJECT SET ENABLED:C1123(*; "pupilsToCollectionButton"; True:C214)
				
		End case 
		
End case 


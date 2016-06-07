macroScript IKEA_CheckUVW
category:"[IKEA]"
toolTip:"Check UVW"
(
	fn errorMessage = messageBox "Models not found!" title: "Warning!"
	
	fn checkUVW =
	(
		m = $model*
		if(m == undefined) do return errorMessage()
		
		select m
		
		if(selection[1] == undefined) do return errorMessage()
		
		-- Delete 1 modifier
		for i in selection where isValidNode i do try(deleteModifier i 1) catch()
		
		modPanel.addModToSelection (Unwrap_UVW ()) ui:on
		
		u = selection[1].modifiers[#unwrap_uvw]
		u.edit()
		u.fit()
		u.UpdateView()
	)

	checkUVW()
)
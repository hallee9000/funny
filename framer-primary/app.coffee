# Set background color
Screen.backgroundColor = "#333"

# Create layers
layerA = new Layer
	width: 160
	height: 160
	x: 240
	y: 300
	backgroundColor: "#14C4FF"
	borderRadius: 80

# Add states
layerA.states.add
	stateB:
		borderRadius: 0
		backgroundColor: "#36E43C"

layerA.onClick (event, layer) ->
	layerA.states.switch("stateB")

# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "leadream"
	twitter: ""
	description: ""

bg = new BackgroundLayer
	backgroundColor: "white"

base = new Layer
	width: 365
	height: 365
	backgroundColor: "transparent"
	y: 842
	x: 586

tray = new Layer
	width: 365
	height: 365
	borderRadius: 47
	backgroundColor: "rgba(255,255,255,1)"
	shadowBlur: 16
	shadowY: 4
	borderWidth: 12
	borderColor: "#FAFAFA"

disc = new Layer
	width: 289
	height: 289
	image: "images/disk.png"
	x: 38
	y: 38

shaft = new Layer
	borderRadius: 100
	y: 23
	borderWidth: 7
	borderColor: "#FAFAFA"
	backgroundColor: "#FFF"
	x: 281
	width: 61
	height: 61

swing = new Layer
	width: 97
	height: 251
	image: "images/swing.png"
	x: 230
	y: 40

tray.superLayer = base
disc.superLayer = base
shaft.superLayer = base
swing.superLayer = base


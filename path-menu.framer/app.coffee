Framer.Defaults.Animation =
    curve: "spring(90,13,10)"
#把背景贴上
bg = new Layer
	width: 750
	height: 1334
	image: "images/bg.png"
bg.states.add
	bgBlur:
		blur:12

btn = []
# 创建四个按钮
for i in [0..3]
	btn[i] = new Layer
		width: 156
		height: 156
		x:297
		y:1136
		image: "images/btn"+i+".png"
	btn[i].states.add
		popUp:
			x:297
			y: i*176+428

#创建“新建按钮”
btnAdd = new Layer
	width: 156
	height: 156
	x: 297
	y: 1136
	borderRadius: 78
	backgroundColor: '#f75534'
btnAdd.states.add
	grey:
		backgroundColor: '#AAA'
#按钮中的加号
plus = new Layer
	superLayer: btnAdd
	width: 50
	height: 50
	image: "images/plus.png"
	y: 54
	x: 53
plus.states.add
	rotate:
		rotation: 45

#点击按钮，弹出菜单，模糊背景，旋转加号
btnAdd.onClick (event, layer) ->
	bg.states.next()
	btnAdd.states.next()
	plus.states.next()
	btn[0].states.next()
	btn[1].states.next()
	btn[2].states.next()
	btn[3].states.next()
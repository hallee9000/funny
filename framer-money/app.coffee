# 背景
bg = new Layer
	width: 1080
	height: 1920
	image: "images/money.png"

# 昨日收益
receipts = new Layer
	html: 1
	x: 106
	y: 527
	width: 867
	height: 130
	backgroundColor:"transparent"
	style:
		fontSize: "240px"
		fontWeight: "300"
		textAlign: "center"
		lineHeight: "130px"

# 总金额
account = new Layer
	html: "1"
	x: 106
	y: 1034
	width: 867
	height: 81
	backgroundColor:"transparent"
	style:
		fontSize: "82px"
		fontWeight: "300"
		textAlign: "center"
		lineHeight: "82px"

# 万份收益
millionReceipts = new Layer
	html: "1"
	x: 60
	y: 1394
	width: 209
	height: 92
	color: "#EE5D33"
	backgroundColor:"transparent"
	style:
		fontSize: "75px"
		lineHeight: "82px"

# 累计收益
totalReceipts = new Layer
	html: "1"
	x: 604
	y: 1394
	width: 209
	height: 92
	color: "#EE5D33"
	backgroundColor:"transparent"
	style:
		fontSize: "75px"
		lineHeight: "82px"

# 点击背景就开始计数
bg.onTap (event, layer) ->
	moneyCount(0,receipts)
	moneyCount(1,account)
	moneyCount(2,millionReceipts)
	moneyCount(3,totalReceipts)

start = [1,1,0,1]
maxium = [58,1128355,0.82632,28383]

moneyCount = (i,countLayer) ->
	if start[i] < maxium[i]
		Utils.delay start[i]*0.000000001, ->
			showNumber = Utils.round(start[i],2)
			countLayer.html = showNumber.toFixed(2)
			start[i] = start[i]+maxium[i]/1283
			moneyCount(i,countLayer)
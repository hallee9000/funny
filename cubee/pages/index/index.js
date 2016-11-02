//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    image:'',
    animationData: {}
  },
  onLoad:function(){
    console.log('onLoad')
    var animation = wx.createAnimation({
      duration: 3000,
      timingFunction: 'ease-in-out'
    })
    this.animation = animation
  },
  onShow:function(){
    console.log('onShow')
  },
  onReady: function () {
    console.log('onReady')
  },
  rotateYourHead: function () {
    this.animation.rotate3d(0,1,0,360).step()
    //本来想让它转完一圈再反着转回去，但是step()好像出bug了
    this.animation.rotate3d(0,1,0,0).step()
    this.setData({
      animationData: this.animation.export()
    })
  },
  chooseImage: function () {
    var self = this
    console.log('选择图片！');
    wx.chooseImage({
      count:1,
      success: function (res) {
        self.rotateYourHead()
        setInterval(function(){
          self.rotateYourHead()
        },6000)
        self.setData({
          image: res.tempFilePaths
        })
      }
    })
  }
})
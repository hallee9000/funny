# NodeJS应用示例

## 本地运行

```
$ git clone https://github.com/sinacloud/nodejs-getting-started.git
$ cd nodejs-getting-started
$ npm install
$ npm start
```

现在，本示例应用已经跑在了你的 localhost:5050 端口上了。

## 部署到sinacloud

首先，提交代码到你的sinacloud应用的git仓库。

```
$ git remote add sinacloud $GIT_REPOS_URL_FOR_YOUR_APPLICATIRON
$ git push sinacloud master:1
```

登陆sinacloud容器云的管理页面，在部署页面中，点击部署。

部署完成之后，你就可以通过 http://$APPNAME.sinaapp.com 来访问你的应用了。

## 更多示例

本git仓库的其它分支里还包含了Socket.io、MySQL服务、Memcached服务等的使用示例。

## 相关文档

- [NodeJS应用部署指南](http://www.sinacloud.com/doc/sae/docker/nodejs-getting-started.html)

# LaunchBar-Image-Compressor

封装几个图片压缩的 CLI 工具以便于 GUI 使用，原动作来自少数派 [@Minja](https://sspai.com/user/731139) - GitHub [@BlackwinMin](https://github.com/BlackwinMin)：[ Compressor.lbaction ](https://github.com/BlackwinMin/sspai-sample-script/blob/master/LaunchBar/Compressor.lbaction.zip)，用 Shell 改写

## 依赖

- [jpegoptim](http://www.kokkonen.net/tjko/projects.html)
- [pngquant](https://pngquant.org)
- [gifsicle](https://www.lcdf.org/gifsicle/)

用 [Homebrew](https://brew.sh) 安装即可：

`brew install jpegoptim pngquant gifsicle`

## 使用

用 Instent Send 发送图片文件到该动作即可，会在同目录下新建前缀为「new-」的图片，可以批量并发执行。优化参数可在 default.sh 中调节
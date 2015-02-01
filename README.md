## 淘宝 NPM 镜像

#### 这是一个完整 `npmjs.org` 镜像，你可以用此代替官方版本(只读)，同步频率目前为 **10分钟** 一次以保证尽量与官方服务同步。

* 当前 [registry.npm.taobao.org](//registry.npm.taobao.org) 是从 [registry.npmjs.org](//registry.npmjs.org) 进行全量同步的.
* 当前 [npm.taobao.org](/) 运行版本是: cnpmjs.org@<span id="app-version"></span>
* 本系统运行在 [io.js](https://iojs.org)@<span id="node-version"></span> 上.
* 开源镜像: http://npm.taobao.org/mirrors
* iojs.org/dist 镜像: http://npm.taobao.org/mirrors/iojs
* nodejs.org/dist 镜像: http://npm.taobao.org/mirrors/node
* phantomjs 镜像: http://npm.taobao.org/mirrors/phantomjs
* ChromeDriver 镜像: http://npm.taobao.org/mirrors/chromedriver
* Node.js 文档镜像: http://npm.taobao.org/mirrors/node/latest/docs/api/index.html
* io.js 文档镜像: http://npm.taobao.org/mirrors/iojs/latest/doc/api/index.html

<table class="downloads">
  <tbody>
    <tr>
      <td class="count" id="total-packages"></td><td>个模块</td>
      <td class="count" id="total-versions"></td><td>个模块版本</td>
      <td class="count" id="total-deletes"></td><td>次删除</td>
    </tr>
    <tr>
      <td class="count"></td><td> 次本日下载</td>
      <td class="count"></td><td> 次本周下载</td>
      <td class="count"></td><td> 次本月下载</td>
    </tr>
    <tr>
      <td class="count"></td><td> 次昨日下载</td>
      <td class="count"></td><td> 次上周下载</td>
      <td class="count"></td><td> 次上月下载</td>
    </tr>
  </tbody>
</table>

<div class="sync" style="display:none;">
  <h3>同步状态</h3>
  <p id="sync-model"></p>
  <p>上次同步完成时间: <span id="last-sync-time"></span></p>
  <p class="syncing alert alert-info">同步进程正在运行中...</p>
  <table class="sync-status">
    <tbody>
      <tr>
        <td>共 <span id="need-sync"></span> 个模块需要同步</td>
        <td class="syncing">剩余 <span id="left-sync"></span> 个模块待同步</td>
        <td>已完成 <span id="percent-sync"></span>%</td>
      </tr>
      <tr>
        <td>已同步完成了 <span id="success-sync"></span> 个模块</td>
        <td>其中 <span id="fail-sync"></span> 个模块同步失败</td>
        <td>最近同步成功的模块是: <span id="last-success-name"></span></td>
      </tr>
    </tbody>
  </table>
</div>

<script src="/js/readme.js"></script>

## Version Badge

Default style is `flat-square`.

Badge URL: `https://npm.taobao.org/badge/v/cnpmjs.org.svg` ![cnpmjs.org-badge](https://npm.taobao.org/badge/v/cnpmjs.org.svg)

* `<0.1.0 & >=0.0.0`: ![red-badge](https://img.shields.io/badge/cnpm-0.0.1-red.svg?style=flat-square)
* `<1.0.0 & >=0.1.0`: ![red-badge](https://img.shields.io/badge/cnpm-0.1.0-green.svg?style=flat-square)
* `>=1.0.0`: ![red-badge](https://img.shields.io/badge/cnpm-1.0.0-blue.svg?style=flat-square)

## 使用说明

你可以使用我们定制的 [cnpm](https://github.com/cnpm/cnpm) (gzip 压缩支持) 命令行工具代替默认的 `npm`:

```bash
$ npm install -g cnpm --registry=https://registry.npm.taobao.org
```

或者你直接通过添加 `npm` 参数 `alias` 一个新命令:

```bash
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

# Or alias it in .bashrc or .zshrc
$ echo '\n#alias for cnpm\nalias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"' >> ~/.zshrc && source ~/.zshrc
```

### 安装模块

从 [registry.npm.taobao.org](//registry.npm.taobao.org) 安装所有模块.
当安装的时候发现安装的模块还没有同步过来, 淘宝 NPM 会自动在后台进行同步,
并且会让你从官方 NPM [registry.npmjs.org](//registry.npmjs.org) 进行安装.
下次你再安装这个模块的时候, 就会直接从 淘宝 NPM 安装了.

```bash
$ cnpm install [name]
```

### 同步模块

直接通过 `sync` 命令马上同步一个模块, 只有 `cnpm` 命令行才有此功能:

```bash
$ cnpm sync connect
```

当然, 你可以直接通过 web 方式来同步: [/sync/connect](/sync/connect)

```bash
$ open https://npm.taobao.org/sync/connect
```

### 其它命令

支持 `npm` 除了 `publish` 之外的所有命令, 如:

```bash
$ cnpm info connect
```

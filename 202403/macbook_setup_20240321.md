# 概要

- 2024年03月
- macOS Monterey バージョン 12.6.4
- MacBook Pro (13-inch, M1, 2020)
- チップ Apple M1
- メモリ 16 GB
- シリアル番号 C02F61J7Q05N

# mac初期起動時の設定

- wi-fi接続
- 移行アシスタント使わない
- AppleID一旦スキップ
- 位置情報ON
- SiriはOFF

# 優先してダウンロードするもの

- chrome
	- https://www.google.co.jp/chrome/?brand=CHBD&gclid=EAIaIQobChMIm7T_0NPp6AIVjKuWCh2aJQLsEAAYASAAEgIyqfD_BwE&gclsrc=aw.ds
        - dockに追加
	- (おいおい各アカウントログイン)
- alfred
	- https://www.alfredapp.com
- iterm2
	- https://iterm2.com/

# デスクトップ

- 時計
	- 曜日と日付を表示
- Dock
	- Finder、システム環境設定、chromeだけにした 
- macのライブ変換が鬱陶しいので切る
	- 「かな」モードの状態で上の入力のメニューから選択

# システム環境設定

- 一般
	- デフォルトのブラウザをchromeに
- キーボード
	- キーのリピート最速
	- リピート入力認識まで最速
	- “/“キーはスラッシュ
	-
	- Control Stripをカスタマイズ
		- 画面をロック、音量スライダ、消音、輝度スライダ、の4つ
- トラックパッド
	- タップでクリック
	- 軌跡は真ん中よりちょい速めにする
- ディスプレイ
	- 輝度の自動調整をOFF
	- ※Night Shift要検討
- バッテリー(旧：省エネルギー)
	- バッテリー
		- オフまで30分
		- 画面を暗くしない
	- 電源アダプタ
		- オフまで1時間
- ~~機能拡張~~
- サウンド
	- 通知音を100%から80%くらいに
	- 通知音はFunky飽きたのでMezzoにする
- ※通知と集中モードは要検討、使うコミュニケーションツールによる

# chrome

- ログインして同期を有効にする
- 拡張機能
	- Any.do
	- Rimor by Expedia
	- ~~Momentum~~
	- Clear Cache
	- Full Page Screen Capture
	- 自動スクロール
	- EditThisCookie
	- Neutral Face Emoji Tools
	- Slack Custom Emoji Manager
	- ~~Chatwork Input Tools~~
	- ~~Chat++ for Chatwork~~
	- ~~ChatWork Extension~~

# アプリケーション(Dockにも追加)

- ※Atom
	- https://atom.io/
	- VSCodeに乗り換えるか... 
		- テキスト開く時のデフォルトアプリ設定
		- https://www.pc-koubou.jp/magazine/73329
- Slack
	- https://slack.com/intl/ja-jp/downloads/mac?geocode=ja-jp
- iTerm2
	- https://www.iterm2.com/
- Adobe Creative Cloud
    - https://creativecloud.adobe.com/apps/download/creative-cloud?locale=ja
    - AcrobatReader
	- https://get.adobe.com/jp/reader/?promoid=KSWLH
    - 2台にインストールできるが同時には使えない
- Alfred
	- https://www.alfredapp.com/
- ※※SoundFlowerとBlackHoleは要検討、macのverによって変わってくる
- Dropbox
	- ログインとローカル動機
- RunCat (AppStore)
	- https://kyome.io/runcat/
- Discord
	- https://discord.com/download
	- スマホアプリでQRコード読み取ると一気にログ
- DockerDesktop
	- https://docs.docker.com/desktop/install/mac-install/
- (zoom)
- (skype)
- MAMP
	- Laravelリポジトリをすぐ動かしたい場合
	- https://www.mamp.info/en/downloads/


## Abode

ログインしてよしなにやるしかない

# DAWN開発環境

インストール
- Varant
	- https://www.vagrantup.com/downloads.html
- virtualbox
	- https://www.virtualbox.org/wiki/Downloads

以下を進める
https://l-boom.backlog.com/wiki/D_P01/%E3%83%AD%E3%83%BC%E3%82%AB%E3%83%AB%E7%92%B0%E5%A2%83%E6%A7%8B%E7%AF%89+%2F+%E7%AE%A1%E7%90%86%E3%83%84%E3%83%BC%E3%83%AB+vagrant#loom-header-4

- bitbucketがアプリパスワードの認証へ
	- https://bitbucket.org/account/settings/app-passwords/
- git利用時にエラー「RPC failed; curl 92 HTTP/2 stream 7 was not closed cleanly before end of the underlying stream」
	- https://support-ja.backlog.com/hc/ja/articles/1500000468922-Git%E3%81%AB%E3%83%97%E3%83%83%E3%82%B7%E3%83%A5%E3%81%A7%E3%81%8D%E3%81%BE%E3%81%9B%E3%82%93
- コンテナのup時にエラー
	- https://qiita.com/jizya/items/38f15271903de629d1ab
- コンテナに入っても少しでも入力すると落ちる


```
cd ~ && mkdir dawn-manage
mkdir ~/dawn-manage/vagrant
mkdir ~/dawn-manage/Laravel

cd ~/dawn-manage/vagrant
vagrant box add bento/amazonlinux-2
vagrant init bento/amazonlinux-2
```

```
config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
　↑コメントアウトを外すだけ

config.vm.network "private_network", ip: "192.168.33.10"
　↑コメントアウトを外すだけ

config.vm.synced_folder "../Laravel", "/var/www/html"
　↑コメントアウト外して、ホストOSとゲストOS間の共有ディレクトリ先を指定する
　↑（吉見追記）ディレクトリのパスはなるべく絶対パスが良いです。（ex. home/murata/dawn-manage/Laravel）
　↑（吉見追記）vagrantのフォルダ共有用プラグインが入ってないと正常に設定されない場合があるので、下記の参考ページを確認した方が良いです
```

# デスクトップ背景

いい感じの画像を集めて1つのフォルダに集めてランダムで表示させる

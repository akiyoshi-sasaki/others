初期設定

# 概要

- 2020-04-15
- macOS Catalina バージョン 10.15.3
- MacBook Pro (13-inch, 2019, Two Thunderbolt 3 ports)
- プロセッサ　1.4 GHz クアッドコアIntel Core i5
- メモリ　16 GB 2133 MHz LPDDR3
- グラフィックス　Intel Iris Plus Graphics 645 1536 MB
- シリアル番号　FVFCJ02NL414

# 優先してダウンロードするもの

- chrome
	- https://www.google.co.jp/chrome/?brand=CHBD&gclid=EAIaIQobChMIm7T_0NPp6AIVjKuWCh2aJQLsEAAYASAAEgIyqfD_BwE&gclsrc=aw.ds
- alfred
	- https://www.alfredapp.com

# デスクトップ

- 時計
	- 曜日と日付を表示
- Dock
	- Finder、 Numbers、Keynote、App Store、システム環境設定、chromeだけにした

# システム環境設定

- キーボード
	- キーのリピート最速
	- リピート入力認識まで最速
	- “/“キーはスラッシュ
	-
- トラックパッド
	- タップでクリック
	- 軌跡速めにする
- 省エネルギー
	- ディスプレイオフまで
		- バッテリー利用時 30分
		- 電源アダプタ利用時 1時間
- 機能拡張
	- touch bar
- サウンド
	- 少し静かにする

# chrome

- ログインして同期を有効にする
- 拡張機能
	- Momentum
	- Clear Cache
	- Full Page Screen Capture
	- Chatwork Input Tools
	- Chat++ for Chatwork
	- ChatWork Extension

# アプリケーション(Dockにも追加)

- Atom
	- https://atom.io/
- Slack
	- https://slack.com/intl/ja-jp/downloads/mac
- iTerm2
	- https://www.iterm2.com/
- Skype
	- https://www.skype.com/ja/get-skype/
- AcrobatReader
	- https://get.adobe.com/jp/reader/?promoid=KSWLH
- Alfred
	- https://www.alfredapp.com/

_※Chatworkはchrome拡張機能をつけた方が便利なのでアプリはいらない_
参考: https://ferret-plus.com/7052

# itermのセットアップ

参考: https://qiita.com/suthio/items/2760e4cff0e185fe2db9

```
sasaki@akiyoshinoMacBook-Pro ~ % mkdir ~/.ssh
sasaki@akiyoshinoMacBook-Pro ~ % ssh-keygen -t rsa -b 4096 -C "a.sasaki@hri-group.com"
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/sasaki/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /Users/sasaki/.ssh/id_rsa.
Your public key has been saved in /Users/sasaki/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:IjxTyHyuhHIhItmT2vuUqP6SqYmJ/0t1oqOMPdYfT+w a.sasaki@hri-group.com
```

Githubにブラウザからログインして

```
cat ~/.ssh/id_rsa.pub
```

で表示したSSHキーをGithubに登録
そしたら以下のリポジトリを落としてくる

```
git clone git@github.com:akiyoshi-sasaki/others.git
```

あとはREADME.mdに沿って進める

## やったこと

[macOS]zshでgitのブランチ名を表示させる
https://qiita.com/m_yukio/items/16841e5da44fe3e9ba43

macOS を10.13.5にアップデートしたらターミナルが死んだ
https://qiita.com/Kansei/items/4029a0dff197039c5e78

# DAWN開発環境

インストール
- Varant
	- https://www.vagrantup.com/downloads.html
- virtualbox
	- https://www.virtualbox.org/wiki/Downloads

以下を進める
https://l-boom.backlog.com/wiki/D_P01/%E3%83%AD%E3%83%BC%E3%82%AB%E3%83%AB%E7%92%B0%E5%A2%83%E6%A7%8B%E7%AF%89+%2F+%E7%AE%A1%E7%90%86%E3%83%84%E3%83%BC%E3%83%AB+vagrant#loom-header-4

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


***

# iterm設定

- Color: カラープリセットDarkTangoなやつ(青が見えやすいやつ)
- Terminal: Scrollback lines 300,000文字
- Text: 文字サイズ好みで
- Session: closed for up to 10seconds
- Session: idle send ASCⅡコード 1every300seconds

# brew,composer,phpを入れる場合

### brew 

以下のサイトからinstallするコマンドをコピーしてくる
https://brew.sh/index_ja.html

(コマンド実行中たまに入力がいる))

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
``

このままだとPATHが通っていないので

```
vi ~/.zshrc
```

以下の1行を追加

```
export PATH=/opt/homebrew/bin:$PATH
```

```
source ~/.zshrc
````

```
$ brew -v
Homebrew 4.2.14
```

### php

https://www.stub-create.com/blog/php/mamp-brew.html

```
brew install php
```

```
[~]$ php -v
PHP 8.3.4 (cli) (built: Mar 14 2024 22:48:27) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.3.4, Copyright (c) Zend Technologies
    with Zend OPcache v8.3.4, Copyright (c), by Zend Technologies
```

※なぜか作業中にPATH通らなくなったので

```
export PATH="/opt/homebrew/Cellar/php/8.3.4/bin:$PATH"
```

### composer

brewで入れる、今は「core」の方のinstallが必要っぽい

```
brew install homebrew/core/composer
```

```
[~]$ composer -V
Composer version 2.7.2 2024-03-11 17:12:18
PHP version 8.3.4 (/opt/homebrew/Cellar/php/8.3.4/bin/php)
Run the "diagnose" command to get more detailed diagnostics output.
```

なぜか作業中PATH通らなくなったので

```
export PATH="/opt/homebrew/Cellar/composer/2.7.2/bin:$PATH"
```

以下サイトにあるコマンドだとうまく行かなかった
https://getcomposer.org/download/

## brew,php,composer入れ終わった後に急にPATHが通らなくなった

（ 最後に行った `brew install homebrew/php/composer` が原因？）

.zshrcに以下を追加してPATHを通した

```
#export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH="/opt/homebrew/Cellar/php/8.3.4/bin:$PATH"
export PATH="/opt/homebrew/Cellar/composer/2.7.2/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
```

一番上は多分不要


# ssh鍵作成

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

コピーしてgithubをはじめとする各所で使う

```
pbcopy < ~/.ssh/id_rsa.pub
```

```
$ ssh -T git@github.com
Enter passphrase for key '/Users/akiyoshi_sasaki/.ssh/id_rsa':
Hi akiyoshi-sasaki! You've successfully authenticated, but GitHub does not provide shell access.
```

# git

```
brew install git
```

# git clone用リポジトリ作成 & セットアップ用のリポジトリを手に入れる

やってなかったら

```
mkdir ~/repositories
cd ~/repositories/ && git clone git@github.com:akiyoshi-sasaki/others.git
```

上記リポジトリ内にあるファイルを利用するのだが
Macのバージョンによってbashなのかzshなのかが違う

1.bashの場合
　.bashrcと.bash_profile利用する

```
$ cp ~/repositories/others/.bash_profile ~/.bash_profile
$ cp ~/repositories/others/.bashrc ~/.bashrc
$ source ~/.bashrc
```

2.zshの場合

.zshrcを利用する

```
$ cp ~/repositories/others/.zshrc ~/.zshrc
$ source ~/.zshrc
```

(参考)
[macOS]zshでgitのブランチ名を表示させる
https://qiita.com/m_yukio/items/16841e5da44fe3e9ba43

macOS を10.13.5にアップデートしたらターミナルが死んだ
https://qiita.com/Kansei/items/4029a0dff197039c5e78


# install

```
brew install tig
brew install peco
brew tap tkengo/highway && brew install highway
```


# ========== 以下は2024年以前の記述 ==========

# itermのセットアップ

まずこのREADMEを手に入れる

```
mkdir repositories
cd repositories
git clone https://github.com/akiyoshi-sasaki/others.git
```

## やったこと

[macOS]zshでgitのブランチ名を表示させる
https://qiita.com/m_yukio/items/16841e5da44fe3e9ba43

macOS を10.13.5にアップデートしたらターミナルが死んだ
https://qiita.com/Kansei/items/4029a0dff197039c5e78

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

***

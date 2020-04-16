# iterm設定

- Color: カラープリセットDarkTangoなやつ(青が見えやすいやつ)
- Terminal: Scrollback lines 300,000文字
- Text: 文字サイズ好みで
- Session: closed for up to 10seconds
- Session: idle send ASCⅡコード 1every300seconds

# brewを入れる場合

以下のサイトからinstallするコマンドをコピーしてくる
https://brew.sh/index_ja.html

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
$ brew -v
Homebrew 2.1.8
Homebrew/homebrew-core (git revision afd1; last commit 2019-07-22)
```

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



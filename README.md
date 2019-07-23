# iterm設定

- カラープリセットDarkなやつ(青が見えるやつ)
- 300,000出せる
- 文字サイズ
- Closingの10seconds
- idle send ASCⅡコード 1every300seconds

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
brew isntall git
```

# git clone用リポジトリ

```
cd && mkdir repositories
```

# セットアップ用のリポジトリを手に入れる

```
cd ~/repositories/ && git clone git@github.com:akiyoshi-sasaki/others.git
```

上記リポジトリ内にある.bashrcを.bash_profile利用する

```
$ cp ~/repositories/others/.bash_profile ~/.bash_profile
$ cp ~/repositories/others/.bashrc ~/.bashrc
$ source ~/.bashrc
```
# isntall

```
brew install tig
brew install peco
brew tap tkengo/highway && brew install highway
```



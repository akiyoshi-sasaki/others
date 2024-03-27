# 最初

htdocsの中に動かしたいLarevelのフォルダ類をまとめてコピーしてくる
（隠しファイル、特に.envも忘れない)

Laravelディレクトリで `composer install`
`composer require laravel/helpers` もやることになるもある

終わったら `php artisan serve` して
http://127.0.0.1:8000/ とかにアクセス

Laravelのトップに「Your app key is missing」とか書いてたら
「GENERATE APP KEY」を押す

# DBの設定

(時にphpのバージョンんを8.2にして)

MAMPアプリから「Start」

そこにあるMAMPようのDB設定を参考に.envを書き換える
ポートやユーザー名、パスワードなど
.envを編集すると自動でサーバーは再起動する

WebStartのページのToolsから「phpMyAdmin」
データベースも.envの内容に沿って作成


そこまで行ったらhtdocsの中に戻って
`php artisan migrate`

ここまでいくとブラウザから操作してテーブルとやりとりができるはず







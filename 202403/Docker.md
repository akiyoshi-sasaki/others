## `docker-compose up` 時にワーニングとエラー

```
WARN[0000] The "WWWGROUP" variable is not set. Defaulting to a blank string.
WARN[0000] The "WWWUSER" variable is not set. Defaulting to a blank string.
```

```
 => [laravel.test  5/11] RUN setcap "cap_net_bind_service=+ep" /usr/bin/php8.3                       0.1s
 => ERROR [laravel.test  6/11] RUN groupadd --force -g  sail                                         0.4s
------
 > [laravel.test  6/11] RUN groupadd --force -g  sail:
0.413 groupadd: invalid group ID 'sail'
------
failed to solve: process "/bin/sh -c groupadd --force -g $WWWGROUP sail" did not complete successfully: exit code: 3
```

### 解決

https://zenn.dev/nenenemo/articles/8ff3848a29556a
これでワーニングを解決したらエラーの方も出なくなって通った
.envに以下の2行を追加するだけ

```
WWWGROUP=1000
WWWUSER=1000
```

（人のLaravelリポジトリ使うときはプラスでマイグレーションが必要）


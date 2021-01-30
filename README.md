# node_sample
node.js + express + mysqlサンプル

## Docker構成
https://qiita.com/sho_U/items/0ef3dfc7b07b5e13fa18

|App|バージョン|備考|
|---|---|---|
|MySQL|5.7|8.0でも良さそう（クライアントはMacの場合Sequal Aceがよさげ）|
|Node.js|12系|14系にしたい気持ちあり|

## そのほか構成メモ

* Visual Studio Code Extension
  * Node Extension Pack
  * Express
* Docker Desktopはlatestにしてます
* Git必要
* Windowsの場合はMake実行にMakeのインストールが必要
  * Makeファイルはdockerコマンドとかを実行しやすくしてる
  * make ${コマンド} で実行可能
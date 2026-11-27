第1回 JavaScript × WASMで、C言語に挑戦！！

JavaScriptとWebAssemblyの組み合わせで、C言語の学習を試みた内容の動画に使用したファイルです。最終的に、自作した簡易速読トレーナーアプリにおける、テキスト分割処理を WebAssembly（C言語）へ移植し、長文処理の高速化とメモリ管理の最適化を検証してみました。今回は第1回目として、emscriptenの導入から、簡単なCファイルのコンパイルとプレビューの様子を紹介しています。dockerとvscodeの導入については、割愛していますのでご了承下さい。

- 📺 **解説動画（YouTube）:** [JavaScript × WASMで、C言語に挑戦！！](https://www.youtube.com/watch?v=YGzW5ssdWvg)

---

## ✨ 動作環境

- **M4  Mac mini 24GB** 
- **docker**
- **vscode**

## ✨ 主なポイント等

- Makefile、またはemccコマンドでのコンパイル時に発生したエラーで注意したいのが、コーテーション(‘)の位置です。理由はわかりませんが、検索で提示されたのをコピペしたところ、それが原因でコンパイルが上手くいかないことがありました。

---

## 📁 ディレクトリ構成

```text
├── LICENSE          # MIT
├── README.md
├── docker compose.yml         # docker のymlファイル
├── index.html          # プレビュー画面
├── test.c          # 二つの整数を引数から得て、足し算を行うC言語ソースコード
├── Makefile            # Emscripten ビルド設定
├── test.js             # Emscripten 生成グルーコード
└── test.wasm           # コンパイル済み WebAssembly バイナリ

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for detai

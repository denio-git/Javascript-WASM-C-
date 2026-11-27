# 変数の定義
CC = emcc
TARGET = test.js
SRC = test.c

# エクスポートするJSヘルパー関数
#RUNTIME_METHODS = '["ccall"]'

# エクスポートするC言語関数（先頭に _ をつける）
FUNCTIONS = '["_add","_main"]'

# コンパイルフラグ
CFLAGS = -s EXPORTED_RUNTIME_METHODS=$(RUNTIME_METHODS) \
         -s EXPORTED_FUNCTIONS=$(FUNCTIONS) \
         -s NO_EXIT_RUNTIME=1 \
		 -s ALLOW_MEMORY_GROWTH=1

# デフォルトのターゲット (make とだけ打った時に実行される)
all: $(TARGET)

# コンパイルルール
$(TARGET): $(SRC)
	$(CC) $(SRC) -o $(TARGET) $(CFLAGS)

# クリーンアップ (生成されたファイルを削除するコマンド)
clean:
	rm -f $(TARGET) $(basename $(TARGET)).wasm

.PHONY: all clean
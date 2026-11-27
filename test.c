#include <stdio.h>
#include <emscripten.h>

// JavaScriptから呼び出せるようにする設定
EMSCRIPTEN_KEEPALIVE
int add(int a, int b) {
    return a + b;
}
int main() {
    printf("Wasmモジュールが読み込まれました！\n");
    return 0;
}
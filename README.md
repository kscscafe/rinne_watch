# rinne_watch

Apple Watch 単体で動く睡眠導入アプリ。自我偈（妙法蓮華経如来寿量品第十六）の漢字を 1 文字ずつ表示しながら、設定した bpm のリズムで haptic を打つ。音は鳴らない。

## ビルド要件
- Xcode 26.x（watchOS 26.x SDK）
- watchOS 10.0+ を想定
- `Xcode > Settings > Components` から **watchOS Simulator Runtime** をインストールしておくこと（actool が要求するため）

## フォント（源ノ明朝 ExtraLight をバンドル）

watchOS には明朝体の日本語フォントがプリインストールされていない（Hiragino Sans 系のゴシックのみ）。中央漢字・背景リングを明朝で表示するには源ノ明朝を同梱する必要がある。

手順：

1. 以下のリリースから `SourceHanSerifJP-ExtraLight.otf` をダウンロード
   <https://github.com/adobe-fonts/source-han-serif/releases>
   - SubsetOTF の Japanese ディレクトリに入っている

2. Xcode でプロジェクトナビゲータを開き、`rinne_watch Watch App` フォルダに `.otf` をドラッグ&ドロップ
   - 「Copy items if needed」にチェック
   - Target: `rinne_watch Watch App` にチェック

3. `Info.plist` には既に登録済みなので追記不要：
   ```xml
   <key>UIAppFonts</key>
   <array>
     <string>SourceHanSerifJP-ExtraLight.otf</string>
   </array>
   ```

4. ビルドして起動。Xcode のコンソールに `[Font] Source Han Serif ...` の行が出れば認識成功。

`AppFont.serifThin(size:)` は `SourceHanSerif-ExtraLight` → `SourceHanSerifJP-ExtraLight` の順に解決し、見つからない場合は `Font.system(.thin, design: .serif)` にフォールバックする。

### サイズ削減（任意）
ExtraLight 単体でも漢字フル収録だと数MBある。漢字数が限られているので、`pyftsubset` 等で自我偈に使われる文字だけのサブセットを作るとアプリサイズを大幅に下げられる。

### デバッグログ
`rinne_watchApp.init()` 内で `#if DEBUG` ガード付きで利用可能フォント一覧を `print` している。フォント追加が反映されたかを Xcode コンソールで確認できる。リリース前に消すかどうかはお好みで。

## 操作
- 起動 → 再生ボタンで開始
- 画面タップで停止
- ⚙ ボタンで設定（開始bpm / 終了bpm / オートオフ分数）

## 内部仕様メモ
- bpm は開始→終了へセッション時間にわたって線形に逓減
- 拍ごとに `WKInterfaceDevice.current().play(.click)` を発火
- `WKExtendedRuntimeSession` でスリープを抑止
- 設定は `@AppStorage` で永続化

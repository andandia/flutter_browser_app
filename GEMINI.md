# `lib`ディレクトリの分析結果

このドキュメントは、`flutter_browser_app`プロジェクトの`lib`ディレクトリ内にあるDartファイルの分析結果をまとめたものです。

## `lib`直下のファイル

### `animated_flutter_browser_logo.dart`
- Flutter Browserのロゴをアニメーション表示するウィジェット。
- `ScaleTransition`を使い、ロゴが弾むようなアニメーションを実装している。

### `browser.dart`
- ブラウザのメインUIを構築するウィジェット。
- `IndexedStack`を使用して、通常のブラウザ表示とタブビューア表示を切り替える。
- `WillPopScope`でAndroidの「戻る」ボタンの挙動を制御し、ページの履歴バックやタブを閉じる機能を実装。
- `MethodChannel`を使い、AndroidのインテントからURLを受け取る機能を持つ。

### `custom_image.dart`
- URLから画像を表示するためのカスタムウィジェット。
- `data:`スキーマのURLにも対応しており、Base64エンコードされた画像も表示可能。
- 画像の読み込みに失敗した場合は、壊れた画像アイコンを表示する。

### `custom_popup_dialog.dart`
- カスタムのポップアップダイアログを表示するためのウィジェットとヘルパークラス。
- 画面上部からスライドインするアニメーションを持つ。

### `custom_popup_menu_item.dart`
- `PopupMenuEntry`を継承したカスタムのポップアップメニューアイテム。
- アイコンボタンの行など、より柔軟なレイアウトを可能にする。

### `empty_tab.dart`
- タブが一つも開かれていない場合に表示される画面。
- 検索エンジン（Googleなど）のロゴと検索バーを表示し、新しいタブで検索結果を開く機能を持つ。

### `javascript_console_result.dart`
- 開発者ツール内のJavaScriptコンソールの結果を一行ずつ表示するためのウィジェット。
- エラーや警告などのレベルに応じて、アイコンや色を変更する。

### `long_press_alert_dialog.dart`
- WebView内でリンクや画像を長押しした際に表示されるダイアログ。
- 新しいタブで開く、リンクのコピー、画像のダウンロードなどの操作を提供。
- リンクプレビュー機能も持つ。

### `main.dart`
- アプリケーションのエントリーポイント。
- `sqflite`（デスクトップ）や`flutter_downloader`などのプラグインの初期化を行う。
- `Provider`を使い、`BrowserModel`、`WebViewModel`、`WindowModel`の状態管理を行う。
- `WindowManagerPlus`を使い、デスクトップウィンドウの制御を行う。

### `material_transparent_page_route.dart`
- 背景が透明な`PageRoute`。カスタムダイアログなどで使用される。

### `multiselect_dialog.dart`
- 複数選択が可能なチェックボックスリストを持つダイアログ。

### `popup_menu_actions.dart`
- メインのポップアップメニューに表示されるアクションの定義。
- プラットフォーム（モバイル/デスクトップ）に応じて表示項目を切り替える。

### `project_info_popup.dart`
- プロジェクトのGitHubリポジトリへのリンクなどを表示するポップアップ。

### `tab_popup_menu_actions.dart`
- タブを長押しした際のポップアップメニューのアクションを定義。

### `tab_viewer_popup_menu_actions.dart`
- タブビューア画面のポップアップメニューのアクションを定義。

### `tab_viewer.dart`
- 開いているタブを一覧表示し、切り替えや削除ができる画面。
- ドラッグ操作でタブをスクロールできるカスタムUIを持つ。

### `util.dart`
- ユーティリティクラス。
- URLがセキュアかどうかの判定や、プラットフォーム（Android, iOS, Desktopなど）を判定する静的メソッドを提供する。

### `webview_tab.dart`
- `InAppWebView`をラップした、ブラウザの各タブの実体となるウィジェット。
- WebViewの読み込み状態、進捗、エラーハンドリングなど、主要なロジックを実装。
- 長押し、コンテキストメニュー、認証要求などのイベントを処理する。

## `lib/app_bar`

### `browser_app_bar.dart`
- ブラウザのメインAppBarを構築するウィジェット。
- デスクトップ表示とモバイル表示を切り替え、ページ内検索バーの表示/非表示を管理する。

### `certificates_info_popup.dart`
- SSL証明書の情報を表示するポップアップ。
- 証明書チェーンをたどり、発行者や有効期限などの詳細情報を表示する。

### `custom_app_bar_wrapper.dart`
- デスクトップ環境で、ウィンドウ操作ボタンを含むカスタムAppBarで通常のAppBarをラップするためのウィジェット。

### `desktop_app_bar.dart`
- デスクトップ版のAppBar。
- タブの表示、追加、クローズ機能を持つ。
- macOS風のウィンドウ操作ボタン（閉じる、最小化、最大化）を実装。

### `find_on_page_app_bar.dart`
- ページ内検索機能のUIを提供するAppBar。

### `tab_viewer_app_bar.dart`
- タブ一覧画面（`TabViewer`）で使用されるAppBar。
- 新しいタブの追加や、設定画面への遷移などのアクションを持つ。

### `url_info_popup.dart`
- URLバーの鍵アイコンをタップした際に表示されるポップアップ。
- 接続の安全性や証明書の詳細へのリンクを表示する。

### `webview_tab_app_bar.dart`
- WebViewタブが表示されている際のメインのAppBar。
- URLバー、戻る/進むボタン、リロード、ホームボタン、各種メニューなどの機能を持つ。

## `lib/models`

### `browser_model.dart`
- ブラウザ全体の設定（検索エンジン、ホームページなど）やお気に入り、Webアーカイブ（オフラインページ）を管理するモデル。
- `ChangeNotifier`を継承し、状態の永続化（`sqflite`への保存・復元）ロジックを持つ。

### `favorite_model.dart`
- お気に入りの一件一件のデータを保持するモデル（URL、タイトル、ファビコン）。

### `search_engine_model.dart`
- Google, Yahooなどの検索エンジンの情報（名前、URL、アイコンなど）を保持するモデル。

### `web_archive_model.dart`
- オフライン保存されたWebページ（Webアーカイブ）の情報を保持するモデル。

### `webview_model.dart`
- 各WebViewタブの状態（URL、タイトル、読み込み進捗、Incognitoモードか否かなど）を管理するモデル。

### `window_model.dart`
- デスクトップ環境におけるウィンドウごとの状態（タブリスト、現在のタブインデックスなど）を管理するモデル。

## `lib/pages`

### `developers/`
- **`javascript_console.dart`**: JavaScriptコンソール画面。
- **`main.dart`**: 開発者向けツールのメイン画面。`TabBar`で各ツールを切り替える。
- **`network_info.dart`**: ページの読み込みリソースを一覧表示するネットワーク情報画面。
- **`storage_manager.dart`**: CookieやLocalStorageなどのストレージを管理する画面。

### `settings/`
- **`android_settings.dart`**: Android固有のWebView設定項目。
- **`cross_platform_settings.dart`**: プラットフォーム共通の設定項目（検索エンジン、ホームページなど）。
- **`ios_settings.dart`**: iOS固有のWebView設定項目。
- **`main.dart`**: 設定画面のメインページ。`TabBar`で各プラットフォームの設定画面を切り替える。
- **`windows_settings.dart`**: Windows固有のWebView設定項目。


## Serena MCP使用ガイドライン
- **複雑なコード解析**や**アーキテクチャ理解**が必要な場面では積極的にSerenaを使用する
- **Serena推奨場面**：
  - コードベース全体の構造理解
  - シンボル間の参照関係調査
  - クラス・関数・変数の使用箇所特定
  - ファイル間の依存関係分析
  - 大規模リファクタリングの影響範囲調査
  - 設計パターンの実装箇所探索
  - バグの原因となる関連コード特定
- **通常ツール推奨場面**：
  - 単純なファイル読み込み・編集
  - 既知のファイル・関数への直接的な変更
  - シンプルな文字列検索・置換
- Serena MCPの機能を活用して効率的で正確なコード分析を心がける
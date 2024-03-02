# simple_github_search_app

<!-- markdownlint-disable -->
<h1 align="center">
  <picture>
    <img alt="icon" src="assets/icon/icon.png" width="300px">
  </picture>
</h1>
<!-- markdownlint-enable -->

Flutterで制作されたシンプルなGithubレポジトリ検索アプリ

[株式会社ゆめみ Flutter エンジニアコードチェック課題](https://github.com/yumemi-inc/flutter-engineer-codecheck) の要件を満たしています。

## ビルド

```sh
git clone https://github.com/fa0311/simple_github_search_app
flutter pub get
flutter build apk --release
flutter build web --release
```

## 貢献

VSCode の場合 [recommendations](.vscode/extensions.json) に含まれている拡張機能を全てインストールしてください。

```sh
git clone https://github.com/fa0311/simple_github_search_app
npm i
```

## 環境

```sh
[√] Flutter (Channel stable, 3.19.1, on Microsoft Windows [Version 10.0.22631.3155], locale ja-JP)
[√] Windows Version (Installed version of Windows is version 10 or higher)
[√] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[√] Chrome - develop for the web
[√] Visual Studio - develop Windows apps (Visual Studio Community 2022 17.9.1)
[√] Android Studio (version 2022.3)
[√] VS Code (version 1.87.0)
[√] Connected device (4 available)
[√] Network resources
```

```sh
node -v
v18.19.1
```

## ライブラリ

主な物を列挙

- `hooks_riverpod`
- `auto_route`
- `dio`
- `freezed`
- `mockito`

## ディレクトリ構成

```txt
├─app                next.jsのapp routerを参考
│  ├─page.dart       ページ単位のウィジェット providerに依存する
│  └─router.dart     ルーター
├─component          依存しないコンポーネント
├─infrastructure     インターフェースを担う 依存はしない
│  └─**
│     └─model        データのモデル
├─l10n               言語
├─provider           infrastructureに依存する
│  └─**
│    └─model         データのモデル
├─util               appとproviderで利用するutil
└─main.dart
```

## フォーマッタ/リンター

- `dart`
  - `analysis_options.yaml` を参照
  - line length は 120 までとする
- `json,yaml,yml,md,html,css`
  - `prettier` でフォーマットする
- `md`
  - [markdownlint](https://github.com/DavidAnson/markdownlint?tab=readme-ov-file#rules--aliases) のルール/フォーマットに従う

## CI

### Flutter CI

- `main` `release` にPushがあった場合に発火します
- `main` `release` 宛にPull Requestがあった場合に発火します

1. `pubspec.lock` が最新のものかどうかチェックします
1. `build_runner` がコミットに含まれているかチェックします
1. `cspell` のチェックに合格するかチェックします
1. `markdownlint` のチェックに合格するかチェックします
1. 自動生成されていない `*.dart` に対して `dart format` が実行されているかチェックします
1. `json,yaml,yml,md,html,css` に対して `prettier` が実行されているかチェックします
1. `flutter analyze` のチェックに合格するかチェックします
1. `flutter test` のチェックに合格するかチェックします

ローカルで試す場合は以下を行ってください

```sh
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
npx cspell **
npx prettier --check --write "{**/*,*}.{json,yaml,yml,md,html,css}"
npx markdownlint-cli "*.{md,markdown}"
dart format $(find lib -name "*.dart" -not \( -name "*.freezed.dart" -o -name "*.g.dart" -o -name "*.gr.dart" \) ) --set-exit-if-changed -l 120
dart format $(find test -name "*.dart" -not \( -name "*.freezed.dart" -o -name "*.g.dart" -o -name "*.gr.dart" \) ) --set-exit-if-changed -l 120
flutter analyze --no-fatal-infos
flutter test --exclude-tags github_api_test,golden
git diff --name-only --exit-code
```

### Flutter Android CI

- `android/**` ファイルにコミットがあった場合に発火します

1. Androidのビルドが成功するかチェックします

### Flutter Web CI

- `web/**` ファイルにコミットがあった場合に発火します

1. Webのビルドが成功するかチェックします

## CD

### Create Release

- `release` ブランチにマージされた場合に発火します

1. `pubspec.yaml` から読み取ったバージョンをもとにTagを作成します
1. Tagに対して[Release](https://github.com/fa0311/simple_github_search_app/release)を作成します
   - Androidのビルドを添付します

例: <https://github.com/fa0311/simple_github_search_app/releases/tag/v0.0.2%2B2>

### CloudFlare Pages

- `main` にマージされた場合にプレビューデプロイを行います。
- `release` にマージされた場合にデプロイを行います。

例: <https://github.com/fa0311/simple_github_search_app/pull/46#issuecomment-1972478255>

- `main` ブランチのプレビュー: <https://main.simple-github-search-app.pages.dev/>
- デプロイ: <https://simple-github-search-app.pages.dev/>

## 分からなかったこと

- ゴールデンテストをCIに組み込む方法

  - 環境によってテストが失敗するのでそれをどう対処するか
  - GoldenToolkit を利用するとunit testがwidget testとして実行される仕様？？(要検証)

- ディレクトリ構成

  - 設計についてはずっと曖昧なまま行っておりベストプラクティスがいまいちわからない
  - フロントエンドではLayer型よりもFuture型というのが流行ってるらしい

- テストの粒度、カバレッジ
- lineLength
  - 個人開発やOSSではlineLengthを無制限や120にすることが多い
  - FHDを超える高解像度モニターを利用している人の割合

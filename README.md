# text_sns

## 実行コード

### dev

flutter run --flavor dev -t lib/main_dev.dart

### prod

flutter run --flavor prod -t lib/main_prod.dart

## フォーマット

dart format --set-exit-if-changed .

flutter analyze .

## 自動生成

flutter pub run build_runner build --delete-conflicting-outputs

## Cloud Functions

firebase deploy --only functions

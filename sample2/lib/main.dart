import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ▼ river_podを利用する場合のポイント ▼
// 値を格納する「プロバイダー」（ここでは"Helloworld"の文字列）を作成します。
// プロバイダーを使用することで、公開された値をモック/オーバーライドできます。
final helloWorldProvider = Provider((_) => 'Hello World!');
// ▲ river_podを利用する場合のポイント ▲

void main() {
  runApp(
    // ▼ river_podを利用する場合のポイント ▼
    // ウィジェットがプロバイダーを読み取れるようにするには、全体をラップする必要があります
    // 「ProviderScope」ウィジェット内のアプリケーション。
    // これはプロバイダーの状態が保存される場所です。
    ProviderScope(
      child: MyApp(),
    ),
    // ▲ river_podを利用する場合のポイント ▲
  );
}

// ▼ river_podを利用する場合のポイント ▼
//　注：MyAppはflutter_hooksのHookConsumerWidgetです。
class MyApp extends HookConsumerWidget {
// ▲ river_podを利用する場合のポイント ▲

  @override
  // ▼ river_podを利用する場合のポイント ▼
  // 引数に"WidgetRef"を追加
  Widget build(BuildContext context, WidgetRef ref) {
    // ▲ river_podを利用する場合のポイント ▲

    // ▼ river_podを利用する場合のポイント ▼
    // プロバイダーを読み取るには、フック「ref.watch()」を使用できます。
    // これは、MyAppがHookConsumerWidgetであるため利用可能です。
    final String value = ref.watch(helloWorldProvider);
    // ▲ river_podを利用する場合のポイント ▲

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Sample2')),
        body: Center(
          child: Text(value),
        ),
      ),
    );
  }
}
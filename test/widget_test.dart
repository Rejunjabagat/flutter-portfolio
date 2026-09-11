import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:portfolio_app/main.dart';
import 'package:portfolio_app/providers/app_state.dart';

void main() {
  testWidgets('Home dashboard renders with default profile',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => AppState(),
        child: const PortfolioApp(),
      ),
    );

    expect(find.text('My Flutter Portfolio'), findsOneWidget);
    expect(find.textContaining('Welcome back, Student'), findsOneWidget);
    expect(find.textContaining('Activity 1'), findsOneWidget);
    expect(find.textContaining('Activity 2'), findsOneWidget);
  });
}
import 'package:flutter_test/flutter_test.dart';
import 'package:todooo/main.dart';

void main() {
  testWidgets('Добавление задачи отображает ее в списке', (WidgetTester tester) async {
    await tester.pumpWidget(const TodoApp());

    await tester.enterText(find.byType(EditableText), 'Тестовая задача');
    await tester.tap(find.text('Добавить'));
    await tester.pump();

    expect(find.text('Тестовая задача'), findsOneWidget);
  });
}

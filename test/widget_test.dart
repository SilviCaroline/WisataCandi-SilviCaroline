
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// ignore: avoid_relative_lib_imports
import '../lib/screens/profile_screen.dart';

void main() {
  testWidgets(
    'Pengujian Halaman Profile',
    (WidgetTester tester) async {
      // Menjalankan halaman Profile
      await tester.pumpWidget(
        const MaterialApp(
          home: ProfileScreen(),
        ),
      );

      // Memastikan judul Profile tampil
      expect(
        find.text('Profile'),
        findsOneWidget,
      );

      // Memastikan tombol Sign In tampil
      expect(
        find.text('Sign In'),
        findsOneWidget,
      );

      // Menekan tombol Sign In
      await tester.tap(find.text('Sign In'));
      await tester.pump();

      // Memastikan tombol berubah menjadi Sign Out
      expect(
        find.text('Sign Out'),
        findsOneWidget,
      );

      // Menekan tombol Sign Out
      await tester.tap(find.text('Sign Out'));
      await tester.pump();

      // Memastikan tombol kembali menjadi Sign In
      expect(
        find.text('Sign In'),
        findsOneWidget,
      );
    },
  );
}

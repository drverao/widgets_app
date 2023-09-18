import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    // final bool isDarkmode = ref.watch(isDarkmodeProvider);
    final bool isDarkmode = ref.watch(themeNotifierProvider).isDarkmode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        actions: [
          IconButton(
            onPressed: () {
              // ref.read(isDarkmodeProvider.notifier).state = !isDarkmode;
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            },
            icon: Icon(isDarkmode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $counter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

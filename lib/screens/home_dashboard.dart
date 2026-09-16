import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../widgets/module_card.dart';
import 'activity1_screen.dart';
import 'activity2_screen.dart';
import 'settings_screen.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  void _goTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final appState = context.watch<AppState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter Portfolio'),
        centerTitle: false,
        actions: [
          IconButton(
            tooltip: 'Settings',
            onPressed: () => _goTo(context, const SettingsScreen()),
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back, ${appState.userName}!',
                      style: theme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Everything I build for my lab goes in here, '
                      'one activity at a time.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Icon(
                          appState.isDarkMode
                              ? Icons.dark_mode
                              : Icons.light_mode,
                          size: 18,
                          color: theme.colorScheme.onPrimaryContainer,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          appState.isDarkMode
                              ? 'Dark mode is ON'
                              : 'Light mode is ON',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Laboratory Activities',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              ModuleCard(
                title: 'Activity 1: Tap Counter',
                subtitle: 'A simple stateful counter screen.',
                icon: Icons.touch_app_outlined,
                onTap: () => _goTo(context, const Activity1Screen()),
              ),
              const SizedBox(height: 12),
              ModuleCard(
                title: 'Activity 2: Quick Notes',
                subtitle: 'Add and remove notes from a local list.',
                icon: Icons.checklist_outlined,
                onTap: () => _goTo(context, const Activity2Screen()),
              ),
              const SizedBox(height: 24),
              Center(
                child: Text(
                  'Made with Flutter',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
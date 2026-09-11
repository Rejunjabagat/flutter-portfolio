# My Flutter Portfolio

Master compilation app for laboratory activities in Mobile Application Development.

Built for the **Hands-on Activity: Flutter Portfolio & State Management**.

## Features

- **Home Dashboard** – a responsive menu that lists all laboratory activities.
- **Navigation** – routes to separate Activity screens, plus a Settings screen.
- **Widget Architecture** – custom `StatelessWidget` components (`ModuleCard`)
  alongside `StatefulWidget` screens for local interactions.
- **Responsive Layout** – uses `Column`, `Row`, `Expanded`, `Flexible` and
  `FittedBox` so screens adapt to any device size without overflowing.
- **Global State Management** – the `Provider` package drives a
  `ChangeNotifier` (`AppState`) that controls the app-wide **Dark/Light theme**
  and a **user profile name**. Changing any value in Settings updates the Home
  Dashboard instantly across the whole app.

## Activities included

| Screen | Description |
| ------ | ----------- |
| Activity 1 | Tap Counter – increment / decrement / reset |
| Activity 2 | Quick Notes – add and swipe-to-delete notes |

## Project structure

```
lib/
├── main.dart                    # App entry, Provider setup, theme switching
├── providers/
│   └── app_state.dart           # Global state (ChangeNotifier)
├── screens/
│   ├── home_dashboard.dart      # Responsive menu / Home
│   ├── activity1_screen.dart    # Tap Counter
│   ├── activity2_screen.dart    # Quick Notes
│   └── settings_screen.dart     # Theme toggle + profile name
└── widgets/
    └── module_card.dart         # Reusable StatelessWidget card
```

## Setup

```sh
flutter pub get
flutter run
```

## Tests

```sh
flutter test
```
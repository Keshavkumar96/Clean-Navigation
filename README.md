# Clean Navigation

A modern, robust iOS SwiftUI application demonstrating a scalable 4-tab architecture using entirely isolated navigation stacks with the latest iOS 17 `@Observable` framework.

## Project Overview
This project provides a clean shell for a common 4-tab iOS application consisting of **Home**, **Search**, **Activity**, and **Profile**. The main goal of this architecture is to ensure that deep navigation states are kept strictly independent—so if a user taps three screens deep into the Search tab, switches to the Profile tab, and switches back, their place in the Search tab is flawlessly retained without the navigation paths bleeding into each other.

Features:
- Built for **iOS 17+** utilizing the swift macro `@Observable` for high performance state management instead of legacy Combine approaches (`ObservableObject`, `@Published`).
- **Intent-driven State-Driven Navigation**, securely encapsulating path modification logic directly inside the navigation state controllers instead of bleeding the array manipulation to the View components.
- **Dynamic Deep Linking Support**, allowing navigation and tab switching universally through a custom `cleannav://` schema, powered by string-backed view enums.
- Avoids generic views in favor of deeply decoupled domain-specific files, preventing massive view controllers or tangled routing logic. 
- Tab state persistence using dedicated `NavigationPath` wrappers inside isolated environments.
- Cleanly formatted and readable (2-space indent swift files!).

## Architecture & Code Structure 

This project groups UI and logic into tightly-bound feature folders instead of grouping by file-types, resulting in a cleaner workspace:

```
Clean Navigation/
├── Clean_NavigationApp.swift # The main app entry point
├── ContentView.swift         # The root view containing the TabView container
│
├── Home/                     # Everything for the 'Home' tab
│   ├── HomeTab.swift         # Root navigation stack host logic
│   ├── HomeScreens.swift     # Specific views related to the home tab features
│   └── HomeNavigationState.swift # @Observable container for this tab's path
│
├── Search/                   # Everything for the 'Search' tab
│   ├── SearchTab.swift
│   ├── SearchScreens.swift
│   └── SearchNavigationState.swift
│
├── Activity/                 # Everything for the 'Activity' tab
│   ├── ActivityTab.swift
│   ├── ActivityScreens.swift
│   └── ActivityNavigationState.swift
│
└── Profile/                  # Everything for the 'Profile' tab
    ├── ProfileTab.swift
    ├── ProfileScreens.swift
    └── ProfileNavigationState.swift
```

## How Navigation Works 
Instead of relying on a global app state, the navigation path is securely sandboxed inside each module.

Let's look at the Home module as an example:
1. `ContentView.swift` initializes a top-level `@State private var homeNavState = HomeNavigationState()` and passes it to the `HomeTab` via `@Bindable`.
2. `HomeTab.swift` creates the `NavigationStack` bound to `$navState.path` and passes the state to its descendent scopes using `.environment(navState)`.
3. Inside `HomeScreens.swift`, child views pull the state out safely using `@Environment(HomeNavigationState.self) var navState`.
4. The child screen triggers an explicitly designed intent natively using cleanly exported helper functions (e.g., `navState.navigate(to: .screen2)` or `navState.popBack()`) which safely mutates the path and avoids placing navigation logic inside the view.

## Deep Linking
The app robustly supports deep linking via a custom `cleannav://` URL scheme injected into the project `.pbxproj` configuration.
Our `ContentView` component automatically intercepts `cleannav` triggers, and routes safely across tabs and nested pages.

Sample supported test routes include:
- `cleannav://home/screen2` pushes directly to the *Home -> Screen 2*.
- `cleannav://search/screen4` pushes directly to the *Search -> Screen 4*.
- `cleannav://activity` switches directly to the *Activity* tab.

Since screens and tabs are mapped completely automatically by `String` raw-valued enums (e.g. `HomeScreen(rawValue:)`), we circumvent ugly hardcoded string blocks, and instead dynamically construct safe SwiftUI routing bounds!

## Requirements
- Xcode 15.0+ 
- iOS 17.0+
- Swift 5.9+

## Getting Started
To get this project running locally on your simulator:
1. Clone this repository to your local machine.
2. Open `Clean Navigation.xcodeproj` using Xcode.
3. Select an iOS 17 simulator destination (e.g. iPhone 15 Pro).
4. Run the project `(Cmd + R)`.

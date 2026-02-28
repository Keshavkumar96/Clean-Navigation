# Clean Navigation

A modern, robust iOS SwiftUI application demonstrating a scalable 4-tab architecture using entirely isolated navigation stacks with the latest iOS 17 `@Observable` framework.

## Project Overview
This project provides a clean shell for a common 4-tab iOS application consisting of **Home**, **Search**, **Activity**, and **Profile**. The main goal of this architecture is to ensure that deep navigation states are kept strictly independent—so if a user taps three screens deep into the Search tab, switches to the Profile tab, and switches back, their place in the Search tab is flawlessly retained without the navigation paths bleeding into each other.

Features:
- Built for **iOS 17+** utilizing the swift macro `@Observable` for high performance state management instead of legacy Combine approaches (`ObservableObject`, `@Published`).
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
1. `HomeTab.swift` spins up its own localized `@State private var navState = HomeNavigationState()` and passes it to its descendent scopes using `.environment(navState)`.
2. Inside `HomeScreens.swift`, child views pull the state out safely using `@Environment(HomeNavigationState.self) var navState`.
3. The child screen triggers an action natively, e.g., `navState.path.removeLast()` which updates the router bounds automatically.

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

//
//  ContentView.swift
//  Clean Navigation
//
//  Created by Keshavkumar on 01/03/26.
//

import SwiftUI

// MARK: - Root View

enum AppTab: String, Hashable {
  case home
  case search
  case activity
  case profile
}

struct ContentView: View {
  @State private var selectedTab: AppTab = .home
  @State private var homeNavState = HomeNavigationState()
  @State private var searchNavState = SearchNavigationState()
  @State private var activityNavState = ActivityNavigationState()
  @State private var profileNavState = ProfileNavigationState()
  
  var body: some View {
    TabView(selection: $selectedTab) {
      HomeTab(navState: homeNavState)
        .tabItem {
          Label("Home", systemImage: "house")
        }
        .tag(AppTab.home)
      
      SearchTab(navState: searchNavState)
        .tabItem {
          Label("Search", systemImage: "magnifyingglass")
        }
        .tag(AppTab.search)
      
      ActivityTab(navState: activityNavState)
        .tabItem {
          Label("Activity", systemImage: "bell")
        }
        .tag(AppTab.activity)
      
      ProfileTab(navState: profileNavState)
        .tabItem {
          Label("Profile", systemImage: "person")
        }
        .tag(AppTab.profile)
    }
    .onOpenURL { url in
      handleDeepLink(url: url)
    }
  }
  
  private func handleDeepLink(url: URL) {
    guard url.scheme == "cleannav" else { return }
    
    guard let host = url.host, let tab = AppTab(rawValue: host) else { return }
    selectedTab = tab
    
    let pathComponent = url.path.replacingOccurrences(of: "/", with: "")
    guard !pathComponent.isEmpty else { return }
    
    switch tab {
    case .home:
      if let screen = HomeScreen(rawValue: pathComponent) {
        homeNavState.path.append(screen)
      }
      
    case .search:
      if let screen = SearchScreen(rawValue: pathComponent) {
        searchNavState.path.append(screen)
      }
      
    case .activity:
      if let screen = ActivityScreen(rawValue: pathComponent) {
        activityNavState.path.append(screen)
      }
      
    case .profile:
      if let screen = ProfileScreen(rawValue: pathComponent) {
        profileNavState.path.append(screen)
      }
    }
  }
}

#Preview {
  ContentView()
}

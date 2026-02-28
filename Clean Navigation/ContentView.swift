//
//  ContentView.swift
//  Clean Navigation
//
//  Created by Keshavkumar on 01/03/26.
//

import SwiftUI

// MARK: - Root View

struct ContentView: View {
 var body: some View {
  TabView {
   HomeTab()
    .tabItem {
     Label("Home", systemImage: "house")
    }
   
   SearchTab()
    .tabItem {
     Label("Search", systemImage: "magnifyingglass")
    }
   
   ActivityTab()
    .tabItem {
     Label("Activity", systemImage: "bell")
    }
   
   ProfileTab()
    .tabItem {
     Label("Profile", systemImage: "person")
    }
  }
 }
}

#Preview {
 ContentView()
}

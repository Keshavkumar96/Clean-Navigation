import SwiftUI

struct SearchView1: View {
  @Environment(SearchNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Image(systemName: "magnifyingglass")
        .font(.system(size: 60))
        .foregroundStyle(.tint)
      
      Text("Search Root")
        .font(.title)
      
      Button("Go to Next Screen") {
        navState.navigate(to: .screen2)
      }
      .buttonStyle(.borderedProminent)
    }
    .navigationTitle("Search")
  }
}

struct SearchView2: View {
  @Environment(SearchNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Search Screen 2").font(.title)
      
      Button("Go to Next Screen") {
        navState.navigate(to: .screen3)
      }
      .buttonStyle(.borderedProminent)
      
      Button("Go Back One Screen") {
        navState.popBack()
      }
      .buttonStyle(.bordered)
      
      Button("Pop to Root") {
        navState.popToRoot()
      }
      .buttonStyle(.bordered)
      .tint(.red)
    }
    .navigationTitle("Search 2")
  }
}

struct SearchView3: View {
  @Environment(SearchNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Search Screen 3").font(.title)
      
      Button("Go to Next Screen") {
        navState.navigate(to: .screen4)
      }
      .buttonStyle(.borderedProminent)
      
      Button("Go Back One Screen") {
        navState.popBack()
      }
      .buttonStyle(.bordered)
      
      Button("Pop to Root") {
        navState.popToRoot()
      }
      .buttonStyle(.bordered)
      .tint(.red)
    }
    .navigationTitle("Search 3")
  }
}

struct SearchView4: View {
  @Environment(SearchNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Search Screen 4").font(.title)
      
      Button("Go Back One Screen") {
        navState.popBack()
      }
      .buttonStyle(.bordered)
      
      Button("Pop to Root") {
        navState.popToRoot()
      }
      .buttonStyle(.bordered)
      .tint(.red)
    }
    .navigationTitle("Search 4")
  }
}

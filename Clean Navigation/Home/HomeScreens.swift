import SwiftUI

struct HomeView1: View {
  @Environment(HomeNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Image(systemName: "house").font(.system(size: 60)).foregroundStyle(.tint)
      Text("Home Root").font(.title)
      
      NavigationLink("Go to Next Screen", value: HomeScreen.screen2)
        .buttonStyle(.borderedProminent)
    }
    .navigationTitle("Home")
  }
}

struct HomeView2: View {
  @Environment(HomeNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Home Screen 2").font(.title)
      
      NavigationLink("Go to Next Screen", value: HomeScreen.screen3)
        .buttonStyle(.borderedProminent)
      
      Button("Go Back One Screen") {
        navState.path.removeLast()
      }
      .buttonStyle(.bordered)
      
      Button("Pop to Root") {
        navState.path.removeLast(navState.path.count)
      }
      .buttonStyle(.bordered)
      .tint(.red)
    }
    .navigationTitle("Home 2")
  }
}

struct HomeView3: View {
  @Environment(HomeNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Home Screen 3").font(.title)
      
      NavigationLink("Go to Next Screen", value: HomeScreen.screen4)
        .buttonStyle(.borderedProminent)
      
      Button("Go Back One Screen") {
        navState.path.removeLast()
      }
      .buttonStyle(.bordered)
      
      Button("Pop to Root") {
        navState.path.removeLast(navState.path.count)
      }
      .buttonStyle(.bordered)
      .tint(.red)
    }
    .navigationTitle("Home 3")
  }
}

struct HomeView4: View {
  @Environment(HomeNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Home Screen 4").font(.title)
      
      Button("Go Back One Screen") {
        navState.path.removeLast()
      }
      .buttonStyle(.bordered)
      
      Button("Pop to Root") {
        navState.path.removeLast(navState.path.count)
      }
      .buttonStyle(.bordered)
      .tint(.red)
    }
    .navigationTitle("Home 4")
  }
}

import SwiftUI

struct HomeView1: View {
  @Environment(HomeNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Image(systemName: "house")
        .font(.system(size: 60))
        .foregroundStyle(.tint)
      
      Text("Home Root").font(.title)
      
      Button("Go to Next Screen") {
        navState.navigate(to: .screen2)
      }
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
    .navigationTitle("Home 2")
  }
}

struct HomeView3: View {
  @Environment(HomeNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Home Screen 3").font(.title)
      
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
    .navigationTitle("Home 3")
  }
}

struct HomeView4: View {
  @Environment(HomeNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Home Screen 4").font(.title)
      
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
    .navigationTitle("Home 4")
  }
}

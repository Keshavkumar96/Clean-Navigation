import SwiftUI

struct ProfileView1: View {
  @Environment(ProfileNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Image(systemName: "person")
        .font(.system(size: 60))
      foregroundStyle(.tint)
      
      Text("Profile Root").font(.title)
      
      Button("Go to Next Screen") {
        navState.navigate(to: .screen2)
      }
      .buttonStyle(.borderedProminent)
    }
    .navigationTitle("Profile")
  }
}

struct ProfileView2: View {
  @Environment(ProfileNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Profile Screen 2").font(.title)
      
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
    .navigationTitle("Profile 2")
  }
}

struct ProfileView3: View {
  @Environment(ProfileNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Profile Screen 3").font(.title)
      
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
    .navigationTitle("Profile 3")
  }
}

struct ProfileView4: View {
  @Environment(ProfileNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Profile Screen 4").font(.title)
      
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
    .navigationTitle("Profile 4")
  }
}

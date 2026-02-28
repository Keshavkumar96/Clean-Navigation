import SwiftUI

struct ProfileView1: View {
  @Environment(ProfileNavigationState.self) var navState
  var body: some View {
    VStack(spacing: 20) {
      Image(systemName: "person").font(.system(size: 60)).foregroundStyle(.tint)
      Text("Profile Root").font(.title)
      
      NavigationLink("Go to Next Screen", value: ProfileScreen.screen2)
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
      
      NavigationLink("Go to Next Screen", value: ProfileScreen.screen3)
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
    .navigationTitle("Profile 2")
  }
}

struct ProfileView3: View {
  @Environment(ProfileNavigationState.self) var navState
  var body: some View {
    VStack(spacing: 20) {
      Text("Profile Screen 3").font(.title)
      
      NavigationLink("Go to Next Screen", value: ProfileScreen.screen4)
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
    .navigationTitle("Profile 3")
  }
}

struct ProfileView4: View {
  @Environment(ProfileNavigationState.self) var navState
  var body: some View {
    VStack(spacing: 20) {
      Text("Profile Screen 4").font(.title)
      
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
    .navigationTitle("Profile 4")
  }
}

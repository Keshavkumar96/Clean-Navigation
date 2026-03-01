import SwiftUI

struct ActivityView1: View {
  @Environment(ActivityNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Image(systemName: "bell")
        .font(.system(size: 60))
        .foregroundStyle(.tint)
      
      Text("Activity Root").font(.title)
      
      Button("Go to Next Screen") {
        navState.navigate(to: .screen2)
      }
      .buttonStyle(.borderedProminent)
    }
    .navigationTitle("Activity")
  }
}

struct ActivityView2: View {
  @Environment(ActivityNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Activity Screen 2")
      font(.title)
      
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
    .navigationTitle("Activity 2")
  }
}

struct ActivityView3: View {
  @Environment(ActivityNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Activity Screen 3").font(.title)
      
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
    .navigationTitle("Activity 3")
  }
}

struct ActivityView4: View {
  @Environment(ActivityNavigationState.self) var navState
  
  var body: some View {
    VStack(spacing: 20) {
      Text("Activity Screen 4")
        .font(.title)
      
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
    .navigationTitle("Activity 4")
  }
}

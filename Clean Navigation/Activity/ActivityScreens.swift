import SwiftUI

struct ActivityView1: View {
 @Environment(ActivityNavigationState.self) var navState
 
 var body: some View {
  VStack(spacing: 20) {
   Image(systemName: "bell").font(.system(size: 60)).foregroundStyle(.tint)
   Text("Activity Root").font(.title)
   
   NavigationLink("Go to Next Screen", value: ActivityScreen.screen2)
    .buttonStyle(.borderedProminent)
  }
  .navigationTitle("Activity")
 }
}

struct ActivityView2: View {
 @Environment(ActivityNavigationState.self) var navState
 var body: some View {
  VStack(spacing: 20) {
   Text("Activity Screen 2").font(.title)
   
   NavigationLink("Go to Next Screen", value: ActivityScreen.screen3)
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
  .navigationTitle("Activity 2")
 }
}

struct ActivityView3: View {
 @Environment(ActivityNavigationState.self) var navState
 var body: some View {
  VStack(spacing: 20) {
   Text("Activity Screen 3").font(.title)
   
   NavigationLink("Go to Next Screen", value: ActivityScreen.screen4)
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
  .navigationTitle("Activity 3")
 }
}

struct ActivityView4: View {
 @Environment(ActivityNavigationState.self) var navState
 var body: some View {
  VStack(spacing: 20) {
   Text("Activity Screen 4").font(.title)
   
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
  .navigationTitle("Activity 4")
 }
}

import SwiftUI

struct ActivityTab: View {
 @Bindable var navState: ActivityNavigationState
 
 var body: some View {
  NavigationStack(path: $navState.path) {
   ActivityView1()
    .navigationDestination(for: ActivityScreen.self) { screen in
     switch screen {
     case .screen2: ActivityView2()
     case .screen3: ActivityView3()
     case .screen4: ActivityView4()
     }
    }
  }
  .environment(navState)
 }
}

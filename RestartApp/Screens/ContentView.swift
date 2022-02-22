//
//  ContentView.swift
//  RestartApp
//
//  Created by Ratti on 22/02/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardActive: Bool = true
    var body: some View {
        if isOnboardActive{
            OnboardingView()
        }
        else{
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

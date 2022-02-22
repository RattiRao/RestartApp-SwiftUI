//
//  HomeView.swift
//  RestartApp
//
//  Created by Ratti on 22/02/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardActive: Bool = true
    var body: some View {
        Text("Home View")
        Button {
            isOnboardActive = true
        } label: {
            Text("Return")
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

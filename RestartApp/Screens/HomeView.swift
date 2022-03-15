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
        VStack(spacing: 20){
            Spacer()
            ZStack {
                CircleGroupView(circleColor: .gray, circleOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .foregroundColor(.secondary)
                .fontWeight(.light)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            Button {
                isOnboardActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Return")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
        }//: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

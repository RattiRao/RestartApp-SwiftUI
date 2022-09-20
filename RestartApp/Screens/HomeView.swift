//
//  HomeView.swift
//  RestartApp
//
//  Created by Ratti on 22/02/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardActive: Bool = true
    @State private var isAnimation: Bool = false
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            ZStack {
                CircleGroupView(circleColor: .gray, circleOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimation ? 35 : -35)
                    .animation(.easeInOut(duration: 4.0).repeatForever(), value: isAnimation)
            }
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .foregroundColor(.secondary)
                .fontWeight(.light)
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            Button {
                withAnimation(.easeOut(duration: 0.5)) {
                    isOnboardActive = true
                }
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
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                isAnimation = true
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

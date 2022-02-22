//
//  OnboardingView.swift
//  RestartApp
//
//  Created by Ratti on 22/02/22.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardActive: Bool = true
    var body: some View {
        ZStack{
            Color("ColorBlue")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                Spacer()
                VStack(spacing: 0){
                    Text("Share.")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                        .fontWeight(.light)
                        .padding(.horizontal, 10)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .font(.title3)
    
                }//: VSTACK
                
                ZStack{
                    ZStack{
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }//: ZSTACK
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                    
                }//: ZSTACK
                Spacer()
            }//: VSTACK
        }//: ZSTACK
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 13 pro")
    }
}

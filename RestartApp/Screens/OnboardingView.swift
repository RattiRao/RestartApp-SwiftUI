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
                    CircleGroupView(circleColor: .white, circleOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                    
                }//: ZSTACK
                Spacer()
                
                ZStack{
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }//: HSTACK
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    HStack{
                        ZStack{
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(Color.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }//: ZSTACK
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardActive = false
                        }
                        Spacer()
                    }//: HSTACK
                    
                }//: ZSTACK
                .frame(height: 80, alignment: .center)
                .padding()
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

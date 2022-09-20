//
//  OnboardingView.swift
//  RestartApp
//
//  Created by Ratti on 22/02/22.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("onboarding") var isOnboardActive: Bool = true
    @State var btnMaxLimit: Double = UIScreen.main.bounds.size.width - 80
    @State var btnOffset: Double = 0
    @State private var isAnimation: Bool = false
    
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
                .opacity(isAnimation ? 1 : 0)
                .offset(y: isAnimation ? 0 : -40)
                .animation(.easeOut(duration: 1.0), value: isAnimation)
                ZStack{
                    CircleGroupView(circleColor: .white, circleOpacity: 0.2)
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimation ? 1 : 0)
                        .animation(.easeOut(duration: 0.5), value: isAnimation)
                    
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
                            .frame(width: 80 + btnOffset)
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
                        .offset(x: btnOffset)
                        .gesture(
                            DragGesture()
                                .onChanged({ gesture in
                                    if gesture.translation.width > 0 && gesture.translation.width <= btnMaxLimit - 30{
                                        btnOffset = gesture.translation.width
                                    }
                                })
                                .onEnded({ _ in
                                    withAnimation(.easeOut(duration: 0.5)) {
                                        if btnOffset <= btnMaxLimit/2.0 {
                                            btnOffset = 0
                                        }
                                        else {
                                            btnOffset = btnMaxLimit - 30
                                            isOnboardActive = false
                                        }
                                    }
                                })
                        )
                        Spacer()
                    }//: HSTACK
                    
                }//: ZSTACK
                .frame(height: 80, alignment: .center)
                .padding()
                .opacity(isAnimation ? 1 : 0)
                .offset(y: isAnimation ? 0 : 40)
                .animation(.easeOut(duration: 1.0), value: isAnimation)
            }//: VSTACK
        }//: ZSTACK
        .onAppear {
            isAnimation = true
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .previewDevice("iPhone 13 pro")
    }
}

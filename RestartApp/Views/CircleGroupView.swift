//
//  CircleGroupView.swift
//  RestartApp
//
//  Created by Ratti on 15/03/22.
//

import SwiftUI

struct CircleGroupView: View {
    @State var circleColor: Color
    @State var circleOpacity: Double
    @State private var isAnimation: Bool = false
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(circleColor.opacity(circleOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(circleColor.opacity(circleOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//: ZSTACK
        .blur(radius: isAnimation ? 0 : 10)
        .opacity(isAnimation ? 1 : 0)
        .scaleEffect(isAnimation ? 1 : 0.5)
        .animation(.easeOut(duration: 1.0), value: isAnimation)
        .onAppear {
            isAnimation = true
        }
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CircleGroupView(circleColor: .white, circleOpacity: 0.2)
    }
}

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
    var body: some View {
        ZStack{
            Circle()
                .stroke(circleColor.opacity(circleOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(circleColor.opacity(circleOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }//: ZSTACK
    }
}

struct CircleGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CircleGroupView(circleColor: .white, circleOpacity: 0.2)
    }
}

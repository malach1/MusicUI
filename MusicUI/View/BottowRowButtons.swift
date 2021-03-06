//
//  BottowRowButtons.swift
//  MusicUI
//
//  Created by Hui, Malachi | DCMS on 2020/05/30.
//  Copyright © 2020 Hui, Malachi | DCMS. All rights reserved.
//

import SwiftUI

struct BottowRowButtons: View {
    @State var circleTapped = false
    @State var circlePressed = false
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 70) {
            ZStack {
                Image(systemName: "backward.fill")
                    .font(.system(size: 20, weight: .bold))
                    .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                    .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
            }
            .frame(width: 60, height: 60)
            .background(
                ZStack {
                    Circle()
                        .fill(Color("Background"))
                        .frame(width: 60, height: 60)
                        .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                }
            )
            
            ZStack {
                Image(systemName: "pause.fill")
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(Color("Background"))
                    .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                    .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
            }
            .frame(width: 60, height: 60)
            .background(
                ZStack {
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color("card1"), Color("card2")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 100, height: 100)
                        .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                }
            )
            
            ZStack {
                Image(systemName: "forward.fill")
                    .font(.system(size: 20, weight: .bold))
                    .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                    .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
            }
            .frame(width: 60, height: 60)
            .background(
                ZStack {
                    Circle()
                        .fill(Color("Background"))
                        .frame(width: 60, height: 60)
                        .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                }
            )
        }
    }
}


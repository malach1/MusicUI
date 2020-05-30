//
//  topRowButtons.swift
//  MusicUI
//
//  Created by Hui, Malachi | DCMS on 2020/05/30.
//  Copyright © 2020 Hui, Malachi | DCMS. All rights reserved.
//

import SwiftUI

struct TopRowButtons: View {
    @State var ciccleTapped = false
    @State var ciclePressed = false
    
    var body: some View {
        HStack(spacing: 30) {
            ZStack {  //left arrow
                Image(systemName: "arrow.left")
                    .font(.system(size: 25, weight: .bold))
                    .offset(x: ciclePressed ? -90 : 0, y: ciclePressed ? -90: 0)
                    .rotation3DEffect(Angle(degrees: ciclePressed ? 20 : 0), axis:(x: 10, y:-10, z:0))
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
            
            Text("Now Playing")  //now playing text
                .font(.system(size: 25, weight: .heavy, design: .rounded))
                .padding()
            
            ZStack { //ellipsis button
                Image(systemName: "ellipsis")
                    .font(.system(size: 25, weight: .bold))
                    .offset(x: ciclePressed ? -90 : 0, y: ciclePressed ? -90 : 0)
                    .rotation3DEffect(Angle(degrees: ciclePressed ? 20 : 0), axis: (x: 10, y: -10, z: 0))
            }
            .frame(width: 60, height: 60)
            .background(
                ZStack {
                    Circle()
                        .fill(Color("Background"))
                        .frame(width: 60, height:60)
                        .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                        .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
                }
            )
        }
        .padding()
    }
}

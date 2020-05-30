//
//  Albumcover.swift
//  MusicUI
//
//  Created by Hui, Malachi | DCMS on 2020/05/30.
//  Copyright © 2020 Hui, Malachi | DCMS. All rights reserved.
//

import SwiftUI

struct Albumcover: View {
    var body: some View {
        VStack(spacing: 10) {
            ZStack {
                Image("cover")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 300, height: 300)
                    .blur(radius: 2)
                    .clipShape(Circle())
                    .shadow(color: Color("LightShadow"), radius: 10, x: -10, y: -10)
                    .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
            }
        }
    }
}

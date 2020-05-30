//
//  ContentView.swift
//  MusicUI
//
//  Created by Hui, Malachi | DCMS on 2020/05/30.
//  Copyright © 2020 Hui, Malachi | DCMS. All rights reserved.
//

import SwiftUI

struct MusicUIView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Rectangle()
                    .fill(Color("Background"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 5) {
                    TopRowButtons()
                    Albumcover()
                    Spacer()
                    Player()
                    Spacer()
                    Spacer()
                    BottowRowButtons()
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MusicUIView()
    }
}

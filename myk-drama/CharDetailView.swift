//
//  CharDetailView.swift
//  myk-drama
//
//  Created by User11 on 2020/10/29.
//

import SwiftUI

struct CharDetailView: View {
    
    @State private var moveDistance: CGFloat = -300
    @State private var opacity: Double = 0
    @State private var rotateDegree: Double = -180
    
    var Char : characters
    var body: some View {
        ScrollView{
            VStack {
                Image(Char.Chinese_name+"1")
                    .resizable()
                    .scaledToFit()
                    .frame(width:400, height:400)
                    .offset(x: moveDistance, y: 0)
                    .opacity(opacity)
                    .rotationEffect(.degrees(rotateDegree))
                    .animation(
                        Animation.easeOut(duration: 1.5)
                    )
                    .onAppear {
                        moveDistance += 300
                        opacity += 1
                        rotateDegree = 360
                    }
                
                Text("演員簡介")
                    .font(.largeTitle)
                Text(Char.Intro)
                    .padding()
                    .font(.system(size: 20))
//                    .multilineTextAlignment(.leading)
                    .background(Color.yellow)
                    .cornerRadius(30)
                    .padding(30)
                }
            .navigationBarTitle(Char.Chinese_name)
        }
    }
}
struct CharDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharDetailView(Char: charactersinterface[0])
    }
}

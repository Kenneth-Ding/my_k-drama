//
//  DramaDetailView.swift
//  myk-drama
//
//  Created by User16 on 2020/11/6.
//

import SwiftUI

struct DramaDetailView: View {
    
    @State private var moveDistance: CGFloat = -300
    @State private var opacity: Double = 0
    @State private var rotateDegree: Double = -180
    
    
    var Dra : dramas
    var body: some View {
        ScrollView{
            VStack {
                Image(Dra.name)
                    .resizable()
                    .scaledToFit()
                    .frame(height:400)
//                    .offset(x: moveDistance, y: 0)
                    .opacity(opacity)
                    .animation(
                        Animation.easeOut(duration: 5)
                    )
                    .onAppear {
                        moveDistance += 300
                        opacity += 1
                    }
                Text("劇情簡介")
                    .font(.largeTitle)
                Text(Dra.plot)
                    .padding()
                    .font(.system(size: 20))
//                    .multilineTextAlignment(.leading)
                    .background(Color.blue)
                    .cornerRadius(30)
                    .padding(30)
                }
            .navigationBarTitle(Dra.name)
        }
    }
}

struct DramaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DramaDetailView(Dra: dramasinterface[0])
    }
}

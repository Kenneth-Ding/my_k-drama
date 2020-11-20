//
//  DramaRowView.swift
//  myk-drama
//
//  Created by User16 on 2020/11/2.
//

import SwiftUI

struct DramaRowView: View {
    var Dra : dramas
    var body: some View {
        HStack{
            Image("icon" + Dra.num)             
                .resizable()
                .frame(width:200,height:300)
                .scaledToFill()
            Spacer()
            VStack {
                Text(Dra.plot)
                        .font(.system(size:22))
                        .padding(
                        EdgeInsets(top: 4, leading: 5, bottom: 8, trailing: 8))
            }
        }
        .clipped()
        .frame(width:355,height:300)
        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
        .cornerRadius(20)
    }
}

struct DramaRowView_Previews: PreviewProvider {
    static var previews: some View {
        DramaRowView(Dra: dramasinterface[0])
    }
}

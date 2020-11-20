//
//  CharacterRowView.swift
//  myk-drama
//
//  Created by User11 on 2020/10/20.
//

import SwiftUI

struct CharacterRowView: View {
    var Char : characters
    var body: some View {
        HStack {
            Image(Char.Chinese_name)
                .resizable()
                .scaledToFill()
                .frame(width:170,height:170)
                .clipped()
                .mask(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .offset(x: 10)
            VStack(alignment: .center){
                Text(Char.Chinese_name)
                    .font(.system(size: 35))
                Text(Char.Korean_name)
                    .font(.system(size: 22))
            }.offset(x: 30)
            Spacer()
        }.frame(height:190)

        .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.orange]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
    }
}

struct CharacterRowView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRowView(Char: charactersinterface[0])
    }
}

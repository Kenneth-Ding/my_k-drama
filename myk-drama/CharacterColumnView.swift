//
//  CharacterColumnView.swift
//  myk-drama
//
//  Created by User16 on 2020/11/6.
//

import SwiftUI

struct CharacterColumnView: View {
    var char : characters_ig
    var body: some View {
        HStack  {
            Image (char.name + "2")
                .resizable()
                .frame(width:130,height:130)
                .clipped()
                .mask(Circle())
            Spacer()
        }
    }
}

struct CharacterColumnView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterColumnView(char: ig_connect[0])
    }
}

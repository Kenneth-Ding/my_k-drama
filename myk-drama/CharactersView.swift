//
//  CharactersView.swift
//  myk-drama
//
//  Created by User11 on 2020/10/28.
//

import SwiftUI

struct CharactersView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header:Text("IG連結")
                            .font(.system(size: 35))
                            .fontWeight(.bold)){
                    ScrollView(.horizontal)  {
                        HStack {
                            ForEach(0..<ig_connect.count){
                                (index) in
                                Link(destination: URL(string: ig_connect[index].URL)!){
                                    CharacterColumnView(char: ig_connect[index])
                                }}
                        }
                    }
                }
                Section(header: Text("演員生涯").font(.system(size: 35)).fontWeight(.bold)) {
                    ForEach(0..<charactersinterface.count){(index) in
                        NavigationLink(destination: CharDetailView(Char: charactersinterface [index])){
                            CharacterRowView(Char: charactersinterface[index])
                        }}}
            }
            .navigationBarTitle("演員介紹")
        }.accentColor(.pink)
        
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}

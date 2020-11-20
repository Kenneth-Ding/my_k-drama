//
//  DramasView.swift
//  myk-drama
//
//  Created by User16 on 2020/11/2.
//

import SwiftUI

struct DramasView: View {
    var body: some View {
        NavigationView {
            List{
                Group {
                    ForEach(0..<10){ (index) in
                        Section(header: CustomeHeader(Dra : dramasinterface[index], name: dramasinterface[index].name,red:194,green:221,blue:252)){
                            NavigationLink(destination: DramaDetailView(Dra: dramasinterface[index])){
                                DramaRowView(Dra: dramasinterface [index])
                            }
                    }}
                }
            }.navigationBarTitle("劇情簡介")
        }
    }
}
struct DramasView_Previews: PreviewProvider {
    static var previews: some View {
        DramasView()
    }
}

struct CustomeHeader: View {
    var Dra : dramas
    let name: String
    let red:Double
    let green:Double
    let blue:Double
    var body: some View {
        ZStack {
            Color(red: red/255, green: green/255, blue: blue/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 360)
            Spacer()
        }.frame(width:410, height: 33)
    }
}


//
//  MainView.swift
//  myk-drama
//
//  Created by User08 on 2020/10/22.
//

import SwiftUI
import AVFoundation
import MediaPlayer

struct MainView: View {
    var body: some View {
        NavigationView {
            ZStack {
//                Color.black
                Text ("我的韓劇史")
                    .foregroundColor(Color.white)
                    .font(.custom("Nagurigaki-Crayon", size: 75))
                    .position(x: 200.0, y: 110)
                AnimatedImage()
                    .scaledToFit()
                    .scaleEffect(0.8)
                Music().offset(y: 300)
            }

            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: UnitPoint(x: 0, y: 0), endPoint: UnitPoint(x: 1, y: 1)))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Music: View {
    @State var play = true
    @State var scrollText = false
    let player = AVPlayer()
    let commandCenter = MPRemoteCommandCenter.shared()
    var body: some View {
        HStack{
            Text("韓劇主題曲")
                
                .font(.system(size:22))
                .bold()
                .foregroundColor(Color.white)
            
            Spacer()

            Text("LYn(린) - My Destiny")
                .font(.system(size:22))
                .bold()
                .foregroundColor(Color.white)
            
                
            Button(action: {
                let fileUrl=Bundle.main.url(forResource:"MyDestiny",withExtension: "mp3")
                let playerItem = AVPlayerItem(url: fileUrl!)
                self.player.replaceCurrentItem(with: playerItem)
                self.play.toggle()
                if self.play{
                    self.player.pause()
                }
                else{
                    self.player.play()
                }
                self.commandCenter.playCommand.addTarget {  event in
                    if self.player.rate == 0.0 {
                        self.player.play()
                        return .success
                    }
                    return .commandFailed
                }
                
                self.commandCenter.pauseCommand.addTarget {  event in
                    if self.player.rate == 1.0 {
                        self.player.pause()
                        return .success
                    }
                    return .commandFailed
                }
                
            }){
                Image(systemName: play ? "play.circle" : "pause.circle")
                    
                    .resizable()
                    .frame(width:40,height:40)
                    .foregroundColor(Color.white)
            }
        }
        .padding(10)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

//
//  ContentView.swift
//  myk-drama
//
//  Created by User07 on 2020/10/14.
//
import SwiftUI
import AVFoundation
import MediaPlayer

struct AnimatedImage: UIViewRepresentable {
    func makeUIView (context: Context)->UIImageView {
        let uiImage = UIImage.animatedImageNamed("icon", duration: 20)
        let imageView = UIImageView(image: uiImage)
        return imageView
    }
    func updateUIView(_ uiView: UIImageView, context: Context) {
        
    }
    typealias UIViewType = UIImageView
}

struct ContentView: View {
    var body: some View {
        ZStack {
            TabView {
                
                MainView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("主頁")
                            .onAppear {
                            let player = AVPlayer()
                            let fileUrl = Bundle.main.url(forResource: "MyDestiny", withExtension: "mp3")!
                            let playerItem = AVPlayerItem(url: fileUrl)
                            player.replaceCurrentItem(with: playerItem)
                            player.play()

                        }
                    }
                DramasView()
                    .tabItem {
                        Image(systemName:"play.rectangle.fill")
                        Text("劇情簡介")
                    }
                CharactersView()
                    .tabItem {
                        Image(systemName: "person.3.fill")
                        Text("後宮佳麗")
                    }
            }

            .accentColor(.pink)

        }

    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

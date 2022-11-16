//
//  LoopingPlayer.swift
//  macroProject
//
//  Created by Jason Lauwrin on 14/11/22.
//

import SwiftUI
import AVFoundation

struct LoopingPlayer: UIViewRepresentable{
    func makeUIView(context: Context) -> UIView{
        return PlayerUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIView, context: Context){
        
    }
}

class PlayerUIView: UIView{
    
    private var playerLayer = AVPlayerLayer()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        //load video
        let fileUrl = Bundle.main.url(forResource: "medalfull+alpha", withExtension: "mov")!
        let playerItem = AVPlayerItem(url: fileUrl)
        
        //setup layer
        let player = AVPlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        
        //play
        player.play()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct LoopingPlayer_Previews: PreviewProvider{
    static var previews: some View{
        LoopingPlayer()
    }
}

//
//  MyTableViewCell.swift
//  Test Project
//
//  Created by Gag Mkrtchyan on 9/3/20.
//  Copyright © 2020 Gag Mkrtchyan. All rights reserved.
//

import UIKit
import AVFoundation
import youtube_ios_player_helper

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var playerView: YTPlayerView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    
  
    
        
//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Video", ofType: "mp4")!))
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = cell.bounds
//        cell.layer.addSublayer(layer)
//        player.play()
//        
    
    
}

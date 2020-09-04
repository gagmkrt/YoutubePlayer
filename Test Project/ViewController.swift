//
//  ViewController.swift
//  Test Project
//
//  Created by Gag Mkrtchyan on 9/3/20.
//  Copyright © 2020 Gag Mkrtchyan. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import AVFoundation
import youtube_ios_player_helper

class ViewController: UIViewController {
    
//    @IBOutlet weak var likeButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    let urlArray = ["bsM1qdGAVbU", "IQobsZ3KyWQ", "uPERe8QzMjI", "QbRSbXFlqjI", "925PK2D0Y0I"]

    
    let buttonFb = FBLoginButton()
    
    let customUrl = "https://www.facebook.com/swiftbook.ru"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        buttonFb.center = view.center
//        buttonFb.frame.origin.y = 465
//        view.addSubview(buttonFb)
//        
//        buttonFb.delegate = self
        
//        shareButton.center = self.view.center
//        view.addSubview(shareButton)
//        playVideo()
        tableView.delegate = self
        tableView.dataSource = self
     
    }
    
   
    
//    func playVideo() {
//
//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Video", ofType: "mp4")!))
//        let layer = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        view.layer.addSublayer(layer)
//
//        player.play()
//    }
    
//    @IBAction func fbLikeButton(_ sender: UIButton) {
//
//        if let url = URL(string: "fb://profile//\(customUrl)") {
//            UIApplication.shared.open(url) { (result) in
//
//            }
//        }
//
//            if let url = URL(string: customUrl) {
//            UIApplication.shared.open(url) { (result) in
//
//            }
//        }
//
//    }
    
    
}

//extension ViewController: LoginButtonDelegate {
//
//    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
//        if result!.isCancelled {
//            print("canceled")
//
//        } else {
//            print(result?.token?.tokenString)
//            print("OK")
//
//        }
//    }
//
//
//    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
//        print("logOut")
//    }
//
//
//}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return urlArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.playerView.load(withVideoId: urlArray[indexPath.row])
        
        return cell
    }
    
    
}


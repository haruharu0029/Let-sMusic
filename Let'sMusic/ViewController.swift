//
//  ViewController.swift
//  Let'sMusic
//
//  Created by 高橋春貴 on 2020/03/07.
//  Copyright © 2020 haruki. All rights reserved.
//


import UIKit
import AVFoundation
class ViewController: UIViewController {
//実行時、一番最初にすること
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    //bundleという、ファイルや画像を管理しているクラスに、取り込んだ音源のファイル名を渡して、ファイルの場所(住所)を取得している。
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    //AVAudioPlayerの設定
    var cymbalPlayer = AVAudioPlayer()
    //ボタンが押された時の処理
    @IBAction func cymbal(_ sender: Any) {
        //AVAudioPlayer
        cymbalPlayer = try! AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
            cymbalPlayer.play()
            do {
                cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
                cymbalPlayer.play()
            } catch {
                print("シンバルで、エラーが発生しました！")
            }
    
    }
    let snarePath =
        Bundle.main.bundleURL.appendingPathComponent("snare.mp3")
    var snarePlayer = AVAudioPlayer()
    @IBAction func snare(_ sender: Any) {
        snarePlayer = try! AVAudioPlayer(contentsOf: snarePath, fileTypeHint: nil)
            snarePlayer.play()
            do {
                snarePlayer = try AVAudioPlayer(contentsOf: snarePath, fileTypeHint: nil)
                snarePlayer.play()
            } catch {
                print("スネアで、エラーが発生しました！")
            }
        }
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("きらきら武士.mp3")
    var backmusicPlayer = AVAudioPlayer()
    let backmusicPath2 = Bundle.main.bundleURL.appendingPathComponent("春の歌.mp3")
    var backmusicPlayer2 = AVAudioPlayer()
    let backmusicPath3 = Bundle.main.bundleURL.appendingPathComponent("残酷とバンザイ.mp3")
    var backmusicPlayer3 = AVAudioPlayer()
    
    @IBAction func play(_ sender: Any) {
        do {
            
        backmusicPlayer2.stop()
        backmusicPlayer3.stop()
        backmusicPlayer = try
            AVAudioPlayer(contentsOf:backmusicPath, fileTypeHint: nil)
            backmusicPlayer.numberOfLoops = -1
            backmusicPlayer.play()
        } catch {
            print("エラーが発生しました！")
        }
    }
    @IBAction func play2(_ sender: Any) {
        do {
            
            backmusicPlayer.stop()
            backmusicPlayer3.stop()
            backmusicPlayer2 = try
                AVAudioPlayer(contentsOf:backmusicPath2, fileTypeHint: nil)
                backmusicPlayer2.numberOfLoops = -1
                backmusicPlayer2.play()
            } catch {
                print("エラーが発生しました！")
            }
        }
    @IBAction func play3(_ sender: Any) {
        do {
            backmusicPlayer.stop()
            backmusicPlayer2.stop()
            backmusicPlayer3 = try
                AVAudioPlayer(contentsOf:backmusicPath3, fileTypeHint: nil)
                backmusicPlayer3.numberOfLoops = -1
                backmusicPlayer3.play()
            } catch {
                print("エラーが発生しました！")
            }
        }
    @IBAction func stop(_ sender: Any) {
        backmusicPlayer.stop()
        backmusicPlayer2.stop()
        backmusicPlayer3.stop()
    }
}


    
        




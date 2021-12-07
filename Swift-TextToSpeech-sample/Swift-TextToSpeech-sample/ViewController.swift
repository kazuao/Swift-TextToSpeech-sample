//
//  ViewController.swift
//  Swift-TextToSpeech-sample
//
//  Created by kazunori.aoki on 2021/12/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        SpeechManager.shared.speech(text: "赤巻紙青巻紙黄巻紙")
        SpeechManager.shared.speech(text: "隣の客はよく柿食う客だ")
        SpeechManager.shared.speech(text: "ヴァイオレット・エヴァーガーデン")
        SpeechManager.shared.speech(text: "極主夫道")
    }
}


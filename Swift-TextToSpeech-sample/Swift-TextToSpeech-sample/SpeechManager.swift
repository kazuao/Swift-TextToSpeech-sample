//
//  SpeechManager.swift
//  Swift-TextToSpeech-sample
//
//  Created by kazunori.aoki on 2021/12/07.
//

import Foundation
import AVFoundation

class SpeechManager {
    // MARK: Singleton
    static let shared = SpeechManager()


    // MARK: Property
    private var speechSynthesizer: AVSpeechSynthesizer


    // MARK: Initialize
    init() {
        speechSynthesizer = AVSpeechSynthesizer()
    }


    // MARK: Public
    func speech(text: String) {

        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")
        utterance.rate = 0.5 // 読み上げ速度
        utterance.pitchMultiplier = 1.0 // 読み上げる声のピッチ
        utterance.preUtteranceDelay = 0.2 // 読み上げまでのタメ
        utterance.postUtteranceDelay = 0.2 // 次のキューへのタメ
        utterance.volume = 1.0 // ボリューム
        utterance.prefersAssistiveTechnologySettings = true // Accessibilityを優先するか

        _ = utterance.speechString // 音声テキスト

        speechSynthesizer.speak(utterance)
    }

    /// 一時停止
    func pauseSpeech() {
//        speechSynthesizer.pauseSpeaking(at: .immediate) // すぐとめる
        speechSynthesizer.pauseSpeaking(at: .word) // 単語の区切りがいいときに
    }

    /// ストップ
    func stopSpeech() {
//        speechSynthesizer.stopSpeaking(at: .immediate)
        speechSynthesizer.stopSpeaking(at: .word)
    }

    /// 再開
    func continueSpeech() {
        speechSynthesizer.continueSpeaking()
    }
}

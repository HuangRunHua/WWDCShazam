//
//  Matcher.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/17.
//

import ShazamKit
import AVFAudio
import Combine

struct MatchResult: Equatable {
    let mediaItem: SHMatchedMediaItem?
    let topic: Topic?
    
    static func == (lhs: MatchResult, rhs: MatchResult) -> Bool {
        return lhs.topic == rhs.topic
    }
}

class Matcher: NSObject, ObservableObject, SHSessionDelegate {
    @Published var result = MatchResult(mediaItem: nil, topic: nil) //, song: nil)
    
    // 当特定音频录制的一部分是捕获声音的一部分时，管理匹配该音频的对象。
    private var session: SHSession?
    // 监听音频所用
    private let audioEngine = AVAudioEngine()
    private var generator = SHSignatureGenerator()
    
    func match(catalog: SHCustomCatalog) throws {
        
        // 创建一个用于匹配自定义目录中音频的新会话。
        session = SHSession(catalog: catalog)
        session?.delegate = self
        
        let audioFormat = AVAudioFormat(standardFormatWithSampleRate: audioEngine.inputNode.outputFormat(forBus: 0).sampleRate,
                                        channels: 1)
        audioEngine.inputNode.installTap(onBus: 0, bufferSize: 2048, format: audioFormat) { [weak session] buffer, audioTime in
            session?.matchStreamingBuffer(buffer, at: audioTime)
        }
        
        try AVAudioSession.sharedInstance().setCategory(.record)
        
        AVAudioSession.sharedInstance().requestRecordPermission { [weak self] success in
            guard success, let self = self else { return }
            try? self.audioEngine.start()
            print("Record Successfully")
        }
    }
    
    func session(_ session: SHSession, didFind match: SHMatch) {
        DispatchQueue.main.async {
            
            // Find the Question from all the questions that we want to show.
            // In this example, use the last Question that's after the current match offset.
            let newTopic = Topic.allTopics.last { topic in
                (match.mediaItems.first?.predictedCurrentMatchOffset ?? 0) > topic.offset
            }
            
            // Filter out similar Question objects in case of similar matches and update matchResult.
            if let currentTopic = self.result.topic, currentTopic == newTopic {
                return
            }
            
            self.result = MatchResult(mediaItem: match.mediaItems.first, topic: newTopic)
        }
    }
}


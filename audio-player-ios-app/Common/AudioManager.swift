//
//  AudioManager.swift
//  audio-player-ios-app
//
//  Created by Israel on 7/15/25.
//

import Foundation
import AVFoundation
import Combine

class AudioManager: ObservableObject {
    private var player: AVAudioPlayer?
    private var timer: Timer?
    
    @Published var isPlaying: Bool = false
    @Published var currentTime: TimeInterval = 0
    @Published var duration: TimeInterval = 0
    @Published var currentTrack: Track?

    var playlist: [Track] = []
    private var currentIndex: Int = 0

    var progress: Double {
        guard duration > 0 else { return 0 }
        return currentTime / duration
    }

    
    
    
}

struct Track: Identifiable {
    let id: String
    let title: String
    let artist: String
    let duration: Int
    let url: URL
}

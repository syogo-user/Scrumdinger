//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by 小野寺祥吾 on 2024/05/16.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}

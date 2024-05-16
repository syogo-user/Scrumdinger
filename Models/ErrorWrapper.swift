//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by 小野寺祥吾 on 2024/05/16.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
    
    init(id: UUID = UUID(), error: Error, guidance: String) {
        self.id = id
        self.error = error
        self.guidance = guidance
    }
}

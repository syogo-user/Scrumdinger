//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 小野寺祥吾 on 2024/05/15.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}

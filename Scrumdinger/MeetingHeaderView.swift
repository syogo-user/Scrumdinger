//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by 小野寺祥吾 on 2024/05/16.
//

import SwiftUI

struct MeetingHeaderView: View {
    let secondsElapsed: Int
    let secondsRemaining: Int
    let theme: Theme
    
    private var totalSeconds: Int {
        secondsElapsed + secondsRemaining
    }
    
    private var progress: Double {
        guard totalSeconds > 0 else { return 1 }
        return Double(secondsElapsed) / Double(totalSeconds)
    }
    
    private var minutesRemaining: Int {
        secondsRemaining / 60
    }
    
    var body: some View {
        ProgressView(value: progress)
            .progressViewStyle(ScrumProgressViewStyle(theme: theme))
        HStack {
            VStack(alignment: .leading) {
                Text("Seconds Elapsed")
                    .font(.caption)
                Label("\(secondsElapsed)", systemImage: "hourglass.bottomhalf.fill")
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("Seconds Remaining")
                    .font(.caption)
                Label("\(secondsRemaining)", systemImage: "hourglass.tophalf.fill")
                    .labelStyle(.traillingIcon)
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        .padding([.top, .horizontal])
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180, theme: .bubblegum)
}

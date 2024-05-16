//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by 小野寺祥吾 on 2024/05/15.
//

import SwiftUI

struct ScrumsView: View {
    @Binding var scrums: [DailyScrum]
    @State private var isPresentingNewScrumView = false
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in // DetailViewで$scrumを渡すためにここでも$scrumにしている
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                        .listRowBackground(scrum.theme.mainColor)
                }
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    isPresentingNewScrumView = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
        .sheet(isPresented: $isPresentingNewScrumView) {
            NewScrumSheet(scrums: $scrums, isPresentingNewScrumView: $isPresentingNewScrumView)
        }
    }
}

#Preview {
    ScrumsView(scrums: .constant(DailyScrum.sampleData))
}

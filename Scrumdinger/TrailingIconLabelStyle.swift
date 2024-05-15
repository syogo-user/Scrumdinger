//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 小野寺祥吾 on 2024/05/15.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var traillingIcon: Self { Self() }
}

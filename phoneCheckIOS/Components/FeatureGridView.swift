//
//  FeatureGridView.swift
//  phoneCheckIOS
//
//  Created by jinam on 7/24/25.
//

import SwiftUI

struct FeatureGridView: View {
    let features: [Feature]

    private let columns: [GridItem] = [
        GridItem(.adaptive(minimum: 150), spacing: 5)
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(features) { feature in
                    NavigationLink(value: feature) {
                        FeatureButton(feature: feature)
                    }
                }

            }
        }
    }
}

#Preview {
    let features = [
        Feature(
            icon: "map.fill",
            title: "title",
            description: "hello",
            type: .singleTouch
        ),
        Feature(
            icon: "map.fill",
            title: "title",
            description: "hello",
            type: .singleTouch
        ),Feature(
            icon: "map.fill",
            title: "title",
            description: "hello",
            type: .singleTouch
        ),
        Feature(
            icon: "map.fill",
            title: "title",
            description: "hello",
            type: .singleTouch
        ),
        Feature(
            icon: "map.fill",
            title: "title",
            description: "hello",
            type: .singleTouch
        ),
        Feature(
            icon: "map.fill",
            title: "title",
            description: "hello",
            type: .singleTouch
        ),





        
    ]
    FeatureGridView(features: features)
}

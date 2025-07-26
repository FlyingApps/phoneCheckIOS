//
//  ContentView.swift
//  phoneCheckIOS
//
//  Created by jinam on 6/16/25.
//

import SwiftUI

struct ContentView: View {
    let features: [Feature] = [
        Feature(
            icon: "hand.point.up.left",
            title: "single touch",
            description: "st-description",
            type: .singleTouch
        ),
        Feature(
            icon: "hand.point.up.left",
            title: "1",
            description: "st-description",
            type: .singleTouch
        ),
        Feature(
            icon: "hand.point.up.left",
            title: "2",
            description: "st-description",
            type: .singleTouch
        ),
        Feature(
            icon: "hand.point.up.left",
            title: "3",
            description: "st-description",
            type: .singleTouch
        ),
        Feature(
            icon: "hand.point.up.left",
            title: "4",
            description: "st-description",
            type: .singleTouch
        ),
        Feature(
            icon: "hand.point.up.left",
            title: "5",
            description: "st-description",
            type: .singleTouch
        ),
        Feature(
            icon: "hand.point.up.left",
            title: "6",
            description: "st-description",
            type: .singleTouch
        ),

    ]
    var body: some View {
        NavigationStack {
            FeatureGridView(features: features)
                .navigationTitle("Select a feature")
                .navigationDestination(for: Feature.self) { feature in
                    FeatureViewFactory.view(for: feature)
                }

        }
    }
}

#Preview {
    ContentView()
}

//
//  FeatureButton.swift
//  phoneCheckIOS
//
//  Created by jinam on 7/8/25.
//

import SwiftUI

struct FeatureButton: View {
    let feature: Feature
    
    var body: some View {
            VStack(alignment: .leading) {
                Image(systemName: feature.icon)
                    .font(.largeTitle)
                    .frame(height: 40)
                    .foregroundColor(Color.colorPalette.accentColor)
                Text(feature.title)
                    .font(.headline)
                    .foregroundColor(Color.colorPalette.fontColor)
                Text(feature.description)
                    .font(.caption)
                    .foregroundColor(Color.colorPalette.fontColor)
            }
            .padding()
            .frame(width: 160, height: 140, alignment: .leading)
            .background(Color.colorPalette.buttonColor)
            .cornerRadius(20)
    }
}

#Preview {
    FeatureButton(
        feature : Feature(
            icon: "map.fill",
            title: "title",
            description: "hello",
            type: .singleTouch
        )
    )
}

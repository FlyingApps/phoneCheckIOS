//
//  FeatureViewFactory.swift
//  phoneCheckIOS
//
//  Created by jinam on 7/22/25.
//

import SwiftUI

enum FeatureType {
    case singleTouch
    case unknown
}

struct FeatureViewFactory {
    @ViewBuilder
    static func view(for feature: Feature) -> some View {
        switch feature.type {
        case .singleTouch:
            Text("single touch view")
        case .unknown:
            Text("Unhandled feature: \(feature.title)")
        }
    }
}

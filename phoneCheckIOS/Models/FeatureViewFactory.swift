//
//  FeatureViewFactory.swift
//  phoneCheckIOS
//
//  Created by jinam on 7/22/25.
//

import SwiftUI

struct FeatureViewFactory {
    @ViewBuilder
    static func view(for feature: Feature) -> some View {
        switch feature.title {
        case "singleTouch":
            Text("single touch view")
        default:
            Text("Error")
        }
    }
}

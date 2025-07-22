//
//  Feature.swift
//  phoneCheckIOS
//
//  Created by jinam on 7/8/25.
//

import SwiftUI

struct Feature: Identifiable, Hashable {
    let id = UUID()
    let icon: String
    let title: String
    let description: String
    
    static func == (lhs: Feature, rhs: Feature) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

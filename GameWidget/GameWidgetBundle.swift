//
//  GameWidgetBundle.swift
//  GameWidget
//
//  Created by Jason Mitchell on 4/10/24.
//

import WidgetKit
import SwiftUI

@main
struct GameWidgetBundle: WidgetBundle {
    var body: some Widget {
        GameWidget()
        GameLiveActivity()
    }
}

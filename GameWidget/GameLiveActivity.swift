//
//  GameLiveActivity.swift
//  GameWidget
//
//  Created by Jason Mitchell on 4/10/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct GameAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var gameState: GameState
    }

    // Fixed non-changing properties about your activity go here!
    var homeTeam: String
    var awayTeam: String
}

struct GameLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: GameAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)
        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom")
                    // more content
                }
                
                DynamicIslandExpandedRegion(.center) {
                    Text("Center")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T")
            } minimal: {
                Text("m")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

//extension GameAttributes {
//    fileprivate static var preview: GameAttributes {
//        GameAttributes(name: "World")
//    }
//}
//
//extension GameAttributes.ContentState {
//    fileprivate static var smiley: GameAttributes.ContentState {
//        GameAttributes.ContentState(emoji: "😀")
//     }
//     
//     fileprivate static var starEyes: GameAttributes.ContentState {
//         GameAttributes.ContentState(emoji: "🤩")
//     }
//}

//#Preview("Notification", as: .content, using: GameAttributes.preview) {
//   GameLiveActivity()
//} contentStates: {
//    GameAttributes.ContentState.smiley
//    GameAttributes.ContentState.starEyes
//}
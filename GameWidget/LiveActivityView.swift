//
//  LiveActivityView.swift
//  GameWidgetExtension
//
//  Created by Jason Mitchell on 4/11/24.
//

import SwiftUI
import WidgetKit

struct LiveActivityView: View {
    var body: some View {
        ZStack {
            Image(.activityBackground)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay {
                    ContainerRelativeShape()
                        .fill(.black.opacity(0.3).gradient)
                }
            
            VStack(spacing: 12) {
                HStack {
                    Image(.warriors)
                        .teamLogoModifier(frame: 60)
                    
                    Text("125")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(.white.opacity(0.9))
                    
                    Spacer()
                    
                    Text("125")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(.black.opacity(0.7))
                    
                    Image(.bulls)
                        .teamLogoModifier(frame: 60)
                }
                
                HStack {
                    Image(.warriors)
                        .teamLogoModifier(frame: 20)
                    
                    Text("S. Curry drains a 3")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white.opacity(0.9))
                }
            }
        }
    }
}

//#Preview("Foo", as: .systemMedium) {
//    LiveActivityView()
//}

struct LiveActivityView_Previews: PreviewProvider {
    static var previews: some View {
        LiveActivityView()
            .previewContext(WidgetPreviewContext(family: .systemMedium))
            .containerBackground(for: .widget) { }
    }
}

//
//  HomeFeedView.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/2.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text("最新消息")
                    .font(.headline)
                Text("查看環保集點的新鮮事")
                    .font(.system(size: 12))
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.541))
            }
            
            Spacer()
            Button("看全部") {
                //todo
            }
            .buttonStyle(.bordered)
        }
        .padding()
        
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}

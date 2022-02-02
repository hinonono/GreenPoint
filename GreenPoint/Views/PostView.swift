//
//  PostView.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/2.
//

import SwiftUI

struct PostView: View {
    
    var posts = [
        Post(id: 1, image: "post1"),
        Post(id: 2, image: "post1"),
        Post(id: 3, image: "post1"),
        Post(id: 4, image: "post1")
    ]
    
    
    var body: some View {
        TabView {
            Image(posts[0].image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Image(posts[1].image)
                .resizable()
            .aspectRatio(contentMode: .fill)
            
            Image(posts[2].image)
                .resizable()
            .aspectRatio(contentMode: .fill)
        }
        .tabViewStyle(.page)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 230)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

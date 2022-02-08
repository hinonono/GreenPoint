//
//  MemberSettingView.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/8.
//

import SwiftUI

struct MemberSettingView: View {
    var body: some View {
        NavigationView {
            List {
                Section(content: {
                    ForEach(0..<personalInfoSettings.count) { item in
                        NavigationLink(destination: Text("fff")) {
                            Text(personalInfoSettings[item].title)
                        }
                    }
                }, header: {
                    Text("個人資料")
                })
                
                Section(content: {
                    ForEach(0..<preferenceSettings.count) { item in
                        NavigationLink(destination: Text("fff")) {
                            Text(preferenceSettings[item].title)
                        }
                    }
                }, header: {
                    Text("偏好設定")
                })
                
                Section(content: {
                    ForEach(0..<knowMoreSettings.count) { item in
                        NavigationLink(destination: Text("fff")) {
                            Text(knowMoreSettings[item].title)
                        }
                    }
                }, header: {
                    Text("了解我們")
                })
            }
            .navigationTitle(Text("設定"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MemberSettingView_Previews: PreviewProvider {
    static var previews: some View {
        MemberSettingView()
    }
}

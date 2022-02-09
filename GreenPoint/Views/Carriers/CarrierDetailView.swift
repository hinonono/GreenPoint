//
//  CarrierDetailView.swift
//  GreenPoint
//
//  Created by 謝承邑 on 2022/2/9.
//

import SwiftUI

struct CarrierDetailView: View {
    
    @State var toggleIsOn: Bool
    
    var body: some View {
        List {
            Section(content: {
                HStack {
                    Spacer()
                    VStack {
                        Image("card1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 275, height: 175, alignment: .center)
                            .padding()
                        HStack {
                            Text("妙如的卡")
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                            .padding()
//                            Button(action: {
//
//                            }, label: {
//                                Image(systemName: "pencil")
//                            })
                        }
                    }
                    Spacer()
                }
            })
            
            Section(content: {
                Toggle(isOn: $toggleIsOn) {
                    Text("消點開關")
                }
            }, footer: {
                Text("打開此開關後即可使用此載具至指定特約機構兌換或折抵環保產品。")
            })
            
            Section(content: {
                HStack {
                    Text("類別")
                    Spacer()
                    Text("悠遊卡")
                        .foregroundColor(.gray)
                }
                
                HStack {
                    Text("歸戶日期")
                    Spacer()
                    Text("2020/04/17")
                        .foregroundColor(.gray)
                }
                
                HStack {
                    Text("載具明碼")
                    Spacer()
                    Text("12345678")
                        .foregroundColor(.gray)
                }
                
                HStack {
                    Text("載具隱碼")
                    Spacer()
                    Text("12345678")
                        .foregroundColor(.gray)
                }
            })
            
            Section(content: {
                Button(role: .destructive, action: {
                    print("Button was tapped.")
                }, label: {
                    HStack {
                        Spacer()
                        Text("解除綁定")
                            .fontWeight(.bold)
                        Spacer()
                    }
                })
            })
        }
        .navigationTitle("載具詳細")
        .toolbar(content: {
            Button(action: {
                
            }, label: {
                Text("編輯載具")
            })
        })
    }
}

struct CarrierDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarrierDetailView(toggleIsOn: true)
    }
}

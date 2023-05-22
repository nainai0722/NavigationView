//
//  BView.swift
//  NavigationView
//
//  Created by 指原奈々 on 2023/05/20.
//

import SwiftUI

struct BView: View {
    @Binding var isShowBView: Bool
    
    var body: some View {
        ZStack{
            Color(.orange)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("BView")
                    .font(.largeTitle)
                Button{
                    isShowBView = false
                } label: {
                    Text("閉じる")
                        .font(.largeTitle)
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}


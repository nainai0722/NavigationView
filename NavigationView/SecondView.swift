//
//  SecondView.swift
//  NavigationView
//
//  Created by 指原奈々 on 2023/05/20.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color(.orange)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Second View")
                    .font(.largeTitle)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

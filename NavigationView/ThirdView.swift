//
//  ThirdView.swift
//  NavigationView
//
//  Created by 指原奈々 on 2023/05/20.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        ZStack{
            Color(.green)
                .edgesIgnoringSafeArea(.all)
            Text("Third View")
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

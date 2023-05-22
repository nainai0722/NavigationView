//
//  ContentView.swift
//  NavigationView
//
//  Created by 指原奈々 on 2023/05/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShowThirdView = false
    @State var isShowBView = false
    @State var isShowAlert = false
    @State var isShowDialog = false
    var body: some View {
        NavigationStack{
            VStack {
                Button {
                   isShowAlert = true
                }label:{
                    Text("アラートを表示")
                }
                .alert("タイトル", isPresented: $isShowAlert){
                    Button("キャンセル"){
                        
                    }
                    Button("OK"){
                        
                    }
                }message: {
                    Text("ここに詳細メッセージを置きます")
                }
                
                Button {
                    isShowDialog =  true
                }label: {
                    Text("ダイアログを表示")
                }
                .confirmationDialog("タイトル", isPresented: $isShowDialog, titleVisibility: .visible){
                    Button("選択肢1"){
                        
                    }
                    Button("選択肢2"){
                        
                    }
                } message: {
                    Text("メッセージ")
                }
                
                NavigationLink(destination: SecondView().navigationTitle("画面2")){
                    Text("SecondViewへ")
                }
                Button{
                    isShowThirdView = true
                }label: {
                    Text("モーダル遷移")
                        .padding()
                }
                .sheet(isPresented: $isShowThirdView) {
                    ThirdView()
                }
                Button{
                    isShowBView = true
                }label: {
                    Text("BViewへ")
                        .padding()
                }
                .sheet(isPresented: $isShowBView) {
                    BView(isShowBView: $isShowBView)
                }
            }
            .padding()
            .navigationTitle("画面1")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

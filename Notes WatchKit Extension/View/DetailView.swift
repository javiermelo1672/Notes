//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Javier Duvan Hospital Melo on 13/07/21.
//

import SwiftUI

struct DetailView: View {
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditPresented : Bool = false
    @State private var isSettingsPresented :Bool = false
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3){
            //Header
            HeaderView(title: "")
            
            //Content
            Spacer()
            ScrollView(.vertical){
                Text(note.text).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center)
            }
            Spacer()
            //Footer
            
            HStack(alignment:.center){
                Image(systemName: "gear").imageScale(.large).onTapGesture {
                    isSettingsPresented.toggle()
                }.sheet(isPresented: $isSettingsPresented, content: {
                    Settings()
                })
                Spacer()
                Text("\(count) / \(index+1)")
                Spacer()
                Image(systemName: "info.circle").imageScale(.large).onTapGesture {
                    isCreditPresented.toggle()
                }.sheet(isPresented: $isCreditPresented,  content: {
                    CreditsView()
                })
            }.foregroundColor(.secondary)
            
        }//Vstack
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleData : Note = Note(id: UUID(), text: "Hello Word!")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}

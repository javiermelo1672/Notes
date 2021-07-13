//
//  HeaderView.swift
//  Notes WatchKit Extension
//
//  Created by Javier Duvan Hospital Melo on 13/07/21.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String = ""
    
    var body: some View {
        VStack {
            //title
            if title != "" {
                Text(title.uppercased()).font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.accentColor)
            }
            //separator
            HStack{
                Capsule().frame(height:1)
                Image(systemName: "note.text")
                Capsule().frame(height:1)
            }.foregroundColor(.accentColor)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title:"Credits")
            HeaderView()
        }
    }
}

//
//  CreditsView.swift
//  Notes WatchKit Extension
//
//  Created by Javier Duvan Hospital Melo on 13/07/21.
//

import SwiftUI

struct CreditsView: View {
    @State private var randomNumber:Int = Int.random(in:1..<4)
    private var randomImage:String{
        return "developer-no\(randomNumber)"
    }
    var body: some View {
        VStack(spacing:3){
            
            Image(randomImage).resizable().scaledToFit().layoutPriority(1)
            HeaderView(title: "Credits")
            Text("Javier Melo").foregroundColor(.primary).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text("Developer").font(.footnote).foregroundColor(.secondary).fontWeight(.light)
        }//VStack
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}

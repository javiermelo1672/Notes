//
//  Settings.swift
//  Notes WatchKit Extension
//
//  Created by Javier Duvan Hospital Melo on 13/07/21.
//

import SwiftUI

struct Settings: View {
    
    @AppStorage("lineCount") var lineCount:Int = 1
    @State private var value:Float = 1.0
    
    func update(){
        lineCount = Int(value)
    }
    var body: some View {
        VStack(spacing:8){
            HeaderView(title: "Settings")
            
            Text("Lines:\(lineCount)".uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Slider(value:Binding(get:
            {
                self.value
                
            },set:{
                (newValue) in self.value = newValue
                self.update()
            }),in:1...4,step:1).accentColor(.accentColor)
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

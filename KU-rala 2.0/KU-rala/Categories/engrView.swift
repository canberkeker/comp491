//
//  caseView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct engrView: View {
    
    @State private var chemEngrPresented = false
    @State private var compEngrPresented = false
    @State private var elecEngrPresented = false
    @State private var indrEngrPresented = false
    @State private var mechEngrPresented = false
    
    var body: some View {
            VStack {
                engrSection
                NavigationLink("",isActive: $chemEngrPresented) {
                   chemEngrView()
                }
                NavigationLink("",isActive: $compEngrPresented) {
                   compEngrView()
                }
                NavigationLink("",isActive: $elecEngrPresented) {
                   elecEngrView()
                }
                NavigationLink("",isActive: $indrEngrPresented) {
                   indrEngrView()
                }
                NavigationLink("",isActive: $mechEngrPresented) {
                   mechEngrView()
                }
                                
                
            }
        
        
        .navigationTitle("ENGR")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    private var engrSection: some View {
        VStack {
            Text ("College of Engineering")
                .font(.headline)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
            Image("engr")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            
            Button("Chemical and Biological Engineering") {
                chemEngrPresented.toggle()
            }.padding(2)
            Button("Computer Engineering") {
                compEngrPresented.toggle()
                   
            }.padding(2)
            Button("Electrical and Electronics Engineering") {
                elecEngrPresented.toggle()
            }.padding(2)
            Button("Industrial Engineering") {
                indrEngrPresented.toggle()
            }.padding(2)
            Button("Mechanical Engineering") {
                mechEngrPresented.toggle()
            }.padding(2)
            
        }.padding(10)
    }


}

struct engrView_Previews: PreviewProvider {
    static var previews: some View {
        engrView()
    }
}

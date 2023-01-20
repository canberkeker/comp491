//
//  sosView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct sosView: View {
    
    @State private var archArtPresented = false
    @State private var compLitePresented = false
    @State private var historyPresented = false
    @State private var psychologyPresented = false
    @State private var philosophyPresented = false
    @State private var sociologyPresented = false
    @State private var mavaPresented = false
  
    
    var body: some View {
            VStack {
                sosSection
                NavigationLink("",isActive: $archArtPresented) {
                   archArtView()
                }
                NavigationLink("",isActive: $compLitePresented) {
                   compLiteView()
                }
                NavigationLink("",isActive: $historyPresented) {
                   historyView()
                }
                NavigationLink("",isActive: $psychologyPresented) {
                   psychologyView()
                }
                NavigationLink("",isActive: $philosophyPresented) {
                   philosophyView()
                }
                NavigationLink("",isActive: $sociologyPresented) {
                   sociologyView()
                }
                NavigationLink("",isActive: $mavaPresented) {
                   mavaView()
                }
            }
        
        
        .navigationTitle("SOS")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    private var sosSection: some View {
        VStack {
            Text ("College of Social Sciences and Humanities")
                .font(.headline)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
            Image("sos")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            
            Button("Archaeology and History of Art") {
                archArtPresented.toggle()
            }.padding(2)
            Button("Comparative Literature") {
                compLitePresented.toggle()
                   
            }.padding(2)
            Button("History") {
                historyPresented.toggle()
            }.padding(2)
            Button("Psychology") {
                psychologyPresented.toggle()
            }.padding(2)
            Button("Philosophy") {
                philosophyPresented.toggle()
            }.padding(2)
            Button("Sociology") {
                sociologyPresented.toggle()
            }.padding(2)
            Button("Media and Visual Arts") {
                mavaPresented.toggle()
            }.padding(2)
            
        }.padding(10)
    }


}

struct sosView_Previews: PreviewProvider {
    static var previews: some View {
        sosView()
    }
}

//
//  caseView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct scieView: View {
    
    @State private var chemistryPresented = false
    @State private var physicsPresented = false
    @State private var mathematicsPresented = false
    @State private var mbGeneticsPresented = false

    
    var body: some View {
            VStack {
                scieSection
                NavigationLink("",isActive: $chemistryPresented) {
                   chemistryView()
                }
                NavigationLink("",isActive: $physicsPresented) {
                   physicsView()
                }
                NavigationLink("",isActive: $mathematicsPresented) {
                   mathematicsView()
                }
                NavigationLink("",isActive: $mbGeneticsPresented) {
                   mbGeneticsView()
                }
            }
        
        
        .navigationTitle("SCIE")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    private var scieSection: some View {
        VStack {
            Text ("College of Science")
                .font(.headline)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
            Image("science")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            
            Button("Chemistry") {
                chemistryPresented.toggle()
            }.padding(2)
            Button("Physics") {
                physicsPresented.toggle()
                   
            }.padding(2)
            Button("Mathematics") {
                mathematicsPresented.toggle()
            }.padding(2)
            Button("Moleculer Biology and Genetics") {
                mbGeneticsPresented.toggle()
            }.padding(2)
            
            
        }.padding(10)
    }


}

struct scieView_Previews: PreviewProvider {
    static var previews: some View {
        scieView()
    }
}

//
//  caseView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct caseView: View {
    
    @State private var internalRelationPresented = false
    @State private var economicsPresented = false
    @State private var busninessAdministrationPresented = false
    
    var body: some View {
            VStack {
                caseSection
                NavigationLink("",isActive: $internalRelationPresented) {
                    internationalRelationsView()
                }
                NavigationLink("",isActive: $economicsPresented) {
                    economicsView()
                }
                NavigationLink("",isActive: $busninessAdministrationPresented) {
                    businessAdministrationView()
                }
                                
                
            }
        
        
        .navigationTitle("CASE")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    private var caseSection: some View {
        VStack {
            Text ("College of Administrative Sciences and Economics")
                .font(.headline)
                .foregroundColor(Color.orange)
                .multilineTextAlignment(.center)
            Image("case")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            
            Button("Internal Relations") {
                internalRelationPresented.toggle()
            }.padding(2)
            Button("Economics") {
                economicsPresented.toggle()
                   
            }.padding(2)
            Button("Business Administration") {
                busninessAdministrationPresented.toggle()
                
                
            }.padding(2)
            
        }.padding(10)
    }
}

struct caseView_Previews: PreviewProvider {
    static var previews: some View {
        caseView()
    }
}

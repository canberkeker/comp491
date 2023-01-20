//
//  CategoriesView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct CategoriesView: View {
    
    @State private var casePresented = false
    @State private var engrPresented = false
    @State private var sciePresented = false
    @State private var sosPresented = false
    @State private var lawPresented = false
    @State private var medicinePresented = false
    @State private var nursingPresented = false
    @State private var elcPresented = false
    
    
    var body: some View {
            VStack {
                Text("Please select your faculty.").font(.headline).padding(20)
                
                caseButton
                engrButton
                scieButton
                sosButton
                lawButton
                medicineButton
                nursingButton
                elcButton
     
            }
        
        
        .navigationTitle("Categories")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    private var caseButton: some View {
        VStack {
            Button("College of Administrative Sciences and Economics") {
                    casePresented.toggle()
            }
            NavigationLink("",isActive: $casePresented) {
                caseView()
            }
        }
    }
    
    private var engrButton: some View {
        VStack {
            Button("College of Engineering") {
                engrPresented.toggle()
            }
            NavigationLink("",isActive: $engrPresented) {
                engrView()
            }
        }
    }

    private var scieButton: some View {
        VStack {
            Button("College of Science") {
                sciePresented.toggle()
            }
            NavigationLink("",isActive: $sciePresented) {
                scieView()
            }
        }
    }
    
    private var sosButton: some View {
        VStack {
            Button("College of Social Sciences and Humanities") {
                sosPresented.toggle()
            }
            NavigationLink("",isActive: $sosPresented) {
                sosView()
            }
        }
    }
    
    private var lawButton: some View {
        VStack {
            Button("School of Law") {
                lawPresented.toggle()
            }
            NavigationLink("",isActive: $lawPresented) {
                lawView()
            }
        }
    }
    
    private var medicineButton: some View {
        VStack {
            Button("School of Medicine") {
                medicinePresented.toggle()
            }
            NavigationLink("",isActive: $medicinePresented) {
                medicineView()
            }
        }
    }
    
    private var nursingButton: some View {
        VStack {
            Button("School of Nursing") {
                nursingPresented.toggle()
            }
            NavigationLink("",isActive: $nursingPresented) {
                nursingView()
            }
        }
    }
    
    private var elcButton: some View {
        VStack {
            Button("English Language Center") {
                elcPresented.toggle()
            }
            NavigationLink("",isActive: $elcPresented) {
                elcView()
            }
        }
    }
    
    
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

//
//  ContentView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct ApplicationView: View {
    
    @State private var infoPresented = false
    @State private var shouldNavigateToCategories = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Text("Rent an item")
                    .foregroundColor(Color.blue)
                Spacer()
                aboutSection
                Spacer()
                contactSection
                Spacer()
                categoriesSection
                NavigationLink("",isActive: $shouldNavigateToCategories) {
                    CategoriesView()
                }
                Spacer()
                
            }.sheet(isPresented: $infoPresented, content: {
                InfoView()
            })
            .navigationTitle("KU-rala")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private var aboutSection: some View {
        HStack {
            Image("about")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            VStack {
                Text ("Our Story")
                    .font(.headline)
                    .foregroundColor(Color.orange)
                
                Text ("Press the button to get information.")
                
                Button("INFO") {
                    infoPresented.toggle()
                }
                .padding(10)
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                
            }.padding(20)
        }
    }
    
    private var contactSection: some View {
        HStack {
            VStack {
                Text ("Mail")
                    .font(.headline)
                    .foregroundColor(Color.orange)
                
                Text ("Contact us to rent or lease. ceker16@ku.edu.tr")
                    .multilineTextAlignment(.center)
                
                
            } .padding(20)
            
            Image("contact")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch) .aspectRatio(contentMode: .fit).padding(20)
            
            
        }
    }
    
    private var categoriesSection: some View {
        HStack {
            Image("categories")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            VStack {
                Text ("Categories")
                    .font(.headline)
                    .foregroundColor(Color.orange)
                
                Text ("Press the button to select your category.")
                
                Button("CATEGORIES") {
                    shouldNavigateToCategories.toggle()
                }
                .padding(10)
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                
            }.padding(15)
        }

    }
}





struct ApplicationView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationView()
    }
}

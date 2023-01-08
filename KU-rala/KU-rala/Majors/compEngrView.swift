//
//  compEngrView.swift
//  KU-rala
//
//  Created by Canberk Eker on 4.01.2023.
//

import SwiftUI

struct compEngrView: View {
    var body: some View {
        VStack {
            product1
            product2
            
        }

            .navigationTitle("Computer Engineering")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private var product1: some View {
        VStack {
            Text("Artificial Intelligence: A Modern Approach").foregroundColor(Color.red).multilineTextAlignment(.center).bold()
            HStack {
                Image("comp341")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(30)
                VStack {
                    
                    Text("Status: Active").padding(2)
                    
                    Text("Date: To end of the semester").padding(2)
                    
                    Text("Price: 2$ per week").padding(2)
                    

                }
            }
            
        }
    }
    
    private var product2: some View {
        VStack {
            Text("Computer Networking: A Top Down Approach").foregroundColor(Color.red).multilineTextAlignment(.center).bold()
            HStack {
                Image("comp416")
                    .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(30)
                VStack {
                    
                    Text("Status: Active").padding(2)
                    
                    Text("Date: To end of the semester").padding(2)
                    
                    Text("Price: 2$ per week").padding(2)
                    

                }
            }
            
        }
    }
    
    
    
}

struct compEngrView_Previews: PreviewProvider {
    static var previews: some View {
        compEngrView()
    }
}

//
//  mbGeneticsView.swift
//  KU-rala
//
//  Created by Canberk Eker on 4.01.2023.
//

import SwiftUI

struct mbGeneticsView: View {
    var body: some View {
        VStack {
            Image("noProduct")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            Text("There is no any product to rent").foregroundColor(Color.red).bold().padding(10)
            
            Text("If you have a product you want to rent, please contact us.Mail: ceker16@ku.edu.tr")
                .multilineTextAlignment(.center)
            
        }

            .navigationTitle("Molecular Biology and Genetics")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    
    
}

struct mbGeneticsView_Previews: PreviewProvider {
    static var previews: some View {
        mbGeneticsView()
    }
}

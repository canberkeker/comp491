//
//  internationalRelationsView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct internationalRelationsView: View {
    var body: some View {
        VStack {
            Image("noProduct")
                .resizable(capInsets: EdgeInsets(), resizingMode: .stretch).aspectRatio(contentMode: .fit).padding(10)
            Text("There is no any product to rent").foregroundColor(Color.red).bold().padding(10)
            
            Text("If you have a product you want to rent, please contact us.Mail: ceker16@ku.edu.tr")
                .multilineTextAlignment(.center)
            
        }

            .navigationTitle("International Relations")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    
    
}


struct internationalRelationsView_Previews: PreviewProvider {
    static var previews: some View {
        internationalRelationsView()
    }
}

//
//  InfoView.swift
//  KU-rala
//
//  Created by Canberk Eker on 3.01.2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        Text("ABOUT")
            .font(.title)
            .foregroundColor(Color.orange)
            .bold()
            .padding(20)
        Text("KU-rala is a start-up project.").bold()
            .padding(10)
        Text("Do you want to rent a product and make a profit? Let us know about any of your products that you haven't used for a while. Let's publish it on our website. Let's find someone who wants to rent suitable for your product.")
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .padding(10)
        Text("Or do you want to rent a product that you will only need for a while? Choose a product suitable for you from our site, instead of buying it, we will provide you with that product when it is convenient.")
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .padding(10)
        
        
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

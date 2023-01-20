//
//  LoginView.swift
//  KU-rala
//
//  Created by Canberk Eker on 9.01.2023.
//

import SwiftUI
import Firebase
import FirebaseAuth

class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn (email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { [weak self]
            result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                //Success
                self?.signedIn = true
            }
            
        }
    }
    
    func signUp (email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { [weak self]
            result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                self?.signedIn = true
            }
        }
    }
    
    func signOut() {
        try? auth.signOut()
        self.signedIn = false
    }
}

struct LoginView: View {
     @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            if viewModel.signedIn{
                ApplicationnView()
            }
            else {
                SignInView()
            }
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
    }
}

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        VStack{
            Text("Plese enter your e-mail and password for using KU-rala").padding()
            
            
            TextField("Email Address", text: $email).disableAutocorrection(true).autocapitalization(.none).padding().background(Color(.secondarySystemBackground))
            SecureField("Password", text: $password).padding().background(Color(.secondarySystemBackground))
            
            Button (action: {
                
                guard !email.isEmpty, !password.isEmpty else {
                    return
                }
                
                viewModel.signIn(email: email, password: password)
            }, label: {
                Text("Sign In").padding(20)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
            Text("Don't you have an account?").padding()
            NavigationLink ("Create Account", destination: SignUpView())
            
                .navigationTitle("Sign In")
            Spacer()
        }
        .padding()
        
        
        
        
    }
}

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        VStack{
            TextField("Email Address", text: $email).disableAutocorrection(true).autocapitalization(.none).padding().background(Color(.secondarySystemBackground))
            SecureField("Password", text: $password).padding().background(Color(.secondarySystemBackground))
            
            Button (action: {
                
                guard !email.isEmpty, !password.isEmpty else {
                    return
                }
                
                viewModel.signUp(email: email, password: password)
            }, label: {
                Text("Create Account").padding(20)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            })
            
        }
        .padding()
        
        Spacer()
        
        .navigationTitle("Create Account")
    }
}

struct ApplicationnView: View {
        
    @State private var infoPresented = false
    @State private var shouldNavigateToCategories = false
    @EnvironmentObject var viewModel: AppViewModel
    
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
            }
            .sheet(isPresented: $infoPresented, content: {
                InfoView()
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Log out") {
                        viewModel.signOut()
                    }
                }
            }
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
    
    private var logOutSection: some View {
        HStack {
                Button("Log out") {
                    viewModel.signOut()
                }
                .padding(10)
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                
            }.padding(15)
        }

    
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

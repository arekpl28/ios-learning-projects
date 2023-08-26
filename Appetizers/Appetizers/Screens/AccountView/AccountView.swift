//
//  AccountView.swift
//  Appetizers
//
//  Created by Arkadiusz Plumbaum on 16/08/2023.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    //    @FocusState private var focusedTextField: FormTextField?
    //
    //    enum FormTextField {
    //        case firstName, lastName, email
    //    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                    //                        .focused($focusedTextField, equals: .firstName)
                    //                        .onSubmit { focusedTextField = .lastName }
                    //                        .submitLabel(.next)
                        .textInputAutocapitalization(.words)
                    
                    TextField("Last Name", text: $viewModel.user.lastName)
                    //                        .focused($focusedTextField, equals: .lastName)
                    //                        .onSubmit { focusedTextField = .email }
                    //                        .submitLabel(.next)
                        .textInputAutocapitalization(.words)
                    
                    TextField("Email", text: $viewModel.user.email)
                    //                        .focused($focusedTextField, equals: .email)
                    //                        .onSubmit { focusedTextField = nil }
                    //                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewModel.user.birthdate,
                               displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section(header: Text("Request")){
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("🤣 Account")
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

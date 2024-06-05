//
//  PersionFormView.swift
//  class4
//
//  Created by User on 2024-06-05.
//

import SwiftUI

struct PersionFormView: View {
    
    @ObservedObject var viewModel : PersonViewModel
    
    var body: some View {
        Form{
            Section(header: Text(" ADD you info:")){
                TextField("Name ", text: $viewModel.name)
                TextField("Age ", text: $viewModel.age)
                TextField("Job ", text: $viewModel.job)
                Button(action: {viewModel.addPerson()}){
                    Text("Submit")
                }
            }
        }
    }
}



//
//  PersonListView.swift
//  class4
//
//  Created by User on 2024-06-05.
//

import SwiftUI

struct PersonListView: View {
    @ObservedObject var viewModel : PersonViewModel
    var body: some View {
        List(viewModel.persons){ person in
            VStack(alignment: .leading){
                Text(person.name).font(.headline)
                Text("Age : \(person.age)")
                Text("Job : \(person.job)")
            }
        }
    }
}



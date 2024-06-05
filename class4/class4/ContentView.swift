//
//  ContentView.swift
//  class4
//
//  Created by User on 2024-06-05.
//

import SwiftUI

struct PersonFormListApp : App{
    @StateObject private  var viewModel = PersonViewModel()
    var body: some Scene{
        WindowGroup{
            ContentView().environmentObject(viewModel)
        }
        
    }
}

struct ContentView: View {
@EnvironmentObject var viewModel : PersonViewModel
    var body: some View {
        NavigationView{
            VStack{
                PersionFormView(viewModel: viewModel)
                PersonListView(viewModel: viewModel)
            }
            .navigationTitle("Person Form List :")
        }
    }
}

#Preview {
    ContentView().environmentObject(PersonViewModel())
}

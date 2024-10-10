//
//  ContentView.swift
//  JokesAppSwfitUI
//
//  Created by Sabri Çetin on 27.09.2024.
//
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesViewModel = JokesViewModel()
    
    @State private var searchText = ""
    @State private var filteredJokes = [Jokes]()
    
    var body: some View {
        
        NavigationView {
            
            List(jokesViewModel.jokes) { element in
                
                NavigationLink(destination: DetailView(joke: element)) {
                    Text(element.value)
                }
                
               
            } .navigationTitle("Jokes").toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        jokesViewModel.addNewJokes()
                    }
                label: {
                    Image(systemName: "plus")
                }
                }
            }
            
        }.searchable(text: $searchText).onChange(of: searchText) { searchJokes in
            
            if searchJokes.isEmpty {
                filteredJokes = jokesViewModel.jokes
            } else {
                filteredJokes = jokesViewModel.jokes.filter { $0.value.lowercased().contains(searchJokes.lowercased()) }
            }
            //print(searchJokes)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
static var previews: some View {
            ContentView()
                }
            }
        

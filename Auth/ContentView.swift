//
//  ContentView.swift
//  Auth
//
//  Created by user on 2/21/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    @State private var username: String = ""
     @State private var password: String = ""
    var isSecureField = false
    var body: some View {
        NavigationView {
            VStack{
               }.padding()
   }
    }
}



#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

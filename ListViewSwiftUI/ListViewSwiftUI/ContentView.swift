//
//  ContentView.swift
//  ListViewSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 08/09/20.
//  Copyright © 2020 Shreyas Vilaschandra Bhike. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            //Navigation
            //Background
//            Color.black
//                .opacity(0.65).edgesIgnoringSafeArea(.all)
            
         ListView()
         DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListView: View {
    var body: some View {
        List(0 ..< 5) { item in
            NavigationLink(destination: DetailView()) {
                Text("Tap to see more : Example !")
                .foregroundColor(Color.blue)

                    
            }
            }.padding().navigationBarTitle("List View !")
    }
}

// Put this in a new .swift file!
struct DetailView: View {
    var body: some View {
       ZStack {
       
       //Background
       Color.black
           .opacity(1).edgesIgnoringSafeArea(.all)
      
        VStack {
            Text("The App Wizard 👋")
            .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.all)
            Text("Welcome To My Page☺️")
            .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.all)
            Text("Follow Me On Github")
            .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.all)
        }
        }
    }
}

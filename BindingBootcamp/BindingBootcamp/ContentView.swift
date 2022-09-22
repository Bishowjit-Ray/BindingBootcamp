//
//  ContentView.swift
//  BindingBootcamp
//
//  Created by Bishowjit Ray on 13/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea(.all)
          
            VStack{
                Text(title)
                    .font(.title)
                    .foregroundColor(Color.white)
              
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}
struct ButtonView: View{
    @Binding var backgroundColor: Color
    @State var ButtonColor: Color = Color.red
    @Binding var title:String
    var body: some View{
        Button(action: {
            backgroundColor = Color.indigo
            ButtonColor = Color.purple
            title = "New title"
            
        }, label: {
            Text("Button")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding()
                .padding(.horizontal)
                .background(ButtonColor)
                .cornerRadius(20)
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

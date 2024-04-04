//
//  ContentView.swift
//  tareaclasrrom1
//
//  Created by Jeanpierre on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CabeceraView()
            HStack (spacing: 10) {
                LuchadorView(luchador: "Goku", fuerza: "800/1000", trans: "Ultra Instinc", colorTexto: .yellow, colorFondo: .red)
                    
                ZStack {
                    LuchadorView(luchador: "Vegeta", fuerza: "790/1000", trans: "Ultra Ego", colorTexto: .blue, colorFondo: .gray)
                    Text("Lo puedes entrenar")
                        .font(.system(.caption,design: .rounded))
                        .fontWeight(.bold)
                        .background(.yellow)
                        .padding(5)
                        .offset(x: 5, y: 60)
                }
                
              
                }
            ZStack {
                LuchadorView(luchador: "Vegeto", fuerza: "1500/2000", trans: "Ultra Instinc", colorTexto: .black, colorFondo: .orange)
                   
                Image("vegito")
                    .resizable()
                    .frame(width: 70, height: 60)
                    .offset(x: 5, y: 65)
                Text("fucion entre vegeta y goku")
                    .fontWeight(.bold)
                    .background(.red)
                    .offset(x: 5, y: 90)
                
            }.padding(5)
        
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CabeceraView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("elige")
                .font(.system(.largeTitle,design: .rounded))
                .foregroundColor(.purple)
                .fontWeight(.black)
            Text("luchador")
                .font(.system(.largeTitle,design: .rounded))
                .foregroundColor(.purple)
                .fontWeight(.black)
        }
    }
}

struct LuchadorView: View {
    var luchador : String
    var fuerza : String
    var trans : String
    var colorTexto : Color
    var colorFondo : Color
    
    
    var body: some View {
        VStack{
            Text(luchador)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(colorTexto)
            Text(fuerza)
                .font(.system(size: 14,weight: .heavy,design: .rounded))
                .foregroundColor(colorTexto)
            Text(trans)
                .font(.headline)
                .foregroundColor(colorTexto)
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 100,maxHeight: 150)
        .padding(40)
        .background(colorFondo)
        .cornerRadius(10)
    }
}

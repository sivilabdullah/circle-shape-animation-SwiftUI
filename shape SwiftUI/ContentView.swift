//
//  ContentView.swift
//  shape SwiftUI
//
//  Created by abdullah's Ventura on 9.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State var firsCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirthCirclePercentage : Double = 0
    var body: some View {
        ZStack{
            
         Circul(lineWidth: 40,
                backgroundColor: Color.gray.opacity(0.2),
                foregroundColor: Color.yellow.opacity(0.9),
                percentage: firsCirclePercentage)
         .frame(width: 450, height: 450, alignment: .center)
         .onTapGesture {
             if self.firsCirclePercentage == 0 {
                 self.firsCirclePercentage = 30
             }else{
                 self.firsCirclePercentage = 0
             }
         }
            Circul(lineWidth: 40,
                   backgroundColor: Color.green.opacity(0.2),
                   foregroundColor: Color.blue.opacity(0.9),
                   percentage: thirthCirclePercentage)
            .frame(width: 350, height: 350, alignment: .center)
            .onTapGesture {
                if self.thirthCirclePercentage == 0 {
                    self.thirthCirclePercentage = 40
                }else{
                    self.thirthCirclePercentage = 0
                }
            }
            
            Circul(lineWidth: 40,
                   backgroundColor: Color.red.opacity(0.2),
                   foregroundColor: Color.purple.opacity(0.9),
                   percentage: secondCirclePercentage)
            .frame(width: 250, height: 250, alignment: .center)
            .onTapGesture {
                if self.secondCirclePercentage == 0 {
                    self.secondCirclePercentage = 50
                }else{
                    self.secondCirclePercentage = 0
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Generic.swift
//  TIL
//
//  Created by sueun kim on 11/30/23.
//

import SwiftUI

struct Generic: View {
    @State var total: String = ""
    var body: some View {
        VStack{
            Text(total)
            Button{
               var number1 = 3
               var number2 = 5
               genericCalculate(number1, number2)
            }label: {
                Text("Calculate")
            }
        }
    }
    private func calculate(_ first: Int, _ second: Int) -> Int{
       return first + second
    }
    private func genericCalculate<T>(_ first: T, _ second: T){
        print(first, second)
    }
}

#Preview {
    Generic()
}

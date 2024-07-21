//
//  AnswerButton.swift
//  Counter
//
//  Created by ohm konkani on 2024-07-21.
//

import SwiftUI

struct AnswerButton: View {
    var number : Int
    var body: some View {
        Text("\(number)")
            .frame(width: 100, height: 100)
            .font(.system(size: 43, weight: .bold))
            .foregroundColor(Color.white)
            .background(Color.green)
            .clipShape(Circle())
            .padding()    
    }
}

#Preview {
    AnswerButton(number: 100)
}

//
//  SimpleTransition.swift
//  homework12
//
//  Created by Banibe Ebegbodi on 10/29/24.
//

import SwiftUI

struct SimpleTransition: View {
    @State private var show = false
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 300, height: 300)
                .foregroundStyle(.green)
                .overlay(
                    Text("Show details")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundStyle(.white)
                )
            if show {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 300, height: 300)
                    .foregroundStyle(.purple)
                    .overlay(
                        Text("Well, here is the details")
                            .font(.system(.largeTitle, design: .rounded))
                            .bold()
                            .foregroundStyle(.white)
                    )
                    .transition(.scale(scale: 0, anchor: .bottom))
            }
        }
        .onTapGesture {
            withAnimation(.default) {
                self.show.toggle()
            }
        }
    }
}

#Preview {
    SimpleTransition()
}

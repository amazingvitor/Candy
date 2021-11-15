//
//  Money.swift
//  Candy
//
//  Created by Vitor Hugo on 15/11/21.
//

import SwiftUI

struct Money: View {
    @StateObject var appMoney: AppMoney = AppMoney()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button {
                    appMoney.moneyTypes(type: .One)
                } label: {
                    Text("$1.00 - Quantidade: \(appMoney.one)")
                        .font(.custom("Nunito-Regular", size: 16))
                        .foregroundColor(Color.baseBlack)
                        .padding()
                        .background(
                            Capsule()
                                .foregroundColor(Color.candyGreen)
                        )
                }
                
                Button {
                    appMoney.moneyTypes(type: .Two)
                } label: {
                    Text("$2.00 - Quantidade: \(appMoney.two)")
                        .font(.custom("Nunito-Regular", size: 16))
                        .foregroundColor(Color.baseBlack)
                        .padding()
                        .background(
                            Capsule()
                                .foregroundColor(Color.candyYellow)
                        )
                }
                
                Button {
                    appMoney.moneyTypes(type: .Three)
                } label: {
                    Text("$3.00 - Quantidade: \(appMoney.three)")
                        .font(.custom("Nunito-Regular", size: 16))
                        .foregroundColor(Color.baseBlack)
                        .padding()
                        .background(
                            Capsule()
                                .foregroundColor(Color.candyBlue)
                        )
                }
            }
        }
                .environmentObject(appMoney)
    }
}

struct Money_Previews: PreviewProvider {
    static var previews: some View {
        Money()
    }
}

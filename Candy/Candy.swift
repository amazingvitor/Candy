//
//  Candy.swift
//  Candy
//
//  Created by Vitor Hugo on 15/11/21.
//

import SwiftUI

struct Candy: View {
    @StateObject var appMoney: AppMoney = AppMoney()
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Button {
                    print("Vitor")
                } label: {
                    Text("vitor")
                }.disabled(appMoney.money < 6)
                
                Button {
                    appMoney.removeMoney(toRemove: 7)
                } label: {
                    VStack(alignment: .leading) {
                        Image("donut")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                        VStack(alignment: .leading) {
                            Text("Donut")
                                .font(.custom("Nunito-Bold", size: 20))
                                .foregroundColor(Color.white)
                                .padding(.top, 5)
                            Text("$7.00")
                                .font(.custom("Nunito-Regular", size: 16))
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(30)
                    .background(
                        RoundedRectangle(cornerRadius: 14)
                            .foregroundColor(Color.candyPurple)
                    )
                }
                .disabled(appMoney.money < 7)
                
                Button {
                    appMoney.removeMoney(toRemove: 8)
                } label: {
                    VStack(alignment: .leading) {
                        Image("cupcake")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                        VStack(alignment: .leading) {
                            Text("Cup Cake")
                                .font(.custom("Nunito-Bold", size: 20))
                                .foregroundColor(Color.white)
                                .padding(.top, 5)
                            Text("$8.00")
                                .font(.custom("Nunito-Regular", size: 16))
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(30)
                    .background(
                        RoundedRectangle(cornerRadius: 14)
                            .foregroundColor(Color.candyBlue)
                    )
                }
                .disabled(appMoney.money < 8)
            }
        }
        .environmentObject(appMoney)
    }
}

struct Candy_Previews: PreviewProvider {
    static var previews: some View {
        Candy()
    }
}

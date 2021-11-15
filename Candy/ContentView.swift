//
//  ContentView.swift
//  Candy
//
//  Created by Vitor Hugo on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var appMoney: AppMoney = AppMoney()
    @State var showingAlertOne: Bool = false
    @State var showingAlertTwo: Bool = false
    @State var showingAlertThree: Bool = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Text("Dinheiro")
                        .font(.custom("Nunito-Bold", size: 40))
                        .padding(.bottom)
                    Spacer()
                    Text("Total: \(appMoney.money)")
                        .font(.custom("Nunito-Regular", size: 10))
                        .foregroundColor(Color.baseBlack)
                        .padding(10)
                        .background(
                            Capsule()
                                .foregroundColor(Color.candyYellow)
                        )
                }
                
                VStack {
                    Button {
                        appMoney.moneyTypes(type: .One)
                    } label: {
                        Text("$1.00 - Quantidade: \(appMoney.one)")
                            .font(.custom("Nunito-Regular", size: 16))
                            .foregroundColor(Color.baseBlack)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
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
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
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
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color.candyBlue)
                            )
                    }
                }
            }
            .padding(.horizontal)
            VStack(alignment: .leading) {
                Text("Comprar")
                    .font(.custom("Nunito-Bold", size: 40))
                    .padding(.bottom)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Button {
                            self.showingAlertOne = true
                        } label: {
                            VStack(alignment: .leading) {
                                Image("icecream")
                                    .resizable()
                                    .frame(width: 100, height: 100, alignment: .center)
                                VStack(alignment: .leading) {
                                    Text("Ice Cream")
                                        .font(.custom("Nunito-Bold", size: 20))
                                        .foregroundColor(Color.white)
                                        .padding(.top, 5)
                                    Text("$6.00")
                                        .font(.custom("Nunito-Regular", size: 16))
                                        .foregroundColor(Color.white)
                                }
                            }
                            .padding(30)
                            .background(
                                RoundedRectangle(cornerRadius: 14)
                                    .foregroundColor(Color.candyPink)
                            )
                        }
                        .alert(isPresented: $showingAlertOne) {
                            Alert(title: Text("Troco"),
                                  message: Text("$1.00: \(appMoney.removePreview(toRemove: 6).one) - $2.00: \(appMoney.removePreview(toRemove: 6).two) - $3.00: \(appMoney.removePreview(toRemove: 6).three)"),
                                  primaryButton: .default(Text("Comprar!"), action: {
                                appMoney.removeMoney(toRemove: 6)
                                appMoney.candyOne = appMoney.candyOne + 1
                                self.showingAlertOne = false
                            }),
                                  secondaryButton: .destructive(Text("Cancelar"), action: {
                                self.showingAlertOne = false
                            }))
                        }
                        .disabled(appMoney.money < 6)
                        
                        
                        Button {
                            self.showingAlertTwo = true
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
                        .alert(isPresented: $showingAlertTwo) {
                            Alert(title: Text("Troco"),
                                  message: Text("$1.00: \(appMoney.removePreview(toRemove: 7).one) - $2.00: \(appMoney.removePreview(toRemove: 7).two) - $3.00: \(appMoney.removePreview(toRemove: 7).three)"),
                                  primaryButton: .default(Text("Comprar!"), action: {
                                appMoney.removeMoney(toRemove: 7)
                                appMoney.candyTwo = appMoney.candyTwo + 1
                                self.showingAlertTwo = false
                            }),
                                  secondaryButton: .destructive(Text("Cancelar"), action: {
                                self.showingAlertTwo = false
                            }))
                        }
                        .disabled(appMoney.money < 7)
                        
                        Button {
                            self.showingAlertThree = true
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
                        .alert(isPresented: $showingAlertThree) {
                            Alert(title: Text("Troco"),
                                  message: Text("$1.00: \(appMoney.removePreview(toRemove: 8).one) - $2.00: \(appMoney.removePreview(toRemove: 8).two) - $3.00: \(appMoney.removePreview(toRemove: 8).three)"),
                                  primaryButton: .default(Text("Comprar!"), action: {
                                appMoney.removeMoney(toRemove: 8)
                                appMoney.candyThree = appMoney.candyThree + 1
                                self.showingAlertThree = false
                            }),
                                  secondaryButton: .destructive(Text("Cancelar"), action: {
                                self.showingAlertThree = false
                            }))
                        }
                        .disabled(appMoney.money < 8)
                    }
                }
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading) {
                Text("Você tem")
                    .font(.custom("Nunito-Bold", size: 40))
                    .padding(.bottom)
                VStack {
                    HStack {
                        Image("icecream")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: .center)
                        VStack(alignment: .leading) {
                            Text("Ice Cream")
                                .font(.custom("Nunito-Bold", size: 20))
                                .foregroundColor(Color.white)
                            Text("Quantidade: \(appMoney.candyOne)")
                                .font(.custom("Nunito-Bold", size: 20))
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.candyPink)
                    )
                    
                    VStack {
                        HStack {
                            Image("donut")
                                .resizable()
                                .frame(width: 30, height: 30, alignment: .center)
                            VStack(alignment: .leading) {
                                Text("Donut")
                                    .font(.custom("Nunito-Bold", size: 20))
                                    .foregroundColor(Color.white)
                                Text("Quantidade: \(appMoney.candyTwo)")
                                    .font(.custom("Nunito-Bold", size: 20))
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.candyPurple)
                        )
                        
                        VStack {
                            HStack {
                                Image("cupcake")
                                    .resizable()
                                    .frame(width: 30, height: 30, alignment: .center)
                                VStack(alignment: .leading) {
                                    Text("Cupcake")
                                        .font(.custom("Nunito-Bold", size: 20))
                                        .foregroundColor(Color.white)
                                    Text("Quantidade: \(appMoney.candyThree)")
                                        .font(.custom("Nunito-Bold", size: 20))
                                        .foregroundColor(Color.white)
                                }
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color.candyBlue)
                            )
                        }
                    }
                }
            }
            .padding(.horizontal)
            Spacer()
        }
        .environmentObject(appMoney)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


enum MoneyType {
    case One
    case Two
    case Three
}

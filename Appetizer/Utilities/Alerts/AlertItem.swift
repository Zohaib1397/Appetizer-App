//
//  AlertItem.swift
//  Appetizer
//
//  Created by Zohaib Ahmed on 22/07/2024.
//

import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: Text
    let description: Text
    let alertButton: Alert.Button
}

struct AlertContext{
    static var invalidURL = AlertItem(title: Text("Server Error"),
                                      description: Text("Something went wrong with url, Please contract support."),
                                      alertButton: .default(Text("OK")))
    static var invalidResponse = AlertItem(title: Text("Server Error"),
                                      description: Text("Something went getting response from the server. Please make sure you have access rights."),
                                      alertButton: .default(Text("OK")))
    static var invalidData = AlertItem(title: Text("Server Error"),
                                      description: Text("Something went wrong while processing data, Please contract support."),
                                      alertButton: .default(Text("OK")))
    static var unableToComplete = AlertItem(title: Text("Server Error"),
                                      description: Text("Something went wrong with connection, Please make sure you are connected to internet."),
                                      alertButton: .default(Text("OK")))
}

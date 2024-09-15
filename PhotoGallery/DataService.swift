//  /*
//
//  Project: PhotoGallery
//  File: DataService.swift
//  Created by: Elaidzha Shchukin
//  Date: 10.09.2024
//
//  */

import Foundation

class ImageSelection: ObservableObject {
    @Published var selectedData: dataMode? = nil
    @Published var showingSheet: Bool = false
}

struct dataMode: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var title: String
    
    static func == (lhs: dataMode, rhs: dataMode) -> Bool {
        return lhs.id == rhs.id
    }
}

var theImages = [
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey")
]

var theImages1 = [
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey")
]

var theImages2 = [
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey"),
    dataMode(name: "Hey", title: "Hey")
]

struct sideBars: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
    var tab: TabIcon
    var insdex: Int
}

let sidebars = [
    sideBars(icon: "square.stack", title: "Favorite", tab: .Favorite, insdex: 0),
    sideBars(icon: "magnifyingglass", title: "Home", tab: .Home, insdex: 1),
    sideBars(icon: "house", title: "Card", tab: .Card, insdex: 2),
    sideBars(icon: "star", title: "Purchases", tab: .Purchases, insdex: 3),
    sideBars(icon: "person", title: "Notification", tab: .Notification, insdex: 4),
]

enum TabIcon: String {
    case Home
    case Card
    case Favorite
    case Purchases
    case Notification
}

struct sideBars1: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
    var tab: TabIcon1
    var insdex: Int
}

let sidebars1 = [
    sideBars1(icon: "house.fill", title: "Home", tab: .Home, insdex: 0),
    sideBars1(icon: "creditcard.fill", title: "Notification", tab: .Notification, insdex: 1),
    sideBars1(icon: "heart.fill", title: "Favorite", tab: .Favorite, insdex: 2),
    sideBars1(icon: "cart.fill.badge.plus", title: "Purchases", tab: .Purchases, insdex: 3),
    sideBars1(icon: "bell.badge.fill", title: "Favorite", tab: .Favorite, insdex: 4),
]

enum TabIcon1: String {
    case Home
    case Card
    case Favorite
    case Purchases
    case Notification
}

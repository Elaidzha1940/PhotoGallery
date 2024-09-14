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
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    
]

var theImages1 = [
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    
]

var theImages2 = [
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    dataMode(id: "Hey", name: "Hey", title: "Hey"),
    
]

struct sideBar: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
    var tab: TabIcon1
    var insdex: Int
}

let sideBar = [
    sideBar(icon: "square.stack", title: "Home", tab: .Card, insdex: 0),
    sideBar(icon: "square.stack", title: "Card", tab: .Card, insdex: 1),
    sideBar(icon: "square.stack", title: "Purchases", tab: .Card, insdex: 2),
    sideBar(icon: "square.stack", title: "Favorite", tab: .Card, insdex: 3),
    sideBar(icon: "square.stack", title: "Notification", tab: .Card, insdex: 4),
]

enum TabIcon: String {
    case Home
    case Card
    case Favorite
    case Purchases
    case Notification
}

struct sideBar1: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
    var tab: TabIcon1
    var insdex: Int
}

let sideBar1 = [
    sideBar(icon: "square.stack", title: "Home", tab: .Card, insdex: 0),
    sideBar(icon: "square.stack", title: "Card", tab: .Card, insdex: 1),
    sideBar(icon: "square.stack", title: "Purchases", tab: .Card, insdex: 2),
    sideBar(icon: "square.stack", title: "Favorite", tab: .Card, insdex: 3),
    sideBar(icon: "square.stack", title: "Notification", tab: .Card, insdex: 4),
]

enum TabIcon1: String {
    case Home
    case Card
    case Favorite
    case Purchases
    case Notification
}

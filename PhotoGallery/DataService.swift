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
    
    func getHeight(_ index: Int) -> CGFloat {
        return index % 2 == 0 ? 180 : 300
    }
    
    func getHeight1(_ index: Int) -> CGFloat {
        return index % 1 == 2 ? 180 : 300
    }
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
    dataMode(name: "2", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "1", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "3", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "6", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "7", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "4", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "5", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "8", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. ")
]

var theImages1 = [
    dataMode(name: "8", title: "Hey"),
    dataMode(name: "7", title: "Hey"),
    dataMode(name: "6", title: "Hey"),
    dataMode(name: "5", title: "Hey"),
    dataMode(name: "4", title: "Hey"),
    dataMode(name: "3", title: "Hey"),
    dataMode(name: "2", title: "Hey"),
    dataMode(name: "1", title: "Hey")
]

var theImages2 = [
    dataMode(name: "1", title: "Hey"),
    dataMode(name: "2", title: "Hey"),
    dataMode(name: "3", title: "Hey"),
    dataMode(name: "4", title: "Hey"),
    dataMode(name: "5", title: "Hey"),
    dataMode(name: "6", title: "Hey"),
    dataMode(name: "7", title: "Hey"),
    dataMode(name: "8", title: "Hey"),
]

struct sideBars: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
    var tab: TabIcon
    var index: Int
}

let sidebars = [
    sideBars(icon: "square.stack", title: "Favorite", tab: .Favorite, index: 0),
    sideBars(icon: "magnifyingglass", title: "Home", tab: .Home, index: 1),
    sideBars(icon: "house", title: "Card", tab: .Card, index: 2),
    sideBars(icon: "star", title: "Purchases", tab: .Purchases, index: 3),
    sideBars(icon: "person", title: "Notification", tab: .Notification, index: 4),
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
    var index: Int
}

let sidebars1 = [
    sideBars1(icon: "field.of.view.ultrawide.fill", title: "Top of day", tab: .Home, index: 0),
    sideBars1(icon: "photo.artframe", title: "Art", tab: .Notification, index: 1),
    sideBars1(icon: "location.north.fill", title: "Cities", tab: .Favorite, index: 2),
    sideBars1(icon: "mountain.2.fill", title: "Nature", tab: .Purchases, index: 3),
    sideBars1(icon: "moon.haze.fill", title: "Night", tab: .Favorite, index: 4),
]

enum TabIcon1: String {
    case Home
    case Card
    case Favorite
    case Purchases
    case Notification
}

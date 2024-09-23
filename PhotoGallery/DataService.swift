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
        return index % 4 == 1 ? 300 : 180
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
    dataMode(name: "31", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "28", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "26", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "4", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "5", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "6", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "7", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "8", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "9", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "10", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "11", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "12", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "13", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "14", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "15", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "16", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "17", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "18", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "19", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. "),
    dataMode(name: "20", title: "A wallpaper or background is a digital image used as a decorative background of a graphical user interface on the screen of a computer, smartphone or other electronic device. On a computer, wallpapers are generally used on the desktop, while on a mobile phone they serve as the background for the home screen. ")
]

var theImages1 = [
    dataMode(name: "10", title: "Hey"),
    dataMode(name: "6", title: "Hey"),
    dataMode(name: "3", title: "Hey"),
    dataMode(name: "28", title: "Hey"),
    dataMode(name: "4", title: "Hey"),
    dataMode(name: "7", title: "Hey"),
    dataMode(name: "30", title: "Hey"),
    dataMode(name: "26", title: "Hey"),
    dataMode(name: "3", title: "Hey"),
    dataMode(name: "15", title: "Hey"),
    dataMode(name: "29", title: "Hey"),
    dataMode(name: "4", title: "Hey")
]

var theImages2 = [
    dataMode(name: "22", title: "Hey"),
    dataMode(name: "33", title: "Hey"),
    dataMode(name: "32", title: "Hey"),
    dataMode(name: "31", title: "Hey"),
    dataMode(name: "2", title: "Hey"),
    dataMode(name: "29", title: "Hey"),
    dataMode(name: "3", title: "Hey"),
    dataMode(name: "27", title: "Hey"),
    dataMode(name: "26", title: "Hey"),
    dataMode(name: "25", title: "Hey"),
    dataMode(name: "24", title: "Hey"),
    dataMode(name: "5", title: "Hey"),
    dataMode(name: "22", title: "Hey"),
    dataMode(name: "21", title: "Hey"),
    dataMode(name: "7", title: "Hey"),
    dataMode(name: "19", title: "Hey"),
    dataMode(name: "9", title: "Hey"),
    dataMode(name: "17", title: "Hey")

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

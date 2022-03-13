//
//  SessionTopics.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/17.
//

import Foundation
import SwiftUI

extension Topic {
    static let allTopics = [
        Topic(title: "iPadOS 15", subtitle: "Think big. Think together.", image: .iPadOSSystemImage, offset: 53),
        Topic(title: "Weights", subtitle: "Weights on the Home Screen.\nNew widgets let you see information at a glance, right on your Home Screen.", image: .widgetkitImage, offset: 63),
        Topic(title: "New Larger Size Weights", subtitle: "Now you can place widgets among apps on your iPad. And with a new larger widget size, you can take full advantage of the iPad canvas.", image: .iPadWeightImage, offset: 73),
        Topic(title: "App Library", subtitle: "It automatically organizes your apps into helpful categories like Productivity and Games. And for quick access, it’s built right into the Dock.", image: .appLibraryImage, offset: 157),
        Topic(title: "Multitasking", subtitle: "The large iPad screen is great for working with multiple apps, taking your productivity to a whole new level. And now with iPadOS 15, multitasking is easier to discover, easier to use, and even more powerful.", image: .multitaskingLogo, offset: 199),
        Topic(title: "New Multitasking Menu", subtitle: "Tap to reveal a new Multitasking menu that lets you create a Slide Over, Split View, and a center window, so you can work on multiple apps at once.", image: .multiTaskingImage, offset: 216),
        Topic(title: "Split View", subtitle: "Your apps appear side by side. Swipe down from the top of the app you want to replace, then choose a new one from the Home Screen.", image: .mailAndMemoImage, offset: 253),
        Topic(title: "Center Window", subtitle: "Touch and hold to bring a note or message to the center of the screen without leaving your current view. The Multitasking menu appears here, too.", image: .mailCenterImage, offset: 268),
        Topic(title: "The New Shelf", subtitle: "View all the open windows for an app and quickly switch between them with the new shelf. You can even add and close windows.", image: .multiTaskingImage, offset: 285),
        Topic(title: "App Switcher", subtitle: "Now you can create Split View spaces in one screen with the App Switcher. Create a Split View by dragging one app over another.", image: .backgroundMultitaskingImage, offset: 315),
        Topic(title: "New Multitasking Menu", subtitle: "Tap to reveal a new Multitasking menu that lets you create a Slide Over, Split View, and a center window, so you can work on multiple apps at once.", image: .multiTaskingImage, offset: 327),
        Topic(title: "Keyboard Shortcuts", subtitle: "Attach a keyboard to your iPad and view a list of all shortcuts. Press and hold the Command key to view shortcuts for an app.", image: .keyboardShortcutsImage, offset: 334),
        Topic(title: "Notes", subtitle: "New Experiences", image: .notesLogo, offset: 345),
        Topic(title: "Organize And Notify", subtitle: "Tag a note using the # symbol and a keyword. To notify someone on a note, just type a person's name and it will be highlighted.", image: .notesViewImage, offset: 359),
        Topic(title: "Quick Note", subtitle: "Now Notes goes system-wide with Quick Note, a fast and easy way to get to a note no matter what you’re doing.", image: .quickNoteImage, offset: 384),
        Topic(title: "Start A Quick Note Anywhere", subtitle: "Start a Quick Note with a keyboard shortcut, from Control Center, or with a swipe up from the corner using your finger or Apple Pencil.", image: .quickNoteWithMapImage, offset: 398),
        Topic(title: "Put Anything In A Quick Note", subtitle: "You can add handwriting, links, Safari highlights, tags, and mentions to a Quick Note.", image: .addLinksToQNImage, offset: 430),
        Topic(title: "View All Quick Notes", subtitle: "Access all of your Quick Notes right in the Notes app.", image: .quickNotesViewImage, offset: 477),
        Topic(title: "Support All Devices", subtitle: "If you make a Quick Note on your iPad, it will be on your iPhone and Mac, too.", image: .qNSupportDevicesImage, offset: 482),
        Topic(title: "Translate", subtitle: "Meet Translate app on iPad", image: .translateImage, offset: 495),
        Topic(title: "Live Text Translation", subtitle: "With system‑wide translation, you can simply tap and translate.", image: .liveTextTranslateImage, offset: 543),
        Topic(title: "Swift Playgrounds", subtitle: "Learn code, build real apps with SwiftUI, and see your ideas come to life on the App Store.", image: .swiftPlaygroundsLogo, offset: 565),
        Topic(title: "Build App on iPad", subtitle: "The code you write is immediately reflected in the live preview of your app. And for beginners, there’s a guide to creating your first app.", image: .buildAppOniPadImage, offset: 585),
        Topic(title: "All Features in iPadOS", subtitle: "Work wonders.\nWith ease.", image: .featuresJustiPadImage, offset: 633),
        Topic(title: "All Features Combine With iOS", subtitle: "In touch.\nIn the moment.", image: .featuresWithIOSImage, offset: 649)
    ]
}

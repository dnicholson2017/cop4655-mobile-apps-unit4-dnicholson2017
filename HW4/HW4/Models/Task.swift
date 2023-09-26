//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant",
                 description: "A night on the town. What's the plan?"),
            Task(title: "Your favorite local cafe",
                 description: "Empanadas con un cafecito por favor?"),
            Task(title: "Your go-to brunch place",
                 description: "What do you order? The crapes or the omelette"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to be one with nature")
        ]
    }
}

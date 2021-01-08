import UIKit

protocol Observable {
    func attach(o: Observer)
    func detach(o: Observer)
    func notify()
}

protocol Observer {
    func update()
}

class YoutubeChannel: Observable {
    
    private var channelSubscribers: [Observer] = []
    
    func attach(o: Observer) {
        channelSubscribers.append(o)
        print("attach ejecutado")
    }
    
    func detach(o: Observer) {
        //TODO
    }
    
    func notify() {
        for i in channelSubscribers {
            i.update()
            print("notify ejecutado")
        }
    }
}

class Subscriber: Observer {
    
    private let observable: Observable?
    
    init(channel: Observable) {
        self.observable = channel
    }
    
    func update() {
        print("Fui notificado de un cambio en el canal")
    }
}

let demoYoutube = YoutubeChannel()
let subscriptor1 = Subscriber(channel: demoYoutube)
let subscriptor2 = Subscriber(channel: demoYoutube)
let subscriptor3 = Subscriber(channel: demoYoutube)

demoYoutube.attach(o: subscriptor1)
demoYoutube.attach(o: subscriptor2)
demoYoutube.attach(o: subscriptor3)

demoYoutube.notify()

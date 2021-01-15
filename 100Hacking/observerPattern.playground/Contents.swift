protocol Observable {

    func attach(o: Observer)
    func detach(o: Observer)
    func lastVideoTitle() -> String
    func notify()
}

protocol Observer {
    func update()
}

class YoutubeChannel: Observable {

    private var channelSubscribers: [Observer] = []
    private var lastVideo = ""

    func attach(o: Observer) {
        channelSubscribers.append(o)
        print("nuevo subscriptor")
    }
    
    func detach(o: Observer) {
        //TODO
    }
    
    func notify() {
        for i in channelSubscribers {
            i.update()
            print("el subscriptor fue notificado")
        }
    }

    func addNewVideo(title: String) {
        lastVideo = title
        notify()
        print("Hay un nuevo video")
    }

    func lastVideoTitle() -> String {
        return lastVideo
    }
}

class Subscriber: Observer {
    
    private let observable: Observable?
    
    init(channel: Observable) {
        self.observable = channel
    }
    
    func update() {
        print("Fui notificado de un cambio en el canal")
        if let aObservable = observable {
            print(aObservable.lastVideoTitle())
        }
        
    }
}
//MARK: EJEMPLO
let demoYoutube = YoutubeChannel()
let subscriptor1 = Subscriber(channel: demoYoutube)
let subscriptor2 = Subscriber(channel: demoYoutube)
let subscriptor3 = Subscriber(channel: demoYoutube)

demoYoutube.attach(o: subscriptor1)
demoYoutube.attach(o: subscriptor2)
demoYoutube.attach(o: subscriptor3)

demoYoutube.addNewVideo(title:"Todo sobre patrones")

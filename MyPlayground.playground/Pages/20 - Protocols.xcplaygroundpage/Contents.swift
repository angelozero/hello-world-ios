import Foundation


// Protocols

// Como fazer

protocol Tracker {
    func eventRegister(eventName: String)
}

// Assinando o protocolo 'Tracker'
class GoogleAnalytics: Tracker{
    func eventRegister(eventName: String){
        let dateNow = Date()
        print("Event Sent: \(dateNow) : \(eventName)")
    }
}

// Tela 1
class Login {
    
    private let tracker: Tracker
    
    init(tracker: Tracker) {
        self.tracker = tracker
    }
    
    func initLogin(){
        tracker.eventRegister(eventName: "Login - initLogin")
        print("Fazendo login...")
        print()
        sleep(2)
    }
}

// Tela 2
class Home {
    
    private let tracker: Tracker
    
    init(tracker: Tracker) {
        self.tracker = tracker
    }
    
    func initHome(){
        tracker.eventRegister(eventName: "Home - initHome")
        print("Carregando home...")
        print()
        sleep(2)
    }
}


// Tela 3
class Profile {
    
    private let tracker: Tracker
    
    init(tracker: Tracker) {
        self.tracker = tracker
    }
    
    func initProfile(){
        tracker.eventRegister(eventName: "Profile - initProfile")
        print("Carregando perfil ...")
        print()
        sleep(2)
    }
}

let login = Login(tracker: GoogleAnalytics())
login.initLogin()

let home = Home(tracker: GoogleAnalytics())
home.initHome()

let profile = Profile(tracker: GoogleAnalytics())
profile.initProfile()

print("Fim")


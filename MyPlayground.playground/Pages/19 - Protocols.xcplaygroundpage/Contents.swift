import Foundation


// Protocols

// Como não fazer

class GoogleAnalytics {
    func eventRegister(eventName: String){
        let dateNow = Date()
        print("Event Sent: \(dateNow) : \(eventName)")
    }
}

// Tela 1
class Login {
    
    private let analytics = GoogleAnalytics()
    
    func initLogin(){
        analytics.eventRegister(eventName: "Login - initLogin")
        print("Fazendo login...")
        print()
        sleep(2)
    }
}

// Tela 2
class Home {
    
    private let analytics = GoogleAnalytics()
    
    func initHome(){
        analytics.eventRegister(eventName: "Home - initHome")
        print("Carregando home...")
        print()
        sleep(2)
    }
}


// Tela 3
class Profile {
    
    private let analytics = GoogleAnalytics()
    
    func initProfile(){
        analytics.eventRegister(eventName: "Profile - initProfile")
        print("Carregando perfil ...")
        print()
        sleep(2)
    }
}

let login = Login()
login.initLogin()

let home = Home()
home.initHome()

let profile = Profile()
profile.initProfile()




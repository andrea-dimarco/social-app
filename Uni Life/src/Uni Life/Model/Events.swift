
import UIKit
import SwiftUI


enum Category : String{
    case concerti, mostre, manifestazioni, conferenze, gite, feste
}

class Eventi: Identifiable {
    
    let id = UUID().uuidString
    var title : String
    var category : String //category
    var description : String
    var price : Int
    var date : String
    var hour : String
    var location : String
    var favourite : Bool = false
    var organization : String
    var address : String
    var capacity : Int
    var currentCapacity : Int = 0
    var booked: Bool = false
    var imageName : String
    var alert: Bool = false

    init(title: String, category:String,  description:String,  price:Int,  date:String,  hour:String,  location:String,  organization:String, address:String,  capacity: Int,  imageName:String, favourite: Bool = false, alert: Bool = false){
    
        self.title = title
        self.category = category //category
        self.description = description
        self.price = price
        self.date = date
        self.hour = hour
        self.location = location
        self.organization = organization
        self.address = address
        self.capacity = capacity
        self.imageName = imageName
        self.favourite = favourite
        self.alert = alert
    }
    
}


class Reddit: Identifiable{
    let id = UUID().uuidString
    var category: Category.RawValue
    var text: String
    var number: Int
    var isUp: Bool
    var isDown: Bool
    var isMine: Bool
    var myTab: Bool
    
    init(category: String, text: String, number: Int = 0,isUp: Bool = false, isDown: Bool = false, isMine: Bool = false,myTab: Bool = false, alert: Bool = false){
        self.category = category
        self.text = text
        self.number = number
        self.isUp = isUp
        self.isDown = isDown
        self.isMine = isMine
        self.myTab = myTab
    }
}

class Spot: Identifiable{
    let id = UUID()
    var message: String
    var event: String
    var isMine: Bool
    var iam: Bool
    
    init(message: String, event: String, isMine: Bool = false, iam: Bool = false)
    {
        self.message = message
        self.event = event
        self.isMine = isMine
        self.iam = iam
    }
}
    
struct CategoryCard: Identifiable{
    var id = UUID()
    var category: Category.RawValue //category
    
    var color: Color
    var image: String
}

//struct Spot: Identifiable{
//    let id = UUID()
//    var message: String
//    var event: String
//}
    


var reddits = [

        Reddit(category: "Feste", text: "Propongo un aperitivo all'aperto al piazzale davanti fisica",number: 100),
        Reddit(category: "Mostre", text: "Consiglio di vedervi la mostra dedicata a Monet",number:80,isMine: true),
        Reddit(category: "Gite", text: "Vorrei andare a fare una gita in montagna con un gruppo di persone interessate",number: 15),
        Reddit(category: "Giochi", text: "Propongo una serata giochi da tavolo", number: 10),
        Reddit(category: "Salute", text: "Propongo che la Sapienza offra i vaccini")
]

var endEvents = [
    Eventi(title: "Sapienza Disco", category: "Feste", description: "Festa organizzata per l'ultimo giorno di lezione, dove si potrà ballare all'aperto con dj Set", price: 15, date: "15 Jun", hour: "19:00", location: "Minerva", organization: "Sapienza in Movimento", address: "Piazzale Aldo Moro 5", capacity: 200, imageName: "party"),
    Eventi(title: "Mostra al Maxxi", category: "Mostre", description: "Mostra ", price: 10, date: "20 Jun", hour: "10:00", location: "Maxxi", organization: "Link Sapienza", address: "Via Guido Reni, 4", capacity: 100, imageName: "maxxi"),
    Eventi(title: "Alla Scoperta di Roma", category: "Gite", description: "Gita", price: 0, date: "1 Jul", hour: "19:00", location: "Piazza del Popolo", organization: "Link Sapienza", address: "Piazza del Popolo", capacity: 0, imageName: "Rome"),
    Eventi(title: "Silent Disco", category: "Feste", description: "Silent Disco", price: 15, date: "17 Jun", hour: "19:00", location: "Scalo Playground", organization: "Sapienza in Movimento", address: "Via Tiburtina, 5", capacity: 100, imageName: "silentdisco"),

]

var spots = [
   Spot(message: "Spotto ragazza visto alla festa", event: "Sapienza Disco",isMine: true),
   Spot(message: "Spotto ragazzo con cui ho parlato riguardo ai quadri di Fontana", event: "Mostra al Maxxi"),
   Spot(message: "Spotto ragazzo con cui ho parlato di psicologia e abbiamo ballato tutta la sera", event: "Sapienza Disco"),
   Spot(message: "Spotto la ragazza che insieme a me stava cantando senza cuffie le canzoni ahahah, se ti va prendiamoci un caffè", event: "Silent Disco",isMine: true),
   Spot(message: "Spotto ragazzo con cui ho ballato e parlato di Fisica", event: "Silent Disco"),
   Spot(message: "Spotto il gruppo di ragazzi con cui ho giocato a pallavolo a villa borghese, siete un sacco simpatici", event: "Alla Scoperta di Roma")

    ]

var myspots = [
    Spot(message: "Spotto ragazzo con cui ho parlato riguardo ai quadri di Fontana", event: "Mostra al Maxxi")
]

var categories = [
    
    "Conferenze", "Concerti", "Gite", "Mostre", "Feste", "Cortei", "Sport", "Salute", "Aperture", "Giochi"]

var categoris = [
    CategoryCard(category: "Aperture", color: .yellow, image: "scissors"),
    CategoryCard(category: "Conferenze", color: .purple, image: "person.3"),
    CategoryCard(category: "Concerti", color: .blue, image: "music.mic"),
    CategoryCard(category: "Cortei", color: Color(#colorLiteral(red: 1, green: 0.5409764051, blue: 0.8473142982, alpha: 1)), image: "megaphone"),
    CategoryCard(category: "Feste", color: .red, image: "hifispeaker.2"),
    CategoryCard(category: "Giochi", color: Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1)), image: "die.face.2"),
    CategoryCard(category: "Gite", color: .green, image: "map"),
    CategoryCard(category: "Mostre", color: .orange, image: "paintpalette"),
    CategoryCard(category: "Salute", color: .green, image: "waveform.path.ecg"),
    CategoryCard(category: "Sport", color: .blue, image: "figure.walk")

]




var eventis = [

    
    Eventi(title: "Serata a Quiz", category: "Giochi", description: "Vieni anche tu alla serata a quiz dove potrai vincere dei premi", price: 5, date: "24 Feb", hour: "22:00", location: "Koala", organization: "Link Sapienza", address: "Via monteverde, 4", capacity: 50, imageName: "quiz"),
    Eventi(title: "IT Meeting", category: "Conferenze", description: "Vieni all' IT Meeting per fare conoscenza delle aziende che lavoro nel campo dell'IT", price: 0, date: "20 Dec", hour: "9:00", location: "Sapienza", organization: "Sapienza", address: "Via Castro Laurenziano, 5", capacity: 200, imageName: "ITMeeting"),
    Eventi(title: "Gita in Montagna", category: "Gite", description: "Gita in montagna con un gruppo di esperti che vi farà esplorare posti meravigliosi.", price: 15, date: "2 Mar", hour: "8:00", location: "Terminillo", organization: "Link Sapienza", address: "Via Terminillo, 2", capacity: 40, imageName: "gita"),
    Eventi(title: "Targa Commemorativa per Cabibbo", category: "Aperture", description: "Inaugurazione della targa dedicata a Cabibbo per il suo contributo alla fisica.", price: 0, date: "10 Dec", hour: "11:00", location: "Città Universitaria", organization: "Sapienza", address: "Piazzale Aldo Moro 5", capacity: 100, imageName: "Cabibbo"),
    
    Eventi(title: "Concerto di Natale", category: "Concerti", description: "Concerto di natale suonato dall'orchestra", price: 0, date: "24 Dec", hour: "21:00", location: "Aula Magna", organization: "Sapienza", address: "Piazzale Aldo Moro 5", capacity: 100, imageName: "Orchestra"),

    
    Eventi(title: "Plastic Free World", category: "Cortei", description: "Aiuta anche tu a salvare il pianeta, o almeno a dare il tuo contributo. Siamo un'organizzazione che so riunisce per pulire le spiagge dalla plastica. Molti animali mangiano questa plastica o ne rimangono incastrati impedentdo i loro movimenti. Save the Planet", price: 0, date: "15 Mar", hour: "10:00", location: "Fregene", organization: "Save the planet", address: "Via Fregene", capacity: 1000, imageName: "plasticfree"),
    Eventi(title: "Apple Conference", category: "Conferenze", description: "Tim Cook arriva alla sapienza per discutere di quanto sia importante la conoscienze e di come ha cambiato la vita alle persone in questo ultimo decennio", price: 0, date: "25 Feb", hour: "9:30", location: "Aula Magna", organization: "Sapienza", address: "Piazzale Aldo Moro, 5", capacity: 200, imageName: "Apple"),
    Eventi(title: "Dona il sangue", category: "Salute", description: "Dona anche tu il sangue, potrai salvare delle vite", price: 0, date: "26 Feb", hour: "10:00", location: "Città Universitaria", organization: "Sapienza", address: "Piazzale Aldo Moro, 5", capacity: 2000, imageName: "sangue-1"),
    Eventi(title: "Bansky", category: "Mostre", description: "Mostra di Bansky", price: 15, date: "14 Dec", hour: "10:00", location: "Chiostro del Bramante", organization: "Sapienza in Movimento", address: "via Arco della Pace 5", capacity: 70, imageName: "banksy2"),
    Eventi(title: "Red Hot Chilli Peppers", category: "Concerti", description: "Concerto dei RHCP allp stadio olimpico.", price: 50, date:"28 Mar", hour: "19:00", location: "Stadio Olimpico", organization: "Sapienza in Movimento", address: "Via stadio Olimpico, 56", capacity: 10000, imageName: "Rhcp"),
    Eventi(title: "Salvatore Aranzulla", category: "Conferenze", description: "Salvatore Aranzulla a Sapienza per raccontarci di lui", price: 0, date: "1 May", hour: "11:00", location: "Città Universitaria", organization: "Sapienza in Movimento", address: "Piazzale Aldo Moro, 5", capacity: 100, imageName: "Salvatore"),
    

    
    Eventi(title: "Torneo di Calcio a 5", category: "Sport", description: "Torneo di calcio a premi", price: 10, date: "24 May", hour: "14:00", location: "Campi Sapienza", organization: "Link Sapienza", address: "Via Tiburtina, 24", capacity: 20, imageName: "Calcio"),
    Eventi(title: "Vacciniamoci", category: "Salute", description: "Richiedi il vaccino tramite Sapienza", price: 0, date: "25 Jan", hour: "11:00", location: "Città Universitaria", organization: "Sapienza", address: "Piazzale Aldo Moro, 5", capacity: 1000, imageName: "vaccino"),
    Eventi(title: "Monet", category: "Mostre", description: "Mostra dedicta a Monet", price: 15, date: "27 Mar", hour: "10:00", location: "Altare della Patria", organization: "Sapienza in Movimento", address: "Via dei Fori Imperiali, 10", capacity: 200, imageName: "monet"),
    
    Eventi(title: "Mozart nel tempo", category: "Concerti", description: "L'orchestra suonerà per noi i migliori pezzi del compositore che ha cambiato la storia della musica, rivivendo il percorso del giovane compositore, fino agli ultimi giorni della sua vita", price: 15, date: "27 Sep", hour: "21:00", location: "Aula Magna", organization: "Sapienza", address: "Piazzale Aldo Moro 5", capacity: 100, imageName: "Mozart"),
    
    Eventi(title: "Elon Musk", category: "Conferenze", description: "Elon Musk a Sapienza, parlerà di SpaceX", price: 0, date: "3 May", hour: "10:00", location: "Città Universitaria", organization: "Sapienza", address: "Piazzale Aldo Moro, 5", capacity: 100, imageName: "ElonMusk")
]

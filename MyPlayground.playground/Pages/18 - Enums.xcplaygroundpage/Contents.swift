import Foundation

// Enums

enum WeekOfDays: Int {
    case SEG
    case TER
    case QUA
    case QUI
    case SEX
    case SAB
    case DOM
}

print(WeekOfDays.SEG)
print()
print(WeekOfDays.DOM.rawValue)
print()

enum WeekOfDaysNames: String {
    case SEG = "Segunda"
    case TER = "Terca"
    case QUA = "Quarta"
    case QUI = "Quinta"
    case SEX = "Sexta"
    case SAB = "Sabado"
    case DOM = "Domingo"
}

print(WeekOfDaysNames.SEG.rawValue)
print()

enum WeekOfDaysValues: String {
    case SEG
    case TER
    case QUA
    case QUI
    case SEX
    case SAB
    case DOM
    
    var value: String {
        switch self {
        case .SEG:
            return "segunda-feira"
            
        case .TER:
            return "terca-feira"
            
        case .QUA:
            return "quarta-feira"
            
        case .QUI:
            return "quinta-feira"
            
        case .SEX:
            return "sexta-feira"
            
        case .SAB:
            return "sabado-feira"
            
        case .DOM:
            return "domingo-feira"
            
        }
    }
}

print(WeekOfDaysValues.SEX.value)
print()

enum WeekOfDaysFunc: String {
    case SEG
    case TER
    case QUA
    case QUI
    case SEX
    case SAB
    case DOM
    
    func getValue() -> String {
        switch self {
        case .SEG:
            return "segunda-feira"
            
        case .TER:
            return "terca-feira"
            
        case .QUA:
            return "quarta-feira"
            
        case .QUI:
            return "quinta-feira"
            
        case .SEX:
            return "sexta-feira"
            
        case .SAB:
            return "sabado-feira"
            
        case .DOM:
            return "domingo-feira"
            
        }
    }
}

var day = WeekOfDaysFunc.QUI
print(day.getValue())
print()

enum WeekOfDaysParams {
    case SEG(note: String)
    case TER
    case QUA
    case QUI
    case SEX
    case SAB
    case DOM
    
    func getValue() -> String {
        switch self {
        case .SEG(let note):
            return "segunda-feira dia de: \(note)"
            
        case .TER:
            return "terca-feira"
            
        case .QUA:
            return "quarta-feira"
            
        case .QUI:
            return "quinta-feira"
            
        case .SEX:
            return "sexta-feira"
            
        case .SAB:
            return "sabado-feira"
            
        case .DOM:
            return "domingo-feira"
            
        }
    }
}

var weekDay = WeekOfDaysParams.SEG(note: "estudar!")
print(weekDay.getValue())
print()

import Foundation

public struct ExistRule: Validatable {
    public let error: NSError?

    public init() {
        error = NSError(domain: "Validator", code: 101, userInfo: [NSLocalizedDescriptionKey: "This value can´t be empty"])
    }

    public func test(_ validationContent: String?) -> Bool {
        guard validationContent != nil else { return false }
        return true
    }
}

public struct CharactersLengthRule: Validatable {
    public let error: NSError?
    let min: Int
    let max: Int

    public init(min: Int, max: Int) {
        guard min <= max else {
            fatalError("Min (\(min)) should be less then max (\(max))")
        }

        self.min = min
        self.max = max
        self.error = NSError(domain: "Validator", code: 101, userInfo: [NSLocalizedDescriptionKey: "It should have between \(min) and \(max) characters"])
    }

    public func test(_ validationContent: String?) -> Bool {
        guard let validationContent = validationContent else { return true }
        return (min...max ~= validationContent.count)
    }
}

public struct NumberBetweenRule: Validatable {
    public let error: NSError?
    let min: Int
    let max: Int

    public init(min: Int, max: Int) {
        guard min <= max else {
            fatalError("Min (\(min)) should be less then max (\(max))")
        }
        self.min = min
        self.max = max
        self.error = NSError(domain: "Validator", code: 101, userInfo: [NSLocalizedDescriptionKey: "It should be between \(min) and \(max)"])
    }

    public func test(_ validationContent: Int) -> Bool {
        return min...max ~= validationContent
    }
}

public struct NameRule: Validatable, Regexable {
    public let error: NSError? = NSError(domain: "Validator", code: 101, userInfo: [NSLocalizedDescriptionKey: "It should bla bla bla..."])
    public var regex: String = "^[\\p{L}\\p{M}\\p{Nl}\\p{Pd}\\p{Zs}-]+$"
    public init() { }

}

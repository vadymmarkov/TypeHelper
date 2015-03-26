import Foundation

public func nonOptionalTypeName(type: Any.Type) -> String
{
    let name = toString(type) as NSString
    let regex = NSRegularExpression(pattern: "(?<=<).+?(?=>)",
        options: nil, error: nil)!

    let results = regex.matchesInString(name as String, options: nil, range: NSMakeRange(0, name.length))
    let matches = map(results) {
        name.substringWithRange($0.range)
    }

    if matches.count > 0 {
        return matches[0] as String
    }

    return name as String
}

import Foundation

public func nonOptionalTypeName(type: Any.Type) -> String
{
    let name = toString(type)
    let regex = NSRegularExpression(pattern: "(?<=<).+?(?=>)",
        options: nil, error: nil)!

    let results = regex.matchesInString(name, options: nil, range: NSMakeRange(0, count(name)))
        as! [NSTextCheckingResult]
    let matches = map(results) {
        (name as NSString).substringWithRange($0.range)
    }

    if matches.count > 0 {
        return matches[0] as String
    }

    return name
}

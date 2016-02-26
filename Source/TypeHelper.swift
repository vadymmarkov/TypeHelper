public func nonOptionalTypeName<T>(type: T?.Type) -> String {
    return nonOptionalTypeName(T)
}

public func nonOptionalTypeName<T>(type: T!.Type) -> String {
    return nonOptionalTypeName(T)
}

public func nonOptionalTypeName<T>(type: T.Type) -> String {
    return String(type)
}

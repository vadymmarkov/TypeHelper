import UIKit
import XCTest

protocol SomeProtocol {}

class SomeClass: SomeProtocol {}

class TypeHelperTests: XCTestCase
{
    override func setUp()
    {
        super.setUp()
    }

    override func tearDown()
    {
        super.tearDown()
    }

    func testNonOptionalTypeNameWithProtocol()
    {
        let someOptional: Printable? = nil
        let someImplicitlyUnwrappedOptional: Printable! = nil

        let name = "Swift.Printable"

        XCTAssertEqual(nonOptionalTypeName(Printable), name)
        XCTAssertEqual(nonOptionalTypeName(Printable?), name)

        XCTAssertEqual(nonOptionalTypeName(someOptional.dynamicType), name)
        XCTAssertEqual(nonOptionalTypeName(someImplicitlyUnwrappedOptional.dynamicType), name)
    }

    func testNonOptionalTypeNameWithClass()
    {
        let view: UIView = UIView(frame: CGRectZero)
        let viewOptional: UIView? = UIView(frame: CGRectZero)
        let viewImplicitlyUnwrappedOptional: UIView! = UIView(frame: CGRectZero)

        var name = "NSObject"
        XCTAssertEqual(nonOptionalTypeName(NSObject), name)
        XCTAssertEqual(nonOptionalTypeName(NSObject?), name)

        name = "UIView"
        XCTAssertEqual(nonOptionalTypeName(view.dynamicType), name)
        XCTAssertEqual(nonOptionalTypeName(view.dynamicType), name)
        XCTAssertEqual(nonOptionalTypeName(view.dynamicType), name)
    }

    func testNonOptionalTypeNameWithCustomProtocol()
    {
        let someOptional: SomeProtocol? = SomeClass()
        let someImplicitlyUnwrappedOptional: SomeProtocol! = SomeClass()

        let name = "Tests.SomeProtocol"

        XCTAssertEqual(nonOptionalTypeName(SomeProtocol), name)
        XCTAssertEqual(nonOptionalTypeName(SomeProtocol?), name)

        XCTAssertEqual(nonOptionalTypeName(someOptional.dynamicType), name)
        XCTAssertEqual(nonOptionalTypeName(someImplicitlyUnwrappedOptional.dynamicType), name)
    }

    func testNonOptionalTypeNameWithCustomClass()
    {
        let some: SomeClass = SomeClass()
        let someOptional: SomeClass? = SomeClass()
        let someImplicitlyUnwrappedOptional: SomeClass! = SomeClass()

        let name = "Tests.SomeClass"

        XCTAssertEqual(nonOptionalTypeName(SomeClass), name)
        XCTAssertEqual(nonOptionalTypeName(SomeClass?), name)

        XCTAssertEqual(nonOptionalTypeName(some.dynamicType), name)
        XCTAssertEqual(nonOptionalTypeName(someOptional.dynamicType), name)
        XCTAssertEqual(nonOptionalTypeName(someImplicitlyUnwrappedOptional.dynamicType), name)
    }
}

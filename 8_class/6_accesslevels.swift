
class AccessLevels {

    // It's accessible from other modules and can be overriden
    open var a = 0

    // It's accessible from other modules but can not be overriden
    public var b = 0

    // It's only accessible inside the target, package
    internal var c = 0

    // It's accessible inside the file
    fileprivate var d = 0

    // It's only accessible inside the scope
    private var e = 0
}

let access = AccessLevels()

print(access.a)
print(access.b)
print(access.c)
print(access.d)
// print(access.e)
// 'e' is inaccessible due to 'private' protection level

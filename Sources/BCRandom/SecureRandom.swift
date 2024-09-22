import Foundation
import Security

public final class SecureRandomNumberGenerator: RandomNumberGenerator, Sendable {
    public init() { }

    public static let shared = SecureRandomNumberGenerator()

    public func next() -> UInt64 {
        var result: UInt64 = 0
        precondition(SecRandomCopyBytes(kSecRandomDefault, MemoryLayout<UInt64>.size, &result) == errSecSuccess)
        return result
    }
}

public func secureRandomData(_ count: Int) -> Data {
    var rng = SecureRandomNumberGenerator()
    return rng.randomData(count)
}

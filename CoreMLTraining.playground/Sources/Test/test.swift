import Foundation

public struct Test {
    public let a: Int
    
    public init(a: Int) {
        self.a = a
    }
}

#if swift(>=4.0)
    public struct Test2 {
        public let a: Int
        
        public init(a: Int) {
            self.a = a
        }
    }
#endif



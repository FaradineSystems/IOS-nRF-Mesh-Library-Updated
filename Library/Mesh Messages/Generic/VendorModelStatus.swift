// Created by Joseph Lindemuth
import Foundation

public struct VendorModelStatus: StaticMeshResponse {
    public static let opCode: UInt32 = 0xC35900 // TODO

    public var parameters: Data? {
        return self.myParameters
    }

    public let myParameters: Data
    
    public init(parameters: Data) {
        self.myParameters = parameters
    }
}

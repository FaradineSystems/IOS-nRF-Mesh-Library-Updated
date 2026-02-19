// Created by Joseph Lindemuth
import Foundation

public struct VendorModelMessage: StaticAcknowledgedMeshMessage, TransactionMessage {
    public static let opCode: UInt32 = 0xC35900 // TODO
    public static let responseType: StaticMeshResponse.Type = VendorModelStatus.self
    
    public var tid: UInt8! // TODO
    public var parameters: Data? {
        return self.myParameters
    }
    
    public let myParameters: Data
    
    
    public init(parameters: Data) {
        self.myParameters = parameters
    }
    
}

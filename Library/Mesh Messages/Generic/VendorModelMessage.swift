// Created by Joseph Lindemuth
import Foundation

public struct VendorModelMessage: StaticAcknowledgedMeshMessage, TransactionMessage {
    // public static let opCode: UInt32 = 0xC359000B // TODO
    public var opCode: UInt32 {
        return self.myOpCode
    }
    public static let responseType: StaticMeshResponse.Type = VendorModelStatus.self
    
    public var tid: UInt8! // TODO
    public var parameters: Data? {
        return self.myParameters
    }
    
    public let myParameters: Data
    public let myOpCode: UInt32
    
    
    public init(parameters: Data, opCode: UInt32, modelId: Int, companyIdentifier: Int) {
        self.myParameters = parameters
        self.myOpCode = opCode;
        print("Opcode is \(self.myOpCode)")
    }
    
}

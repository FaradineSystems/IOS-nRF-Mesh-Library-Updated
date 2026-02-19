// Created by Joseph Lindemuth
import Foundation

public struct VendorModelMessage: StaticAcknowledgedMeshMessage, TransactionMessage {
    // public static let opCode: UInt32 = 0xC359000B // TODO
    public static var myOpCode: UInt32 = 0x00
    public static var opCode: UInt32 {
        return myOpCode
    }
    public static let responseType: StaticMeshResponse.Type = VendorModelStatus.self
    
    public var tid: UInt8! // TODO
    public var parameters: Data? {
        return self.myParameters
    }
    
    public let myParameters: Data
    // public let myOpCode: UInt32
    
    
    public init(parameters: Data, opCode: UInt32, modelId: Int, companyIdentifier: Int) {
        self.myParameters = parameters
        VendorModelMessage.myOpCode = opCode
        // self.myOpCode = opCode;
        print("New Opcode is \(VendorModelMessage.opCode), modelId was \(modelId), companyIdentifier was \(companyIdentifier)")
    }

    public init?(parameters: Data) {
        self.myParameters = parameters
        // self.myOpCode = 0xC359000B
        print("Default init called with no opcode or other info. This should NOT happen")
    }
    
}

// Created by Joseph Lindemuth
import Foundation
public struct VendorModelMessage: AcknowledgedMeshMessage, TransactionMessage {
    public let opCode: UInt32  // Instance property
    public var responseOpCode: UInt32 { return opCode } 
    
    public var tid: UInt8!
    public var parameters: Data? {
        return myParameters
    }
    
    private let myParameters: Data
    public let modelId: Int
    public let companyIdentifier: UInt32
    
    // Custom init
    public init(withOpCode opCode: UInt32, modelId: Int, companyIdentifier: UInt32, myParameters: Data) {
        self.myParameters = myParameters
        // self.opCode = opCode
        self.opCode = ((0xC0 | opCode) << 16) | (companyIdentifier << 8); // Company ID is LITTLE ENDIAN hence why Nordics 0x0059 only has one byte used
        self.modelId = modelId
        self.companyIdentifier = companyIdentifier
        print("Opcode: \(opCode), model: \(modelId), company: \(companyIdentifier)")
    }
    
    // Required protocol init
    @_disfavoredOverload
    public init?(parameters: Data) {
        print("Should not reach here")
        return nil  // Not used for creating messages
    }
}

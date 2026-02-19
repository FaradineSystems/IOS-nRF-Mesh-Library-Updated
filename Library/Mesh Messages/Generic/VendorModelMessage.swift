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
    public let companyIdentifier: Int
    
    // Custom init
    public init(parameters: Data, opCode: UInt32, modelId: Int, companyIdentifier: Int) {
        self.myParameters = parameters
        self.opCode = opCode
        self.modelId = modelId
        self.companyIdentifier = companyIdentifier
        print("Opcode: \(opCode), model: \(modelId), company: \(companyIdentifier)")
    }
    
    // Required protocol init
    public init?(parameters: Data) {
        return nil  // Not used for creating messages
    }
}

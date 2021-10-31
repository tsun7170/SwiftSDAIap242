/* file: product.swift 	 generated: Sun Oct 31 15:32:10 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY product;
      id                  : identifier;
      name                : label;
      description         : OPTIONAL text;
      frame_of_reference  : SET [1 : ?] OF product_context;
  END_ENTITY; -- product (line:25908 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	product
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  frame_of_reference,	TYPE: SET [1 : ?] OF product_context -- EXPLICIT


  SUB- ENTITY(2)	additive_manufacturing_setup
    (no local attributes)

  SUB- ENTITY(3)	envelope
    (no local attributes)

  SUB- ENTITY(4)	structured_message
    (no local attributes)

  SUB- ENTITY(5)	collection
    (no local attributes)

  SUB- ENTITY(6)	product_resource
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _product : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _id: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _frame_of_reference: SDAI.SET<ePRODUCT_CONTEXT>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSTATE_OBSERVED_OF_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRODUCT_DEFINITION_OR_PRODUCT_DEFINITION_RELATIONSHIP.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRODUCT_DEFINITION_OR_BREAKDOWN_ELEMENT_USAGE.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sTIME_INTERVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SOURCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVIDENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sLOCATION_REPRESENTATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_REQUEST_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCONTRACT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSTATE_TYPE_OF_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCC_PERSON_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sANALYSED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRODUCT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFIED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sLOCATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_ASSIGNED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SATISFACTION_ITEM.typeName)) // -> sREQUIREMENT_ASSIGNED_ITEM
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sNAME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPROJECT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRODUCT_OR_FORMATION_OR_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCERTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._id.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._frame_of_reference.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._id.value.isValueEqualOptionally(to: rhs._id.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._frame_of_reference.value.isValueEqualOptionally(to: rhs._frame_of_reference.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._id.value.isValueEqualOptionally(to: rhs._id.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._frame_of_reference.value.isValueEqualOptionally(to: rhs._frame_of_reference.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ID: tIDENTIFIER, NAME: tLABEL, DESCRIPTION: tTEXT? , FRAME_OF_REFERENCE: SDAI.SET<
                ePRODUCT_CONTEXT>/*[1:nil]*/ ) {
      self._id = ID
      self._name = NAME
      self._description = DESCRIPTION
      self._frame_of_reference = FRAME_OF_REFERENCE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<ePRODUCT_CONTEXT>.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ID: p0, NAME: p1, DESCRIPTION: p2, FRAME_OF_REFERENCE: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product;
      id                  : identifier;
      name                : label;
      description         : OPTIONAL text;
      frame_of_reference  : SET [1 : ?] OF product_context;
  END_ENTITY; -- product (line:25908 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product.self
    }
    public let partialEntity: _product

    //MARK: SUPERTYPES
    public var super_ePRODUCT: ePRODUCT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eADDITIVE_MANUFACTURING_SETUP: eADDITIVE_MANUFACTURING_SETUP? {	// [2]
      return self.complexEntity.entityReference(eADDITIVE_MANUFACTURING_SETUP.self)
    }

    public var sub_eENVELOPE: eENVELOPE? {	// [3]
      return self.complexEntity.entityReference(eENVELOPE.self)
    }

    public var sub_eSTRUCTURED_MESSAGE: eSTRUCTURED_MESSAGE? {	// [4]
      return self.complexEntity.entityReference(eSTRUCTURED_MESSAGE.self)
    }

    public var sub_eCOLLECTION: eCOLLECTION? {	// [5]
      return self.complexEntity.entityReference(eCOLLECTION.self)
    }

    public var sub_ePRODUCT_RESOURCE: ePRODUCT_RESOURCE? {	// [6]
      return self.complexEntity.entityReference(ePRODUCT_RESOURCE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._id )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT`` )
    public var FRAME_OF_REFERENCE: SDAI.SET<ePRODUCT_CONTEXT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._frame_of_reference )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._frame_of_reference = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_product) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePRODUCT.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \ePRODUCT.ID, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \ePRODUCT.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

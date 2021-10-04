/* file: product_context.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY product_context
    SUBTYPE OF ( application_context_element );
      discipline_type  : label;
  END_ENTITY; -- product_context (line:26000 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	application_context_element
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  frame_of_reference,	TYPE: application_context -- EXPLICIT
      -- observed by
        ENTITY(1): application_context,	ATTR: context_elements,	TYPE: SET [1 : ?] OF
          application_context_element


  ENTITY(SELF)	product_context
    ATTR:  discipline_type,	TYPE: label -- EXPLICIT


  SUB- ENTITY(3)	mechanical_context
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _product_context : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRODUCT_CONTEXT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _discipline_type: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._discipline_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._discipline_type.value.isValueEqualOptionally(to: rhs._discipline_type.value, visited: &comppairs)	{
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
      if let comp = self._discipline_type.value.isValueEqualOptionally(to: rhs._discipline_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DISCIPLINE_TYPE: tLABEL) {
      self._discipline_type = DISCIPLINE_TYPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DISCIPLINE_TYPE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY product_context
    SUBTYPE OF ( application_context_element );
      discipline_type  : label;
  END_ENTITY; -- product_context (line:26000 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRODUCT_CONTEXT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _product_context.self
    }
    public let partialEntity: _product_context

    //MARK: SUPERTYPES
    public let super_eAPPLICATION_CONTEXT_ELEMENT: eAPPLICATION_CONTEXT_ELEMENT 	// [1]
    public var super_ePRODUCT_CONTEXT: ePRODUCT_CONTEXT { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eMECHANICAL_CONTEXT: eMECHANICAL_CONTEXT? {	// [3]
      return self.complexEntity.entityReference(eMECHANICAL_CONTEXT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePRODUCT_CONTEXT`` )
    public var DISCIPLINE_TYPE: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._discipline_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._discipline_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eAPPLICATION_CONTEXT_ELEMENT`` )
    public var FRAME_OF_REFERENCE: eAPPLICATION_CONTEXT {
      get {
        return SDAI.UNWRAP( super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity._frame_of_reference )
      }
      set(newValue) {
        let partial = super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity
        partial._frame_of_reference = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eAPPLICATION_CONTEXT_ELEMENT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eAPPLICATION_CONTEXT_ELEMENT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_product_context.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eAPPLICATION_CONTEXT_ELEMENT.self) else { return nil }
      self.super_eAPPLICATION_CONTEXT_ELEMENT = super1

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRODUCT_CONTEXT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPLICATION_CONTEXT_ELEMENT.self)
      entityDef.add(supertype: ePRODUCT_CONTEXT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DISCIPLINE_TYPE", keyPath: \ePRODUCT_CONTEXT.DISCIPLINE_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FRAME_OF_REFERENCE", keyPath: \ePRODUCT_CONTEXT.FRAME_OF_REFERENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRODUCT_CONTEXT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

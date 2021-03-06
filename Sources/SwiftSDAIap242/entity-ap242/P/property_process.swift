/* file: property_process.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY property_process
    SUBTYPE OF ( action );
      identification  : identifier;
    INVERSE
      properties : SET [1 : ?] OF process_property_association FOR process -- defined in ENTITY: process_property_association;
  END_ENTITY; -- property_process (line:26632 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	action
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  chosen_method,	TYPE: action_method -- EXPLICIT

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	property_process
    ATTR:  identification,	TYPE: identifier -- EXPLICIT

    ATTR:  properties,	TYPE: SET [1 : ?] OF process_property_association -- INVERSE
      FOR process;


*/


//MARK: - Partial Entity
  public final class _property_process : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePROPERTY_PROCESS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _identification: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _process_property_association ._process
    internal var _properties: SDAI.SET<ePROCESS_PROPERTY_ASSOCIATION> {
      return __properties.map{ $0.reference }
    }
    private var __properties = SDAI.SET<SDAI.UnownedWrap<ePROCESS_PROPERTY_ASSOCIATION>>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _properties__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(ePROCESS_PROPERTY_ASSOCIATION.self) else { return }
      self.__properties.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _properties__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(ePROCESS_PROPERTY_ASSOCIATION.self) else { return }
      let success = self.__properties.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _properties__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(ePROCESS_PROPERTY_ASSOCIATION.self) else { return }
      let success = self.__properties.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._identification.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._identification.value.isValueEqualOptionally(to: rhs._identification.value, visited: &comppairs)	{
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
      if let comp = self._identification.value.isValueEqualOptionally(to: rhs._identification.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(IDENTIFICATION: tIDENTIFIER) {
      self._identification = IDENTIFICATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( IDENTIFICATION: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY property_process
    SUBTYPE OF ( action );
      identification  : identifier;
    INVERSE
      properties : SET [1 : ?] OF process_property_association FOR process -- defined in ENTITY: process_property_association;
  END_ENTITY; -- property_process (line:26632 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePROPERTY_PROCESS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _property_process.self
    }
    public let partialEntity: _property_process

    //MARK: SUPERTYPES
    public let super_eACTION: eACTION 	// [1]
    public var super_ePROPERTY_PROCESS: ePROPERTY_PROCESS { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eACTION.partialEntity._description
      }
      set(newValue) {
        let partial = super_eACTION.partialEntity
        partial._description = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing ePROCESS_PROPERTY_ASSOCIATION .PROCESS
    /// - origin: SELF( ``ePROPERTY_PROCESS`` )
    public var PROPERTIES: SDAI.SET<ePROCESS_PROPERTY_ASSOCIATION>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._properties )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var CHOSEN_METHOD: eACTION_METHOD {
      get {
        return SDAI.UNWRAP( super_eACTION.partialEntity._chosen_method )
      }
      set(newValue) {
        let partial = super_eACTION.partialEntity
        partial._chosen_method = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROPERTY_PROCESS`` )
    public var IDENTIFICATION: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._identification )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._identification = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eACTION
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eACTION.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eACTION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_property_process.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eACTION.self) else { return nil }
      self.super_eACTION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PROPERTY_PROCESS", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION.self)
      entityDef.add(supertype: ePROPERTY_PROCESS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePROPERTY_PROCESS.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PROPERTIES", keyPath: \ePROPERTY_PROCESS.PROPERTIES, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CHOSEN_METHOD", keyPath: \ePROPERTY_PROCESS.CHOSEN_METHOD, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "IDENTIFICATION", keyPath: \ePROPERTY_PROCESS.IDENTIFICATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \ePROPERTY_PROCESS.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePROPERTY_PROCESS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

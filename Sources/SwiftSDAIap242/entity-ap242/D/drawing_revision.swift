/* file: drawing_revision.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY drawing_revision
    SUBTYPE OF ( presentation_set );
      revision_identifier  : identifier;
      drawing_identifier   : drawing_definition;
      intended_scale       : OPTIONAL text;
    UNIQUE
      ur1 : revision_identifier, drawing_identifier;
  END_ENTITY; -- drawing_revision (line:13193 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	presentation_set
    ATTR:  areas,	TYPE: SET [1 : ?] OF area_in_set -- INVERSE
      FOR in_set;


  ENTITY(SELF)	drawing_revision
    ATTR:  revision_identifier,	TYPE: identifier -- EXPLICIT

    ATTR:  drawing_identifier,	TYPE: drawing_definition -- EXPLICIT

    ATTR:  intended_scale,	TYPE: OPTIONAL text -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _drawing_revision : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDRAWING_REVISION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _revision_identifier: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _drawing_identifier: eDRAWING_DEFINITION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _intended_scale: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sTIME_INTERVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_REQUEST_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCONTRACT_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_TITLED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSPECIFIED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._revision_identifier.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._drawing_identifier.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._intended_scale?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._revision_identifier.value.isValueEqualOptionally(to: rhs._revision_identifier.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._drawing_identifier.value.isValueEqualOptionally(to: rhs._drawing_identifier.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._intended_scale?.value.isValueEqualOptionally(to: rhs._intended_scale?.value, visited: &comppairs)	{
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
      if let comp = self._revision_identifier.value.isValueEqualOptionally(to: rhs._revision_identifier.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._drawing_identifier.value.isValueEqualOptionally(to: rhs._drawing_identifier.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._intended_scale?.value.isValueEqualOptionally(to: rhs._intended_scale?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eDRAWING_REVISION else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      let attr1 = SELF.REVISION_IDENTIFIER
      attributes.append( AnyHashable(attr1) )
      let attr2 = SELF.DRAWING_IDENTIFIER
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REVISION_IDENTIFIER: tIDENTIFIER, DRAWING_IDENTIFIER: eDRAWING_DEFINITION, 
                INTENDED_SCALE: tTEXT? ) {
      self._revision_identifier = REVISION_IDENTIFIER
      self._drawing_identifier = DRAWING_IDENTIFIER
      self._intended_scale = INTENDED_SCALE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eDRAWING_DEFINITION.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REVISION_IDENTIFIER: p0, DRAWING_IDENTIFIER: p1, INTENDED_SCALE: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY drawing_revision
    SUBTYPE OF ( presentation_set );
      revision_identifier  : identifier;
      drawing_identifier   : drawing_definition;
      intended_scale       : OPTIONAL text;
    UNIQUE
      ur1 : revision_identifier, drawing_identifier;
  END_ENTITY; -- drawing_revision (line:13193 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDRAWING_REVISION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _drawing_revision.self
    }
    public let partialEntity: _drawing_revision

    //MARK: SUPERTYPES
    public let super_ePRESENTATION_SET: ePRESENTATION_SET 	// [1]
    public var super_eDRAWING_REVISION: eDRAWING_REVISION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __INVERSE__ attribute
    /// observing eAREA_IN_SET .IN_SET
    /// - origin: SUPER( ``ePRESENTATION_SET`` )
    public var AREAS: SDAI.SET<eAREA_IN_SET>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_ePRESENTATION_SET.partialEntity._areas )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAWING_REVISION`` )
    public var INTENDED_SCALE: tTEXT?  {
      get {
        return self.partialEntity._intended_scale
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._intended_scale = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAWING_REVISION`` )
    public var REVISION_IDENTIFIER: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._revision_identifier )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._revision_identifier = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAWING_REVISION`` )
    public var DRAWING_IDENTIFIER: eDRAWING_DEFINITION {
      get {
        return SDAI.UNWRAP( self.partialEntity._drawing_identifier )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._drawing_identifier = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_drawing_revision.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRESENTATION_SET.self) else { return nil }
      self.super_ePRESENTATION_SET = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DRAWING_REVISION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRESENTATION_SET.self)
      entityDef.add(supertype: eDRAWING_REVISION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "AREAS", keyPath: \eDRAWING_REVISION.AREAS, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTENDED_SCALE", keyPath: \eDRAWING_REVISION.INTENDED_SCALE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REVISION_IDENTIFIER", keyPath: \eDRAWING_REVISION.REVISION_IDENTIFIER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAWING_IDENTIFIER", keyPath: \eDRAWING_REVISION.DRAWING_IDENTIFIER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _drawing_revision.UNIQUE_ur1)

      return entityDef
    }

  }
}

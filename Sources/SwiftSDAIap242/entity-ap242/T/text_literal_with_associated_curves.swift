/* file: text_literal_with_associated_curves.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY text_literal_with_associated_curves
    SUBTYPE OF ( text_literal );
      associated_curves  : SET [1 : ?] OF curve;
  END_ENTITY; -- text_literal_with_associated_curves (line:32160 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	text_literal
    ATTR:  literal,	TYPE: presentable_text -- EXPLICIT

    ATTR:  placement,	TYPE: axis2_placement -- EXPLICIT

    ATTR:  alignment,	TYPE: text_alignment -- EXPLICIT

    ATTR:  path,	TYPE: text_path -- EXPLICIT

    ATTR:  font,	TYPE: font_select -- EXPLICIT


  ENTITY(SELF)	text_literal_with_associated_curves
    ATTR:  associated_curves,	TYPE: SET [1 : ?] OF curve -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _text_literal_with_associated_curves : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _associated_curves: SDAI.SET<eCURVE>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._associated_curves.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._associated_curves.value.isValueEqualOptionally(to: rhs._associated_curves.value, visited: &comppairs)	{
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
      if let comp = self._associated_curves.value.isValueEqualOptionally(to: rhs._associated_curves.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ASSOCIATED_CURVES: SDAI.SET<eCURVE>/*[1:nil]*/ ) {
      self._associated_curves = ASSOCIATED_CURVES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<eCURVE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ASSOCIATED_CURVES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY text_literal_with_associated_curves
    SUBTYPE OF ( text_literal );
      associated_curves  : SET [1 : ?] OF curve;
  END_ENTITY; -- text_literal_with_associated_curves (line:32160 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTEXT_LITERAL_WITH_ASSOCIATED_CURVES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _text_literal_with_associated_curves.self
    }
    public let partialEntity: _text_literal_with_associated_curves

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTEXT_LITERAL: eTEXT_LITERAL 	// [3]
    public var super_eTEXT_LITERAL_WITH_ASSOCIATED_CURVES: eTEXT_LITERAL_WITH_ASSOCIATED_CURVES { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTEXT_LITERAL`` )
    public var PATH: nTEXT_PATH {
      get {
        return SDAI.UNWRAP( super_eTEXT_LITERAL.partialEntity._path )
      }
      set(newValue) {
        let partial = super_eTEXT_LITERAL.partialEntity
        partial._path = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTEXT_LITERAL`` )
    public var LITERAL: tPRESENTABLE_TEXT {
      get {
        return SDAI.UNWRAP( super_eTEXT_LITERAL.partialEntity._literal )
      }
      set(newValue) {
        let partial = super_eTEXT_LITERAL.partialEntity
        partial._literal = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTEXT_LITERAL`` )
    public var PLACEMENT: sAXIS2_PLACEMENT {
      get {
        return SDAI.UNWRAP( super_eTEXT_LITERAL.partialEntity._placement )
      }
      set(newValue) {
        let partial = super_eTEXT_LITERAL.partialEntity
        partial._placement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTEXT_LITERAL`` )
    public var ALIGNMENT: tTEXT_ALIGNMENT {
      get {
        return SDAI.UNWRAP( super_eTEXT_LITERAL.partialEntity._alignment )
      }
      set(newValue) {
        let partial = super_eTEXT_LITERAL.partialEntity
        partial._alignment = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTEXT_LITERAL`` )
    public var FONT: sFONT_SELECT {
      get {
        return SDAI.UNWRAP( super_eTEXT_LITERAL.partialEntity._font )
      }
      set(newValue) {
        let partial = super_eTEXT_LITERAL.partialEntity
        partial._font = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTEXT_LITERAL_WITH_ASSOCIATED_CURVES`` )
    public var ASSOCIATED_CURVES: SDAI.SET<eCURVE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._associated_curves )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._associated_curves = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_text_literal_with_associated_curves.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eTEXT_LITERAL.self) else { return nil }
      self.super_eTEXT_LITERAL = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TEXT_LITERAL_WITH_ASSOCIATED_CURVES", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTEXT_LITERAL.self)
      entityDef.add(supertype: eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PATH", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.PATH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LITERAL", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.LITERAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACEMENT", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.PLACEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ALIGNMENT", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.ALIGNMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FONT", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.FONT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSOCIATED_CURVES", keyPath: \eTEXT_LITERAL_WITH_ASSOCIATED_CURVES.ASSOCIATED_CURVES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
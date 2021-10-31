/* file: draughting_text_literal_with_delineation.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY draughting_text_literal_with_delineation
    SUBTYPE OF ( text_literal_with_delineation );
    WHERE
      wr1: ( SELF.delineation IN [ 'underline', 'overline'] );
  END_ENTITY; -- draughting_text_literal_with_delineation (line:13176 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(4)	text_literal_with_delineation
    ATTR:  delineation,	TYPE: text_delineation -- EXPLICIT


  ENTITY(SELF)	draughting_text_literal_with_delineation
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _draughting_text_literal_with_delineation : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DELINEATION
      let _TEMP2 = ([SDAI.AIE(SDAI.STRING("underline")), 
        SDAI.AIE(SDAI.STRING("overline"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(/*tTEXT_DELINEATION*/_TEMP1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY draughting_text_literal_with_delineation
    SUBTYPE OF ( text_literal_with_delineation );
    WHERE
      wr1: ( SELF.delineation IN [ 'underline', 'overline'] );
  END_ENTITY; -- draughting_text_literal_with_delineation (line:13176 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _draughting_text_literal_with_delineation.self
    }
    public let partialEntity: _draughting_text_literal_with_delineation

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTEXT_LITERAL: eTEXT_LITERAL 	// [3]
    public let super_eTEXT_LITERAL_WITH_DELINEATION: eTEXT_LITERAL_WITH_DELINEATION 	// [4]
    public var super_eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION: eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION { return self } 	// [5]

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
    /// - origin: SUPER( ``eTEXT_LITERAL_WITH_DELINEATION`` )
    public var DELINEATION: tTEXT_DELINEATION {
      get {
        return SDAI.UNWRAP( super_eTEXT_LITERAL_WITH_DELINEATION.partialEntity._delineation )
      }
      set(newValue) {
        let partial = super_eTEXT_LITERAL_WITH_DELINEATION.partialEntity
        partial._delineation = SDAI.UNWRAP(newValue)
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_draughting_text_literal_with_delineation.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eTEXT_LITERAL.self) else { return nil }
      self.super_eTEXT_LITERAL = super3

      guard let super4 = complexEntity?.entityReference(eTEXT_LITERAL_WITH_DELINEATION.self) else { return nil }
      self.super_eTEXT_LITERAL_WITH_DELINEATION = super4

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _draughting_text_literal_with_delineation.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DRAUGHTING_TEXT_LITERAL_WITH_DELINEATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTEXT_LITERAL.self)
      entityDef.add(supertype: eTEXT_LITERAL_WITH_DELINEATION.self)
      entityDef.add(supertype: eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PATH", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.PATH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LITERAL", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.LITERAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DELINEATION", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.DELINEATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACEMENT", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.PLACEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ALIGNMENT", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.ALIGNMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FONT", keyPath: \eDRAUGHTING_TEXT_LITERAL_WITH_DELINEATION.FONT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

/* file: dimension_text_associativity.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY dimension_text_associativity
    SUBTYPE OF ( text_literal, mapped_item );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DIMENSION_REPRESENTATION' IN TYPEOF( SELF
               \mapped_item.mapping_source.mapped_representation ) );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAUGHTING_CALLOUT' IN TYPEOF( SELF\mapped_item
               .mapping_target ) );
      wr3: ( SIZEOF( QUERY ( ato <* QUERY ( si <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM.ITEM'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_TEXT_OCCURRENCE'  IN TYPEOF( si ) ) )
               | ( NOT ( SIZEOF( QUERY ( dc <* USEDIN( ato, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DRAUGHTING_CALLOUT.CONTENTS'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DRAUGHTING_CALLOUT'  IN TYPEOF( dc ) ) ) * [SELF\mapped_item.mapping_target] ) = 1 ) ) ) ) 
               = 0 );
  END_ENTITY; -- dimension_text_associativity (line:12487 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  SUPER- ENTITY(4)	mapped_item
    ATTR:  mapping_source,	TYPE: representation_map -- EXPLICIT
      -- observed by
        ENTITY(1): representation_map,	ATTR: map_usage,	TYPE: SET [1 : ?] OF mapped_item
      -- possibly overriden by
          ENTITY: camera_image,	TYPE: camera_usage
          ENTITY: annotation_symbol,	TYPE: symbol_representation_map

    ATTR:  mapping_target,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: annotation_text_character,	TYPE: axis2_placement
          ENTITY: camera_image,	TYPE: planar_box
          ENTITY: annotation_text,	TYPE: axis2_placement
          ENTITY: annotation_symbol,	TYPE: symbol_target


  ENTITY(SELF)	dimension_text_associativity
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _dimension_text_associativity : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDIMENSION_TEXT_ASSOCIATIVITY.self
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
    public static func WHERE_wr1(SELF: eDIMENSION_TEXT_ASSOCIATIVITY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPED_REPRESENTATION, 
        IS: eSHAPE_DIMENSION_REPRESENTATION.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eDIMENSION_TEXT_ASSOCIATIVITY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_TARGET, 
        IS: eDRAUGHTING_CALLOUT.self)
      return _TEMP1
    }
    public static func WHERE_wr3(SELF: eDIMENSION_TEXT_ASSOCIATIVITY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eSTYLED_ITEM
        .ITEM)
      let _TEMP2 = _TEMP1.QUERY{ SI in 

          let _TEMP1 = SDAI.TYPEOF(SI, IS: eANNOTATION_TEXT_OCCURRENCE.self)
          return _TEMP1 }
      let _TEMP3 = _TEMP2.QUERY{ ATO in 

          let _TEMP1 = SDAI.USEDIN(T: ATO, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eDRAUGHTING_CALLOUT.CONTENTS)
          let _TEMP2 = _TEMP1.QUERY{ DC in 

              let _TEMP1 = SDAI.TYPEOF(DC, IS: eDRAUGHTING_CALLOUT.self)
              return _TEMP1 }
          let _TEMP3 = SELF.GROUP_REF(eMAPPED_ITEM.self)
          let _TEMP4 = _TEMP3?.MAPPING_TARGET
          let _TEMP5 = ([SDAI.AIE(_TEMP4)] as [SDAI.AggregationInitializerElement<eREPRESENTATION_ITEM>])
          let _TEMP6 = SDAI.FORCE_OPTIONAL(_TEMP2) * SDAI.FORCE_OPTIONAL(_TEMP5)
          let _TEMP7 = SDAI.SIZEOF(_TEMP6)
          let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP9 =  !_TEMP8
          return _TEMP9 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
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
  ENTITY dimension_text_associativity
    SUBTYPE OF ( text_literal, mapped_item );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DIMENSION_REPRESENTATION' IN TYPEOF( SELF
               \mapped_item.mapping_source.mapped_representation ) );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAUGHTING_CALLOUT' IN TYPEOF( SELF\mapped_item
               .mapping_target ) );
      wr3: ( SIZEOF( QUERY ( ato <* QUERY ( si <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.STYLED_ITEM.ITEM'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_TEXT_OCCURRENCE'  IN TYPEOF( si ) ) )
               | ( NOT ( SIZEOF( QUERY ( dc <* USEDIN( ato, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DRAUGHTING_CALLOUT.CONTENTS'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DRAUGHTING_CALLOUT'  IN TYPEOF( dc ) ) ) * [SELF\mapped_item.mapping_target] ) = 1 ) ) ) ) 
               = 0 );
  END_ENTITY; -- dimension_text_associativity (line:12487 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDIMENSION_TEXT_ASSOCIATIVITY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _dimension_text_associativity.self
    }
    public let partialEntity: _dimension_text_associativity

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eTEXT_LITERAL: eTEXT_LITERAL 	// [3]
    public let super_eMAPPED_ITEM: eMAPPED_ITEM 	// [4]
    public var super_eDIMENSION_TEXT_ASSOCIATIVITY: eDIMENSION_TEXT_ASSOCIATIVITY { return self } 	// [5]

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

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eMAPPED_ITEM`` )
    public var MAPPING_SOURCE: eREPRESENTATION_MAP {
      get {
        return SDAI.UNWRAP( super_eMAPPED_ITEM.partialEntity._mapping_source )
      }
      set(newValue) {
        let partial = super_eMAPPED_ITEM.partialEntity
        partial._mapping_source = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMAPPED_ITEM`` )
    public var MAPPING_TARGET: eREPRESENTATION_ITEM {
      get {
        return SDAI.UNWRAP( super_eMAPPED_ITEM.partialEntity._mapping_target )
      }
      set(newValue) {
        let partial = super_eMAPPED_ITEM.partialEntity
        partial._mapping_target = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_dimension_text_associativity.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eTEXT_LITERAL.self) else { return nil }
      self.super_eTEXT_LITERAL = super3

      guard let super4 = complexEntity?.entityReference(eMAPPED_ITEM.self) else { return nil }
      self.super_eMAPPED_ITEM = super4

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
      result[prefix2 + " .WHERE_wr1"] = _dimension_text_associativity.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _dimension_text_associativity.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _dimension_text_associativity.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DIMENSION_TEXT_ASSOCIATIVITY", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTEXT_LITERAL.self)
      entityDef.add(supertype: eMAPPED_ITEM.self)
      entityDef.add(supertype: eDIMENSION_TEXT_ASSOCIATIVITY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PATH", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.PATH, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LITERAL", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.LITERAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACEMENT", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.PLACEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAPPING_SOURCE", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.MAPPING_SOURCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAPPING_TARGET", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.MAPPING_TARGET, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ALIGNMENT", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.ALIGNMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FONT", keyPath: \eDIMENSION_TEXT_ASSOCIATIVITY.FONT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

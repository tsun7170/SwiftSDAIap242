/* file: text_style_with_box_characteristics.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY text_style_with_box_characteristics
    SUBTYPE OF ( text_style );
      characteristics  : SET [1 : 4] OF box_characteristic_select;
    WHERE
      wr1: ( SIZEOF( QUERY ( c1 <* characteristics | ( SIZEOF( QUERY ( c2 <* ( characteristics - c1 ) | ( 
               TYPEOF( c1 ) = TYPEOF( c2 ) ) ) ) > 0 ) ) ) = 0 );
  END_ENTITY; -- text_style_with_box_characteristics (line:32225 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  SUPER- ENTITY(2)	text_style
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  character_appearance,	TYPE: character_style_select -- EXPLICIT


  ENTITY(SELF)	text_style_with_box_characteristics
    ATTR:  characteristics,	TYPE: SET [1 : 4] OF box_characteristic_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _text_style_with_box_characteristics : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTEXT_STYLE_WITH_BOX_CHARACTERISTICS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _characteristics: SDAI.SET<sBOX_CHARACTERISTIC_SELECT>/*[1:4]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._characteristics.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._characteristics.value.isValueEqualOptionally(to: rhs._characteristics.value, visited: &comppairs)	{
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
      if let comp = self._characteristics.value.isValueEqualOptionally(to: rhs._characteristics.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eTEXT_STYLE_WITH_BOX_CHARACTERISTICS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.CHARACTERISTICS
        .QUERY{ C1 in 

          let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.CHARACTERISTICS) - SDAI.FORCE_OPTIONAL(C1)
          let _TEMP2 = _TEMP1?.QUERY{ C2 in 

              let _TEMP1 = SDAI.TYPEOF(C1)
              let _TEMP2 = SDAI.TYPEOF(C2)
              let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(_TEMP2)
              return _TEMP3 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          return _TEMP4 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CHARACTERISTICS: SDAI.SET<sBOX_CHARACTERISTIC_SELECT>/*[1:4]*/ ) {
      self._characteristics = CHARACTERISTICS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sBOX_CHARACTERISTIC_SELECT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CHARACTERISTICS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY text_style_with_box_characteristics
    SUBTYPE OF ( text_style );
      characteristics  : SET [1 : 4] OF box_characteristic_select;
    WHERE
      wr1: ( SIZEOF( QUERY ( c1 <* characteristics | ( SIZEOF( QUERY ( c2 <* ( characteristics - c1 ) | ( 
               TYPEOF( c1 ) = TYPEOF( c2 ) ) ) ) > 0 ) ) ) = 0 );
  END_ENTITY; -- text_style_with_box_characteristics (line:32225 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTEXT_STYLE_WITH_BOX_CHARACTERISTICS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _text_style_with_box_characteristics.self
    }
    public let partialEntity: _text_style_with_box_characteristics

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public let super_eTEXT_STYLE: eTEXT_STYLE 	// [2]
    public var super_eTEXT_STYLE_WITH_BOX_CHARACTERISTICS: eTEXT_STYLE_WITH_BOX_CHARACTERISTICS { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTEXT_STYLE`` )
    public var CHARACTER_APPEARANCE: sCHARACTER_STYLE_SELECT {
      get {
        return SDAI.UNWRAP( super_eTEXT_STYLE.partialEntity._character_appearance )
      }
      set(newValue) {
        let partial = super_eTEXT_STYLE.partialEntity
        partial._character_appearance = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTEXT_STYLE_WITH_BOX_CHARACTERISTICS`` )
    public var CHARACTERISTICS: SDAI.SET<sBOX_CHARACTERISTIC_SELECT>/*[1:4]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._characteristics )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._characteristics = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTEXT_STYLE`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eTEXT_STYLE.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eTEXT_STYLE.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_text_style_with_box_characteristics.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eTEXT_STYLE.self) else { return nil }
      self.super_eTEXT_STYLE = super2

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
      result[prefix2 + " .WHERE_wr1"] = _text_style_with_box_characteristics.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TEXT_STYLE_WITH_BOX_CHARACTERISTICS", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eTEXT_STYLE.self)
      entityDef.add(supertype: eTEXT_STYLE_WITH_BOX_CHARACTERISTICS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CHARACTER_APPEARANCE", keyPath: \eTEXT_STYLE_WITH_BOX_CHARACTERISTICS.CHARACTER_APPEARANCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USERS", keyPath: \eTEXT_STYLE_WITH_BOX_CHARACTERISTICS.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CHARACTERISTICS", keyPath: \eTEXT_STYLE_WITH_BOX_CHARACTERISTICS.CHARACTERISTICS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eTEXT_STYLE_WITH_BOX_CHARACTERISTICS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

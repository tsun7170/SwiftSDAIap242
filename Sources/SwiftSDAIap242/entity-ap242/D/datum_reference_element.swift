/* file: datum_reference_element.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY datum_reference_element
    SUBTYPE OF ( general_datum_reference );
    DERIVE
      owner  : general_datum_reference := sts_get_general_datum_reference( SELF );
    WHERE
      wr1: ( SELF <> owner );
      wr2: EXISTS( owner );
      wr3: ( SELF\shape_aspect.of_shape = owner\shape_aspect.of_shape );
  END_ENTITY; -- datum_reference_element (line:11721 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	shape_aspect
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_shape,	TYPE: product_definition_shape -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: component_feature,	TYPE: assembly_component
          ENTITY: constituent_shape_aspect,	TYPE: product_definition_shape	(as DERIVED)
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)

    ATTR:  product_definitional,	TYPE: LOGICAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: default_model_geometric_view,	TYPE: LOGICAL	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  SUPER- ENTITY(2)	general_datum_reference
    ATTR:  base,	TYPE: datum_or_common_datum -- EXPLICIT

    ATTR:  modifiers,	TYPE: OPTIONAL SET [1 : ?] OF datum_reference_modifier -- EXPLICIT

    ATTR:  base_common_datum_list,	TYPE: common_datum_list -- DERIVED
      := base


  ENTITY(SELF)	datum_reference_element
    ATTR:  owner,	TYPE: general_datum_reference -- DERIVED
      := sts_get_general_datum_reference( SELF )


*/


//MARK: - Partial Entity
  public final class _datum_reference_element : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATUM_REFERENCE_ELEMENT.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE
    internal func _owner__getter(SELF: eDATUM_REFERENCE_ELEMENT) -> eGENERAL_DATUM_REFERENCE?  {

      let _TEMP1 = STS_GET_GENERAL_DATUM_REFERENCE(SELF)
      return _TEMP1
    }

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
    public static func WHERE_wr1(SELF: eDATUM_REFERENCE_ELEMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF) .!=. SELF.OWNER
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eDATUM_REFERENCE_ELEMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.OWNER)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }
    public static func WHERE_wr3(SELF: eDATUM_REFERENCE_ELEMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.OF_SHAPE
      let _TEMP3 = SELF.OWNER?.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP4 = _TEMP3?.OF_SHAPE
      let _TEMP5 = _TEMP2 .==. _TEMP4
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
  ENTITY datum_reference_element
    SUBTYPE OF ( general_datum_reference );
    DERIVE
      owner  : general_datum_reference := sts_get_general_datum_reference( SELF );
    WHERE
      wr1: ( SELF <> owner );
      wr2: EXISTS( owner );
      wr3: ( SELF\shape_aspect.of_shape = owner\shape_aspect.of_shape );
  END_ENTITY; -- datum_reference_element (line:11721 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATUM_REFERENCE_ELEMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _datum_reference_element.self
    }
    public let partialEntity: _datum_reference_element

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public let super_eGENERAL_DATUM_REFERENCE: eGENERAL_DATUM_REFERENCE 	// [2]
    public var super_eDATUM_REFERENCE_ELEMENT: eDATUM_REFERENCE_ELEMENT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      get {
        if let resolved = _shape_aspect._product_definitional__provider(complex: self.complexEntity) {
          let value = resolved._product_definitional__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._product_definitional )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._product_definitional__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._product_definitional = SDAI.LOGICAL(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eDATUM_REFERENCE_ELEMENT`` )
    public var OWNER: eGENERAL_DATUM_REFERENCE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"OWNER") {
          return cached.value as! eGENERAL_DATUM_REFERENCE? 
        }
        let origin = self
        let value = origin.partialEntity._owner__getter(SELF: origin)
        updateCache(derivedAttributeName:"OWNER", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eSHAPE_ASPECT.partialEntity._description
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE {
      get {
        if let resolved = _shape_aspect._of_shape__provider(complex: self.complexEntity) {
          let value = resolved._of_shape__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._of_shape )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._of_shape__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._of_shape = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERAL_DATUM_REFERENCE`` )
    public var MODIFIERS: (SDAI.SET<sDATUM_REFERENCE_MODIFIER>/*[1:nil]*/ )?  {
      get {
        return super_eGENERAL_DATUM_REFERENCE.partialEntity._modifiers
      }
      set(newValue) {
        let partial = super_eGENERAL_DATUM_REFERENCE.partialEntity
        partial._modifiers = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eGENERAL_DATUM_REFERENCE`` )
    public var BASE: sDATUM_OR_COMMON_DATUM {
      get {
        return SDAI.UNWRAP( super_eGENERAL_DATUM_REFERENCE.partialEntity._base )
      }
      set(newValue) {
        let partial = super_eGENERAL_DATUM_REFERENCE.partialEntity
        partial._base = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGENERAL_DATUM_REFERENCE`` )
    public var BASE_COMMON_DATUM_LIST: tCOMMON_DATUM_LIST?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"BASE_COMMON_DATUM_LIST") {
          return cached.value as! tCOMMON_DATUM_LIST? 
        }
        let origin = super_eGENERAL_DATUM_REFERENCE
        let value = tCOMMON_DATUM_LIST(origin.partialEntity._base_common_datum_list__getter(SELF: origin))
        updateCache(derivedAttributeName:"BASE_COMMON_DATUM_LIST", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eSHAPE_ASPECT
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_datum_reference_element.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super1

      guard let super2 = complexEntity?.entityReference(eGENERAL_DATUM_REFERENCE.self) else { return nil }
      self.super_eGENERAL_DATUM_REFERENCE = super2

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
      result[prefix2 + " .WHERE_wr1"] = _datum_reference_element.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _datum_reference_element.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _datum_reference_element.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATUM_REFERENCE_ELEMENT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eGENERAL_DATUM_REFERENCE.self)
      entityDef.add(supertype: eDATUM_REFERENCE_ELEMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eDATUM_REFERENCE_ELEMENT.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OWNER", keyPath: \eDATUM_REFERENCE_ELEMENT.OWNER, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDATUM_REFERENCE_ELEMENT.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eDATUM_REFERENCE_ELEMENT.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MODIFIERS", keyPath: \eDATUM_REFERENCE_ELEMENT.MODIFIERS, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASE", keyPath: \eDATUM_REFERENCE_ELEMENT.BASE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASE_COMMON_DATUM_LIST", keyPath: \eDATUM_REFERENCE_ELEMENT.BASE_COMMON_DATUM_LIST, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eDATUM_REFERENCE_ELEMENT.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATUM_REFERENCE_ELEMENT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

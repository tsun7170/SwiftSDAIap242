/* file: general_datum_reference.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY general_datum_reference
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            datum_reference_compartment, 
            datum_reference_element ) )
    SUBTYPE OF ( shape_aspect );
      base       : datum_or_common_datum;
      modifiers  : OPTIONAL SET [1 : ?] OF datum_reference_modifier;
    DERIVE
      base_common_datum_list  : common_datum_list := base;
    WHERE
      wr1: ( SELF\shape_aspect.name = '' );
      wr2: ( NOT EXISTS( SELF\shape_aspect.description ) );
      wr3: ( NOT EXISTS( SELF\shape_aspect.id ) );
      wr4: ( SELF\shape_aspect.product_definitional = FALSE );
      wr5: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM' IN TYPEOF( base ) ) ) OR ( SELF\
               shape_aspect.of_shape = base\shape_aspect.of_shape ) );
      wr6: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMMON_DATUM_LIST' IN TYPEOF( base ) ) ) 
               OR ( SELF\shape_aspect.of_shape = base_common_datum_list[1]\shape_aspect.of_shape ) );
  END_ENTITY; -- general_datum_reference (line:16623 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	general_datum_reference
    ATTR:  base,	TYPE: datum_or_common_datum -- EXPLICIT

    ATTR:  modifiers,	TYPE: OPTIONAL SET [1 : ?] OF datum_reference_modifier -- EXPLICIT

    ATTR:  base_common_datum_list,	TYPE: common_datum_list -- DERIVED
      := base


  SUB- ENTITY(3)	datum_reference_compartment
    ATTR:  owner,	TYPE: datum_system -- INVERSE	(AMBIGUOUS/MASKED)
      FOR constituents;


  SUB- ENTITY(4)	datum_reference_element
    ATTR:  owner,	TYPE: general_datum_reference -- DERIVED	(AMBIGUOUS/MASKED)
      := sts_get_general_datum_reference( SELF )


*/


//MARK: - Partial Entity
  public final class _general_datum_reference : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGENERAL_DATUM_REFERENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _base: sDATUM_OR_COMMON_DATUM // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _modifiers: (SDAI.SET<sDATUM_REFERENCE_MODIFIER>/*[1:nil]*/ )?  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _base_common_datum_list__getter(SELF: eGENERAL_DATUM_REFERENCE) -> tCOMMON_DATUM_LIST?  {
      return tCOMMON_DATUM_LIST(/*sDATUM_OR_COMMON_DATUM*/SELF.BASE)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sTOLERANCE_ZONE_TARGET.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._base.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._modifiers?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._base.value.isValueEqualOptionally(to: rhs._base.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._modifiers?.value.isValueEqualOptionally(to: rhs._modifiers?.value, visited: &comppairs)	{
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
      if let comp = self._base.value.isValueEqualOptionally(to: rhs._base.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._modifiers?.value.isValueEqualOptionally(to: rhs._modifiers?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eGENERAL_DATUM_REFERENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(""))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eGENERAL_DATUM_REFERENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.DESCRIPTION
      let _TEMP3 = SDAI.EXISTS(_TEMP2)
      let _TEMP4 =  !_TEMP3
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eGENERAL_DATUM_REFERENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.ID
      let _TEMP3 = SDAI.EXISTS(_TEMP2)
      let _TEMP4 =  !_TEMP3
      return _TEMP4
    }
    public static func WHERE_wr4(SELF: eGENERAL_DATUM_REFERENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.PRODUCT_DEFINITIONAL
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
      return _TEMP3
    }
    public static func WHERE_wr5(SELF: eGENERAL_DATUM_REFERENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.BASE, IS: eDATUM.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP4 = _TEMP3?.OF_SHAPE
      let _TEMP5 = SELF.BASE.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP6 = _TEMP5?.OF_SHAPE
      let _TEMP7 = _TEMP4 .==. _TEMP6
      let _TEMP8 = _TEMP2 || _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr6(SELF: eGENERAL_DATUM_REFERENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.BASE, IS: tCOMMON_DATUM_LIST.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP4 = _TEMP3?.OF_SHAPE
      let _TEMP5 = SELF.BASE_COMMON_DATUM_LIST?[1]
      let _TEMP6 = _TEMP5?.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP7 = _TEMP6?.OF_SHAPE
      let _TEMP8 = _TEMP4 .==. _TEMP7
      let _TEMP9 = _TEMP2 || _TEMP8
      return _TEMP9
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASE: sDATUM_OR_COMMON_DATUM, MODIFIERS: (SDAI.SET<sDATUM_REFERENCE_MODIFIER>/*[1:nil]*/ )? ) {
      self._base = BASE
      self._modifiers = MODIFIERS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sDATUM_OR_COMMON_DATUM.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: SDAI.SET<
        sDATUM_REFERENCE_MODIFIER>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASE: p0, MODIFIERS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY general_datum_reference
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            datum_reference_compartment, 
            datum_reference_element ) )
    SUBTYPE OF ( shape_aspect );
      base       : datum_or_common_datum;
      modifiers  : OPTIONAL SET [1 : ?] OF datum_reference_modifier;
    DERIVE
      base_common_datum_list  : common_datum_list := base;
    WHERE
      wr1: ( SELF\shape_aspect.name = '' );
      wr2: ( NOT EXISTS( SELF\shape_aspect.description ) );
      wr3: ( NOT EXISTS( SELF\shape_aspect.id ) );
      wr4: ( SELF\shape_aspect.product_definitional = FALSE );
      wr5: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM' IN TYPEOF( base ) ) ) OR ( SELF\
               shape_aspect.of_shape = base\shape_aspect.of_shape ) );
      wr6: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMMON_DATUM_LIST' IN TYPEOF( base ) ) ) 
               OR ( SELF\shape_aspect.of_shape = base_common_datum_list[1]\shape_aspect.of_shape ) );
  END_ENTITY; -- general_datum_reference (line:16623 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGENERAL_DATUM_REFERENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _general_datum_reference.self
    }
    public let partialEntity: _general_datum_reference

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public var super_eGENERAL_DATUM_REFERENCE: eGENERAL_DATUM_REFERENCE { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eDATUM_REFERENCE_COMPARTMENT: eDATUM_REFERENCE_COMPARTMENT? {	// [3]
      return self.complexEntity.entityReference(eDATUM_REFERENCE_COMPARTMENT.self)
    }

    public var sub_eDATUM_REFERENCE_ELEMENT: eDATUM_REFERENCE_ELEMENT? {	// [4]
      return self.complexEntity.entityReference(eDATUM_REFERENCE_ELEMENT.self)
    }


    //MARK: ATTRIBUTES
    // OWNER: (2 AMBIGUOUS REFs)

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
    /// - origin: SELF( ``eGENERAL_DATUM_REFERENCE`` )
    public var MODIFIERS: (SDAI.SET<sDATUM_REFERENCE_MODIFIER>/*[1:nil]*/ )?  {
      get {
        return self.partialEntity._modifiers
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._modifiers = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERAL_DATUM_REFERENCE`` )
    public var BASE: sDATUM_OR_COMMON_DATUM {
      get {
        return SDAI.UNWRAP( self.partialEntity._base )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._base = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eGENERAL_DATUM_REFERENCE`` )
    public var BASE_COMMON_DATUM_LIST: tCOMMON_DATUM_LIST?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"BASE_COMMON_DATUM_LIST") {
          return cached.value as! tCOMMON_DATUM_LIST? 
        }
        let origin = self
        let value = origin.partialEntity._base_common_datum_list__getter(SELF: origin)
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
      guard let partial = complexEntity?.partialEntityInstance(_general_datum_reference.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super1

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
      result[prefix2 + " .WHERE_wr1"] = _general_datum_reference.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _general_datum_reference.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _general_datum_reference.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _general_datum_reference.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _general_datum_reference.WHERE_wr5(SELF: instance)
      result[prefix2 + " .WHERE_wr6"] = _general_datum_reference.WHERE_wr6(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GENERAL_DATUM_REFERENCE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eGENERAL_DATUM_REFERENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eGENERAL_DATUM_REFERENCE.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGENERAL_DATUM_REFERENCE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eGENERAL_DATUM_REFERENCE.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MODIFIERS", keyPath: \eGENERAL_DATUM_REFERENCE.MODIFIERS, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASE", keyPath: \eGENERAL_DATUM_REFERENCE.BASE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASE_COMMON_DATUM_LIST", keyPath: \eGENERAL_DATUM_REFERENCE.BASE_COMMON_DATUM_LIST, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eGENERAL_DATUM_REFERENCE.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eGENERAL_DATUM_REFERENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
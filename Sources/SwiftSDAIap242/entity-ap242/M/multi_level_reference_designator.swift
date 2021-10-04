/* file: multi_level_reference_designator.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY multi_level_reference_designator
    SUBTYPE OF ( assembly_component_usage );
      location  : LIST [1 : ?] OF UNIQUE next_assembly_usage_occurrence;
    DERIVE
      SELF\product_definition_relationship.relating_product_definition : product_definition := location[1]\
                                          product_definition_relationship.relating_product_definition;
      SELF\product_definition_relationship.related_product_definition : product_definition_or_reference := 
                                          location[HIINDEX( location )]\product_definition_relationship.
                                          related_product_definition;
      leaf                            : product_definition_or_reference := related_product_definition;
      root                            : product_definition := relating_product_definition;
    UNIQUE
      ur1 : location;
    WHERE
      wr1: unambiguously_specified_multi_level_reference_designator( location );
      wr2: ( SIZEOF( QUERY ( cp <* location | ( NOT EXISTS( cp\assembly_component_usage.reference_designator ) ) ) ) 
               = 0 );
  END_ENTITY; -- multi_level_reference_designator (line:21683 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_relationship
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
      *** ENTITY: multi_level_reference_designator,	TYPE: product_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component

    ATTR:  related_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- observed by
        ENTITY(1): product_definition_occurrence,	ATTR: assembly_usages,	TYPE: SET [0 : ?] OF
          assembly_component_usage
      -- possibly overriden by
          ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
      *** ENTITY: multi_level_reference_designator,	TYPE: product_definition_or_reference	(as DERIVED)
          ENTITY: component_definition,	TYPE: component_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component


  SUPER- ENTITY(2)	product_definition_usage
    (no local attributes)

  SUPER- ENTITY(3)	assembly_component_usage
    ATTR:  reference_designator,	TYPE: OPTIONAL identifier -- EXPLICIT


  ENTITY(SELF)	multi_level_reference_designator
    ATTR:  location,	TYPE: LIST [1 : ?] OF UNIQUE next_assembly_usage_occurrence -- EXPLICIT

    REDCR: relating_product_definition,	TYPE: product_definition -- DERIVED (DYNAMIC)
      := location[1]\product_definition_relationship.relating_product_definition
      -- OVERRIDING ENTITY: product_definition_relationship

    REDCR: related_product_definition,	TYPE: product_definition_or_reference -- DERIVED (DYNAMIC)
      := location[HIINDEX( location )]\product_definition_relationship.related_product_definition
      -- OVERRIDING ENTITY: product_definition_relationship

    ATTR:  leaf,	TYPE: product_definition_or_reference -- DERIVED
      := related_product_definition

    ATTR:  root,	TYPE: product_definition -- DERIVED
      := relating_product_definition


*/


//MARK: - Partial Entity
  public final class _multi_level_reference_designator : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMULTI_LEVEL_REFERENCE_DESIGNATOR.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _location: SDAI.LIST_UNIQUE<eNEXT_ASSEMBLY_USAGE_OCCURRENCE>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePRODUCT_DEFINITION_RELATIONSHIP)
    /// - attribute value provider protocol conformance wrapper
    internal func _relating_product_definition__getter(complex: SDAI.ComplexEntity) -> 
      sPRODUCT_DEFINITION_OR_REFERENCE {
      let SELF = complex.entityReference( eMULTI_LEVEL_REFERENCE_DESIGNATOR.self )!
      return SDAI.UNWRAP( sPRODUCT_DEFINITION_OR_REFERENCE(SELF.RELATING_PRODUCT_DEFINITION) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePRODUCT_DEFINITION_RELATIONSHIP)
    /// - gut of derived attribute logic
    internal func _relating_product_definition__getter(SELF: eMULTI_LEVEL_REFERENCE_DESIGNATOR) -> 
      ePRODUCT_DEFINITION {

      let _TEMP1 = SELF.LOCATION[1]
      let _TEMP2 = _TEMP1?.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP3 = _TEMP2?.RELATING_PRODUCT_DEFINITION
      let value = ePRODUCT_DEFINITION(/*sPRODUCT_DEFINITION_OR_REFERENCE*/_TEMP3)
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePRODUCT_DEFINITION_RELATIONSHIP)
    /// - attribute value provider protocol conformance wrapper
    internal func _related_product_definition__getter(complex: SDAI.ComplexEntity) -> 
      sPRODUCT_DEFINITION_OR_REFERENCE {
      let SELF = complex.entityReference( eMULTI_LEVEL_REFERENCE_DESIGNATOR.self )!
      return SDAI.UNWRAP( sPRODUCT_DEFINITION_OR_REFERENCE(SELF.RELATED_PRODUCT_DEFINITION) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePRODUCT_DEFINITION_RELATIONSHIP)
    /// - gut of derived attribute logic
    internal func _related_product_definition__getter(SELF: eMULTI_LEVEL_REFERENCE_DESIGNATOR) -> 
      sPRODUCT_DEFINITION_OR_REFERENCE {

      let _TEMP1 = SDAI.HIINDEX(SELF.LOCATION)
      let _TEMP2 = SELF.LOCATION[_TEMP1]
      let _TEMP3 = _TEMP2?.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP4 = _TEMP3?.RELATED_PRODUCT_DEFINITION
      let value = _TEMP4
      return SDAI.UNWRAP( value )
    }

    /// DERIVE ATTRIBUTE
    internal func _leaf__getter(SELF: eMULTI_LEVEL_REFERENCE_DESIGNATOR) -> sPRODUCT_DEFINITION_OR_REFERENCE?  {
      return SELF.RELATED_PRODUCT_DEFINITION
    }

    /// DERIVE ATTRIBUTE
    internal func _root__getter(SELF: eMULTI_LEVEL_REFERENCE_DESIGNATOR) -> ePRODUCT_DEFINITION?  {
      return SELF.RELATING_PRODUCT_DEFINITION
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEQUIVALENCE_DETECTED_DIFFERENCE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sMULTI_OR_NEXT_ASSEMBLY_USAGE_OCCURRENCE.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._location.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._location.value.isValueEqualOptionally(to: rhs._location.value, visited: &comppairs)	{
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
      if let comp = self._location.value.isValueEqualOptionally(to: rhs._location.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eMULTI_LEVEL_REFERENCE_DESIGNATOR?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = UNAMBIGUOUSLY_SPECIFIED_MULTI_LEVEL_REFERENCE_DESIGNATOR(
        SDAI.LIST<eNEXT_ASSEMBLY_USAGE_OCCURRENCE>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
        SDAI.INTEGER?), /*SDAI.LIST_UNIQUE<eNEXT_ASSEMBLY_USAGE_OCCURRENCE>[1:nil] */SELF.LOCATION))
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }
    public static func WHERE_wr2(SELF: eMULTI_LEVEL_REFERENCE_DESIGNATOR?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.LOCATION.QUERY{ CP in 

          let _TEMP1 = CP.GROUP_REF(eASSEMBLY_COMPONENT_USAGE.self)
          let _TEMP2 = _TEMP1?.REFERENCE_DESIGNATOR
          let _TEMP3 = SDAI.EXISTS(_TEMP2)
          let _TEMP4 =  !_TEMP3
          return _TEMP4 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eMULTI_LEVEL_REFERENCE_DESIGNATOR else { return nil }
      //SIMPLE UNIQUE RULE

      let attr = SELF.LOCATION
      return AnyHashable( attr )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(LOCATION: SDAI.LIST_UNIQUE<eNEXT_ASSEMBLY_USAGE_OCCURRENCE>/*[1:nil]*/ ) {
      self._location = LOCATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST_UNIQUE<
        eNEXT_ASSEMBLY_USAGE_OCCURRENCE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( LOCATION: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY multi_level_reference_designator
    SUBTYPE OF ( assembly_component_usage );
      location  : LIST [1 : ?] OF UNIQUE next_assembly_usage_occurrence;
    DERIVE
      SELF\product_definition_relationship.relating_product_definition : product_definition := location[1]\
                                          product_definition_relationship.relating_product_definition;
      SELF\product_definition_relationship.related_product_definition : product_definition_or_reference := 
                                          location[HIINDEX( location )]\product_definition_relationship.
                                          related_product_definition;
      leaf                            : product_definition_or_reference := related_product_definition;
      root                            : product_definition := relating_product_definition;
    UNIQUE
      ur1 : location;
    WHERE
      wr1: unambiguously_specified_multi_level_reference_designator( location );
      wr2: ( SIZEOF( QUERY ( cp <* location | ( NOT EXISTS( cp\assembly_component_usage.reference_designator ) ) ) ) 
               = 0 );
  END_ENTITY; -- multi_level_reference_designator (line:21683 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMULTI_LEVEL_REFERENCE_DESIGNATOR : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _multi_level_reference_designator.self
    }
    public let partialEntity: _multi_level_reference_designator

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_RELATIONSHIP: ePRODUCT_DEFINITION_RELATIONSHIP 	// [1]
    public let super_ePRODUCT_DEFINITION_USAGE: ePRODUCT_DEFINITION_USAGE 	// [2]
    public let super_eASSEMBLY_COMPONENT_USAGE: eASSEMBLY_COMPONENT_USAGE 	// [3]
    public var super_eMULTI_LEVEL_REFERENCE_DESIGNATOR: eMULTI_LEVEL_REFERENCE_DESIGNATOR { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var LEAF: sPRODUCT_DEFINITION_OR_REFERENCE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"LEAF") {
          return cached.value as! sPRODUCT_DEFINITION_OR_REFERENCE? 
        }
        let origin = self
        let value = origin.partialEntity._leaf__getter(SELF: origin)
        updateCache(derivedAttributeName:"LEAF", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eASSEMBLY_COMPONENT_USAGE`` )
    public var REFERENCE_DESIGNATOR: tIDENTIFIER?  {
      get {
        return super_eASSEMBLY_COMPONENT_USAGE.partialEntity._reference_designator
      }
      set(newValue) {
        let partial = super_eASSEMBLY_COMPONENT_USAGE.partialEntity
        partial._reference_designator = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var ROOT: ePRODUCT_DEFINITION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROOT") {
          return cached.value as! ePRODUCT_DEFINITION? 
        }
        let origin = self
        let value = origin.partialEntity._root__getter(SELF: origin)
        updateCache(derivedAttributeName:"ROOT", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var RELATING_PRODUCT_DEFINITION: ePRODUCT_DEFINITION {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATING_PRODUCT_DEFINITION") {
          return cached.value as! ePRODUCT_DEFINITION
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._relating_product_definition__getter(SELF: origin) )
        updateCache(derivedAttributeName:"RELATING_PRODUCT_DEFINITION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var LOCATION: SDAI.LIST_UNIQUE<eNEXT_ASSEMBLY_USAGE_OCCURRENCE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._location )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._location = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eMULTI_LEVEL_REFERENCE_DESIGNATOR`` )
    public var RELATED_PRODUCT_DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE {
      get {
        if let cached = cachedValue(derivedAttributeName:"RELATED_PRODUCT_DEFINITION") {
          return cached.value as! sPRODUCT_DEFINITION_OR_REFERENCE
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._related_product_definition__getter(SELF: origin) )
        updateCache(derivedAttributeName:"RELATED_PRODUCT_DEFINITION", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_multi_level_reference_designator.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_RELATIONSHIP.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_RELATIONSHIP = super1

      guard let super2 = complexEntity?.entityReference(ePRODUCT_DEFINITION_USAGE.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_USAGE = super2

      guard let super3 = complexEntity?.entityReference(eASSEMBLY_COMPONENT_USAGE.self) else { return nil }
      self.super_eASSEMBLY_COMPONENT_USAGE = super3

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
      result[prefix2 + " .WHERE_wr1"] = _multi_level_reference_designator.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _multi_level_reference_designator.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MULTI_LEVEL_REFERENCE_DESIGNATOR", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_USAGE.self)
      entityDef.add(supertype: eASSEMBLY_COMPONENT_USAGE.self)
      entityDef.add(supertype: eMULTI_LEVEL_REFERENCE_DESIGNATOR.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LEAF", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.LEAF, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_DESIGNATOR", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.REFERENCE_DESIGNATOR, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ROOT", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.ROOT, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.RELATING_PRODUCT_DEFINITION, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOCATION", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.LOCATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.RELATED_PRODUCT_DEFINITION, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eMULTI_LEVEL_REFERENCE_DESIGNATOR.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _multi_level_reference_designator.UNIQUE_ur1)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._multi_level_reference_designator :
  ePRODUCT_DEFINITION_RELATIONSHIP__RELATING_PRODUCT_DEFINITION__provider, 
  ePRODUCT_DEFINITION_RELATIONSHIP__RELATED_PRODUCT_DEFINITION__provider {}
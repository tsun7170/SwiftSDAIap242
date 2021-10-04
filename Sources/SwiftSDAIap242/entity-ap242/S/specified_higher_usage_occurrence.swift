/* file: specified_higher_usage_occurrence.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY specified_higher_usage_occurrence
    SUBTYPE OF ( assembly_component_usage );
      upper_usage  : assembly_component_usage;
      next_usage   : next_assembly_usage_occurrence;
    UNIQUE
      ur1 : upper_usage, next_usage;
    WHERE
      wr1: ( SELF :<>: upper_usage );
      wr2: ( SELF\product_definition_relationship.relating_product_definition :=: upper_usage.
               relating_product_definition );
      wr3: ( SELF\product_definition_relationship.related_product_definition :=: next_usage.
               related_product_definition );
      wr4: ( ( upper_usage.related_product_definition :=: next_usage.relating_product_definition ) OR ( 
               SIZEOF( QUERY ( pdr <* USEDIN( upper_usage.related_product_definition, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_RELATIONSHIP.'
               + 'RELATED_PRODUCT_DEFINITION'  ) | ( pdr.relating_product_definition :=: next_usage.
               relating_product_definition ) ) ) = 1 ) );
      wr5: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NEXT_ASSEMBLY_USAGE_OCCURRENCE', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SPECIFIED_HIGHER_USAGE_OCCURRENCE' ] * 
               TYPEOF( upper_usage ) ) = 1 );
  END_ENTITY; -- specified_higher_usage_occurrence (line:30256 file:ap242ed2_mim_lf_v1.101.TY.exp)

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
          ENTITY: multi_level_reference_designator,	TYPE: product_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component

    ATTR:  related_product_definition,	TYPE: product_definition_or_reference -- EXPLICIT (DYNAMIC)
      -- observed by
        ENTITY(1): product_definition_occurrence,	ATTR: assembly_usages,	TYPE: SET [0 : ?] OF
          assembly_component_usage
      -- possibly overriden by
          ENTITY: linear_array_component_definition_link,	TYPE: linear_array_placement_group_component
          ENTITY: multi_level_reference_designator,	TYPE: product_definition_or_reference	(as DERIVED)
          ENTITY: component_definition,	TYPE: component_definition	(as DERIVED)
          ENTITY: assembly_group_component_definition_placement_link,	TYPE: assembly_component


  SUPER- ENTITY(2)	product_definition_usage
    (no local attributes)

  SUPER- ENTITY(3)	assembly_component_usage
    ATTR:  reference_designator,	TYPE: OPTIONAL identifier -- EXPLICIT


  ENTITY(SELF)	specified_higher_usage_occurrence
    ATTR:  upper_usage,	TYPE: assembly_component_usage -- EXPLICIT

    ATTR:  next_usage,	TYPE: next_assembly_usage_occurrence -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _specified_higher_usage_occurrence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSPECIFIED_HIGHER_USAGE_OCCURRENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _upper_usage: eASSEMBLY_COMPONENT_USAGE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _next_usage: eNEXT_ASSEMBLY_USAGE_OCCURRENCE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._upper_usage.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._next_usage.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._upper_usage.value.isValueEqualOptionally(to: rhs._upper_usage.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._next_usage.value.isValueEqualOptionally(to: rhs._next_usage.value, visited: &comppairs)	{
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
      if let comp = self._upper_usage.value.isValueEqualOptionally(to: rhs._upper_usage.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._next_usage.value.isValueEqualOptionally(to: rhs._next_usage.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSPECIFIED_HIGHER_USAGE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF) .!==. SDAI.FORCE_OPTIONAL(SELF.UPPER_USAGE)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eSPECIFIED_HIGHER_USAGE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATING_PRODUCT_DEFINITION
      let _TEMP3 = SELF.UPPER_USAGE.RELATING_PRODUCT_DEFINITION
      let _TEMP4 = _TEMP2 .===. SDAI.FORCE_OPTIONAL(_TEMP3)
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eSPECIFIED_HIGHER_USAGE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePRODUCT_DEFINITION_RELATIONSHIP.self)
      let _TEMP2 = _TEMP1?.RELATED_PRODUCT_DEFINITION
      let _TEMP3 = SELF.NEXT_USAGE.RELATED_PRODUCT_DEFINITION
      let _TEMP4 = _TEMP2 .===. SDAI.FORCE_OPTIONAL(_TEMP3)
      return _TEMP4
    }
    public static func WHERE_wr4(SELF: eSPECIFIED_HIGHER_USAGE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.UPPER_USAGE.RELATED_PRODUCT_DEFINITION
      let _TEMP2 = SELF.NEXT_USAGE.RELATING_PRODUCT_DEFINITION
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) .===. SDAI.FORCE_OPTIONAL(_TEMP2)
      let _TEMP4 = SELF.UPPER_USAGE.RELATED_PRODUCT_DEFINITION
      let _TEMP5 = SDAI.USEDIN(T: _TEMP4, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePRODUCT_DEFINITION_RELATIONSHIP.RELATED_PRODUCT_DEFINITION)
      let _TEMP6 = _TEMP5?.QUERY{ PDR in 

          let _TEMP1 = /*runtime*/PDR.RELATING_PRODUCT_DEFINITION
          let _TEMP2 = SELF.NEXT_USAGE.RELATING_PRODUCT_DEFINITION
          let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .===. SDAI.FORCE_OPTIONAL(_TEMP2)
          return _TEMP3 }
      let _TEMP7 = SDAI.SIZEOF(_TEMP6)
      let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP9 = _TEMP3 || _TEMP8
      return _TEMP9
    }
    public static func WHERE_wr5(SELF: eSPECIFIED_HIGHER_USAGE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NEXT_ASSEMBLY_USAGE_OCCURRENCE")), 
        SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SPECIFIED_HIGHER_USAGE_OCCURRENCE"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SDAI.TYPEOF(SELF.UPPER_USAGE)
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP5
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eSPECIFIED_HIGHER_USAGE_OCCURRENCE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      let attr1 = SELF.UPPER_USAGE
      attributes.append( AnyHashable(attr1) )
      let attr2 = SELF.NEXT_USAGE
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(UPPER_USAGE: eASSEMBLY_COMPONENT_USAGE, NEXT_USAGE: eNEXT_ASSEMBLY_USAGE_OCCURRENCE) {
      self._upper_usage = UPPER_USAGE
      self._next_usage = NEXT_USAGE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eASSEMBLY_COMPONENT_USAGE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        eNEXT_ASSEMBLY_USAGE_OCCURRENCE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( UPPER_USAGE: p0, NEXT_USAGE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY specified_higher_usage_occurrence
    SUBTYPE OF ( assembly_component_usage );
      upper_usage  : assembly_component_usage;
      next_usage   : next_assembly_usage_occurrence;
    UNIQUE
      ur1 : upper_usage, next_usage;
    WHERE
      wr1: ( SELF :<>: upper_usage );
      wr2: ( SELF\product_definition_relationship.relating_product_definition :=: upper_usage.
               relating_product_definition );
      wr3: ( SELF\product_definition_relationship.related_product_definition :=: next_usage.
               related_product_definition );
      wr4: ( ( upper_usage.related_product_definition :=: next_usage.relating_product_definition ) OR ( 
               SIZEOF( QUERY ( pdr <* USEDIN( upper_usage.related_product_definition, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_RELATIONSHIP.'
               + 'RELATED_PRODUCT_DEFINITION'  ) | ( pdr.relating_product_definition :=: next_usage.
               relating_product_definition ) ) ) = 1 ) );
      wr5: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.NEXT_ASSEMBLY_USAGE_OCCURRENCE', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SPECIFIED_HIGHER_USAGE_OCCURRENCE' ] * 
               TYPEOF( upper_usage ) ) = 1 );
  END_ENTITY; -- specified_higher_usage_occurrence (line:30256 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSPECIFIED_HIGHER_USAGE_OCCURRENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _specified_higher_usage_occurrence.self
    }
    public let partialEntity: _specified_higher_usage_occurrence

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_RELATIONSHIP: ePRODUCT_DEFINITION_RELATIONSHIP 	// [1]
    public let super_ePRODUCT_DEFINITION_USAGE: ePRODUCT_DEFINITION_USAGE 	// [2]
    public let super_eASSEMBLY_COMPONENT_USAGE: eASSEMBLY_COMPONENT_USAGE 	// [3]
    public var super_eSPECIFIED_HIGHER_USAGE_OCCURRENCE: eSPECIFIED_HIGHER_USAGE_OCCURRENCE { return self } 	// [4]

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

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSPECIFIED_HIGHER_USAGE_OCCURRENCE`` )
    public var NEXT_USAGE: eNEXT_ASSEMBLY_USAGE_OCCURRENCE {
      get {
        return SDAI.UNWRAP( self.partialEntity._next_usage )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._next_usage = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSPECIFIED_HIGHER_USAGE_OCCURRENCE`` )
    public var UPPER_USAGE: eASSEMBLY_COMPONENT_USAGE {
      get {
        return SDAI.UNWRAP( self.partialEntity._upper_usage )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._upper_usage = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var RELATING_PRODUCT_DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE {
      get {
        if let resolved = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) {
          let value = resolved._relating_product_definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
            ._relating_product_definition )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._relating_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._relating_product_definition = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT(DYNAMIC)(OBSERVED)__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_RELATIONSHIP`` )
    public var RELATED_PRODUCT_DEFINITION: sPRODUCT_DEFINITION_OR_REFERENCE {
      get {
        if let resolved = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) {
          let value = resolved._related_product_definition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
            ._related_product_definition )
        }
      }
      set(newValue) {
        if let _ = _product_definition_relationship._related_product_definition__provider(complex: self.complexEntity) { return }

        let partial = super_ePRODUCT_DEFINITION_RELATIONSHIP.partialEntity
        partial._related_product_definition = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_specified_higher_usage_occurrence.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _specified_higher_usage_occurrence.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _specified_higher_usage_occurrence.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _specified_higher_usage_occurrence.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _specified_higher_usage_occurrence.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _specified_higher_usage_occurrence.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SPECIFIED_HIGHER_USAGE_OCCURRENCE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_RELATIONSHIP.self)
      entityDef.add(supertype: ePRODUCT_DEFINITION_USAGE.self)
      entityDef.add(supertype: eASSEMBLY_COMPONENT_USAGE.self)
      entityDef.add(supertype: eSPECIFIED_HIGHER_USAGE_OCCURRENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NEXT_USAGE", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.NEXT_USAGE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REFERENCE_DESIGNATOR", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.REFERENCE_DESIGNATOR, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UPPER_USAGE", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.UPPER_USAGE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_PRODUCT_DEFINITION", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.RELATING_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_PRODUCT_DEFINITION", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.RELATED_PRODUCT_DEFINITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSPECIFIED_HIGHER_USAGE_OCCURRENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _specified_higher_usage_occurrence.UNIQUE_ur1)

      return entityDef
    }

  }
}
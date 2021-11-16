/* file: generic_property_relationship.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY generic_property_relationship;
      name           : label;
      description    : text;
      relating       : generic_property_definition_select;
      related        : generic_property_definition_select;
      relation_type  : STRING;
    WHERE
      wr1: acyclic_generic_property_relationship( SELF, [related], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GENERIC_PROPERTY_RELATIONSHIP'  );
  END_ENTITY; -- generic_property_relationship (line:16808 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	generic_property_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: text -- EXPLICIT

    ATTR:  relating,	TYPE: generic_property_definition_select -- EXPLICIT

    ATTR:  related,	TYPE: generic_property_definition_select -- EXPLICIT

    ATTR:  relation_type,	TYPE: STRING -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _generic_property_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGENERIC_PROPERTY_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating: sGENERIC_PROPERTY_DEFINITION_SELECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related: sGENERIC_PROPERTY_DEFINITION_SELECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relation_type: SDAI.STRING // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relating.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relation_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._relating.value.isValueEqualOptionally(to: rhs._relating.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._related.value.isValueEqualOptionally(to: rhs._related.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._relation_type.value.isValueEqualOptionally(to: rhs._relation_type.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._relating.value.isValueEqualOptionally(to: rhs._relating.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._related.value.isValueEqualOptionally(to: rhs._related.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._relation_type.value.isValueEqualOptionally(to: rhs._relation_type.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eGENERIC_PROPERTY_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SET<sGENERIC_PROPERTY_DEFINITION_SELECT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), 
        bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(SELF.RELATED)] as [SDAI.AggregationInitializerElement<sGENERIC_PROPERTY_DEFINITION_SELECT>]))
      let _TEMP2 = ACYCLIC_GENERIC_PROPERTY_RELATIONSHIP(
        RELATION: SELF, RELATIVES: _TEMP1, 
        SPECIFIC_RELATION: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GENERIC_PROPERTY_RELATIONSHIP"))
      return _TEMP2
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT, RELATING: sGENERIC_PROPERTY_DEFINITION_SELECT, 
                RELATED: sGENERIC_PROPERTY_DEFINITION_SELECT, RELATION_TYPE: SDAI.STRING) {
      self._name = NAME
      self._description = DESCRIPTION
      self._relating = RELATING
      self._related = RELATED
      self._relation_type = RELATION_TYPE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 5
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: 
        sGENERIC_PROPERTY_DEFINITION_SELECT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        sGENERIC_PROPERTY_DEFINITION_SELECT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: SDAI.STRING.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, RELATING: p2, RELATED: p3, RELATION_TYPE: p4 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY generic_property_relationship;
      name           : label;
      description    : text;
      relating       : generic_property_definition_select;
      related        : generic_property_definition_select;
      relation_type  : STRING;
    WHERE
      wr1: acyclic_generic_property_relationship( SELF, [related], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GENERIC_PROPERTY_RELATIONSHIP'  );
  END_ENTITY; -- generic_property_relationship (line:16808 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGENERIC_PROPERTY_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _generic_property_relationship.self
    }
    public let partialEntity: _generic_property_relationship

    //MARK: SUPERTYPES
    public var super_eGENERIC_PROPERTY_RELATIONSHIP: eGENERIC_PROPERTY_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERIC_PROPERTY_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._description )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERIC_PROPERTY_RELATIONSHIP`` )
    public var RELATING: sGENERIC_PROPERTY_DEFINITION_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERIC_PROPERTY_RELATIONSHIP`` )
    public var RELATION_TYPE: SDAI.STRING {
      get {
        return SDAI.UNWRAP( self.partialEntity._relation_type )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relation_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERIC_PROPERTY_RELATIONSHIP`` )
    public var RELATED: sGENERIC_PROPERTY_DEFINITION_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._related )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERIC_PROPERTY_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_generic_property_relationship.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_generic_property_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _generic_property_relationship.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GENERIC_PROPERTY_RELATIONSHIP", type: self, explicitAttributeCount: 5)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_PROPERTY_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGENERIC_PROPERTY_RELATIONSHIP.DESCRIPTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING", keyPath: \eGENERIC_PROPERTY_RELATIONSHIP.RELATING, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATION_TYPE", keyPath: \eGENERIC_PROPERTY_RELATIONSHIP.RELATION_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED", keyPath: \eGENERIC_PROPERTY_RELATIONSHIP.RELATED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eGENERIC_PROPERTY_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

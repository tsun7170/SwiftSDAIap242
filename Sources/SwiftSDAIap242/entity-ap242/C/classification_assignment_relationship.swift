/* file: classification_assignment_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY classification_assignment_relationship;
      id             : OPTIONAL identifier;
      description    : OPTIONAL text;
      relating       : classification_assignment;
      related        : classification_assignment;
      relation_type  : STRING;
    WHERE
      wr1: acyclic_classification_assignment_relationship( SELF, [related], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLASSIFICATION_ASSIGNMENT_RELATIONSHIP'  );
  END_ENTITY; -- classification_assignment_relationship (line:9540 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	classification_assignment_relationship
    ATTR:  id,	TYPE: OPTIONAL identifier -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating,	TYPE: classification_assignment -- EXPLICIT
      -- possibly overriden by
          ENTITY: applied_classification_assignment_relationship,	TYPE: applied_classification_assignment

    ATTR:  related,	TYPE: classification_assignment -- EXPLICIT
      -- possibly overriden by
          ENTITY: applied_classification_assignment_relationship,	TYPE: applied_classification_assignment

    ATTR:  relation_type,	TYPE: STRING -- EXPLICIT


  SUB- ENTITY(2)	applied_classification_assignment_relationship
    REDCR: related,	TYPE: applied_classification_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: classification_assignment_relationship

    REDCR: relating,	TYPE: applied_classification_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: classification_assignment_relationship


*/


//MARK: - Partial Entity
  public final class _classification_assignment_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _id: tIDENTIFIER?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating: eCLASSIFICATION_ASSIGNMENT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related: eCLASSIFICATION_ASSIGNMENT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relation_type: SDAI.STRING // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._id?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relating.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._relation_type.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._id?.value.isValueEqualOptionally(to: rhs._id?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
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
      if let comp = self._id?.value.isValueEqualOptionally(to: rhs._id?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
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
    public static func WHERE_wr1(SELF: eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SET<eCLASSIFICATION_ASSIGNMENT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
        SDAI.INTEGER?), ([SDAI.AIE(SELF.RELATED)] as [SDAI.AggregationInitializerElement<
        eCLASSIFICATION_ASSIGNMENT>]))
      let _TEMP2 = ACYCLIC_CLASSIFICATION_ASSIGNMENT_RELATIONSHIP(
        RELATION: SELF, RELATIVES: _TEMP1, 
        SPECIFIC_RELATION: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLASSIFICATION_ASSIGNMENT_RELATIONSHIP"))
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP2)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ID: tIDENTIFIER? , DESCRIPTION: tTEXT? , RELATING: eCLASSIFICATION_ASSIGNMENT, 
                RELATED: eCLASSIFICATION_ASSIGNMENT, RELATION_TYPE: SDAI.STRING) {
      self._id = ID
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

      guard case .success(let p0) = exchangeStructure.recoverOptionalParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eCLASSIFICATION_ASSIGNMENT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eCLASSIFICATION_ASSIGNMENT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: SDAI.STRING.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ID: p0, DESCRIPTION: p1, RELATING: p2, RELATED: p3, RELATION_TYPE: p4 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY classification_assignment_relationship;
      id             : OPTIONAL identifier;
      description    : OPTIONAL text;
      relating       : classification_assignment;
      related        : classification_assignment;
      relation_type  : STRING;
    WHERE
      wr1: acyclic_classification_assignment_relationship( SELF, [related], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CLASSIFICATION_ASSIGNMENT_RELATIONSHIP'  );
  END_ENTITY; -- classification_assignment_relationship (line:9540 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _classification_assignment_relationship.self
    }
    public let partialEntity: _classification_assignment_relationship

    //MARK: SUPERTYPES
    public var super_eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP: eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eAPPLIED_CLASSIFICATION_ASSIGNMENT_RELATIONSHIP: eAPPLIED_CLASSIFICATION_ASSIGNMENT_RELATIONSHIP? {	// [2]
      return self.complexEntity.entityReference(eAPPLIED_CLASSIFICATION_ASSIGNMENT_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATING: eCLASSIFICATION_ASSIGNMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP`` )
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
    /// - origin: SELF( ``eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATED: eCLASSIFICATION_ASSIGNMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._related )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP`` )
    public var ID: tIDENTIFIER?  {
      get {
        return self.partialEntity._id
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._id = newValue
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_classification_assignment_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_classification_assignment_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _classification_assignment_relationship.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CLASSIFICATION_ASSIGNMENT_RELATIONSHIP", type: self, explicitAttributeCount: 5)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING", keyPath: \eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP.RELATING, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATION_TYPE", keyPath: \eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP.RELATION_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED", keyPath: \eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP.RELATED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCLASSIFICATION_ASSIGNMENT_RELATIONSHIP.ID, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
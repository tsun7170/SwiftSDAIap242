/* file: description_text_assignment_relationship.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY description_text_assignment_relationship;
      id             : OPTIONAL identifier;
      description    : OPTIONAL text;
      relating       : description_text_assignment;
      related        : description_text_assignment;
      relation_type  : STRING;
    WHERE
      wr1: acyclic_description_text_assignment_relationship( SELF, [related], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP'  );
  END_ENTITY; -- description_text_assignment_relationship (line:11972 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	description_text_assignment_relationship
    ATTR:  id,	TYPE: OPTIONAL identifier -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating,	TYPE: description_text_assignment -- EXPLICIT
      -- possibly overriden by
          ENTITY: applied_description_text_assignment_relationship,	TYPE: applied_description_text_assignment

    ATTR:  related,	TYPE: description_text_assignment -- EXPLICIT
      -- possibly overriden by
          ENTITY: applied_description_text_assignment_relationship,	TYPE: applied_description_text_assignment

    ATTR:  relation_type,	TYPE: STRING -- EXPLICIT


  SUB- ENTITY(2)	applied_description_text_assignment_relationship
    REDCR: related,	TYPE: applied_description_text_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: description_text_assignment_relationship

    REDCR: relating,	TYPE: applied_description_text_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: description_text_assignment_relationship


*/


//MARK: - Partial Entity
  public final class _description_text_assignment_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _id: tIDENTIFIER?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _relating: eDESCRIPTION_TEXT_ASSIGNMENT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related: eDESCRIPTION_TEXT_ASSIGNMENT // PLAIN EXPLICIT ATTRIBUTE

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
    public static func WHERE_wr1(SELF: eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SET<eDESCRIPTION_TEXT_ASSIGNMENT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as 
        SDAI.INTEGER?), ([SDAI.AIE(SELF.RELATED)] as [SDAI.AggregationInitializerElement<
        eDESCRIPTION_TEXT_ASSIGNMENT>]))
      let _TEMP2 = ACYCLIC_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP(
        RELATION: SELF, RELATIVES: _TEMP1, 
        SPECIFIC_RELATION: SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP"))
      return SDAI.LOGICAL(_TEMP2)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ID: tIDENTIFIER? , DESCRIPTION: tTEXT? , RELATING: eDESCRIPTION_TEXT_ASSIGNMENT, 
                RELATED: eDESCRIPTION_TEXT_ASSIGNMENT, RELATION_TYPE: SDAI.STRING) {
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

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: 
        eDESCRIPTION_TEXT_ASSIGNMENT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        eDESCRIPTION_TEXT_ASSIGNMENT.self, from: parameters[3])
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
  ENTITY description_text_assignment_relationship;
      id             : OPTIONAL identifier;
      description    : OPTIONAL text;
      relating       : description_text_assignment;
      related        : description_text_assignment;
      relation_type  : STRING;
    WHERE
      wr1: acyclic_description_text_assignment_relationship( SELF, [related], 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP'  );
  END_ENTITY; -- description_text_assignment_relationship (line:11972 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _description_text_assignment_relationship.self
    }
    public let partialEntity: _description_text_assignment_relationship

    //MARK: SUPERTYPES
    public var super_eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP: eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP? {	// [2]
      return self.complexEntity.entityReference(eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
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
    /// - origin: SELF( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATING: eDESCRIPTION_TEXT_ASSIGNMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
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
    /// - origin: SELF( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
    public var RELATED: eDESCRIPTION_TEXT_ASSIGNMENT {
      get {
        return SDAI.UNWRAP( self.partialEntity._related )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_description_text_assignment_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_description_text_assignment_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _description_text_assignment_relationship.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP", type: self, explicitAttributeCount: 5)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING", keyPath: \eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.RELATING, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATION_TYPE", keyPath: \eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.RELATION_TYPE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED", keyPath: \eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.RELATED, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eDESCRIPTION_TEXT_ASSIGNMENT_RELATIONSHIP.ID, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

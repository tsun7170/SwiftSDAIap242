/* file: date_and_time_assignment.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY date_and_time_assignment
    ABSTRACT SUPERTYPE;
      assigned_date_and_time  : date_and_time;
      role                    : date_time_role;
  END_ENTITY; -- date_and_time_assignment (line:11634 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	date_and_time_assignment
    ATTR:  assigned_date_and_time,	TYPE: date_and_time -- EXPLICIT

    ATTR:  role,	TYPE: date_time_role -- EXPLICIT


  SUB- ENTITY(2)	cc_design_date_and_time_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF date_time_item -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(3)	applied_date_and_time_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF date_and_time_item -- EXPLICIT	(AMBIGUOUS/MASKED)


*/


//MARK: - Partial Entity
  public final class _date_and_time_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATE_AND_TIME_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _assigned_date_and_time: eDATE_AND_TIME // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _role: eDATE_TIME_ROLE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVIDENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sAP242_ASSIGNMENT_OBJECT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sASSIGNMENT_OBJECT_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._assigned_date_and_time.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._role.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._assigned_date_and_time.value.isValueEqualOptionally(to: rhs._assigned_date_and_time.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._role.value.isValueEqualOptionally(to: rhs._role.value, visited: &comppairs)	{
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
      if let comp = self._assigned_date_and_time.value.isValueEqualOptionally(to: rhs._assigned_date_and_time.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._role.value.isValueEqualOptionally(to: rhs._role.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ASSIGNED_DATE_AND_TIME: eDATE_AND_TIME, ROLE: eDATE_TIME_ROLE) {
      self._assigned_date_and_time = ASSIGNED_DATE_AND_TIME
      self._role = ROLE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eDATE_AND_TIME.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eDATE_TIME_ROLE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ASSIGNED_DATE_AND_TIME: p0, ROLE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY date_and_time_assignment
    ABSTRACT SUPERTYPE;
      assigned_date_and_time  : date_and_time;
      role                    : date_time_role;
  END_ENTITY; -- date_and_time_assignment (line:11634 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATE_AND_TIME_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _date_and_time_assignment.self
    }
    public let partialEntity: _date_and_time_assignment

    //MARK: SUPERTYPES
    public var super_eDATE_AND_TIME_ASSIGNMENT: eDATE_AND_TIME_ASSIGNMENT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT: eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT? {	// [2]
      return self.complexEntity.entityReference(eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT.self)
    }

    public var sub_eAPPLIED_DATE_AND_TIME_ASSIGNMENT: eAPPLIED_DATE_AND_TIME_ASSIGNMENT? {	// [3]
      return self.complexEntity.entityReference(eAPPLIED_DATE_AND_TIME_ASSIGNMENT.self)
    }


    //MARK: ATTRIBUTES
    // ITEMS: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATE_AND_TIME_ASSIGNMENT`` )
    public var ROLE: eDATE_TIME_ROLE {
      get {
        return SDAI.UNWRAP( self.partialEntity._role )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._role = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATE_AND_TIME_ASSIGNMENT`` )
    public var ASSIGNED_DATE_AND_TIME: eDATE_AND_TIME {
      get {
        return SDAI.UNWRAP( self.partialEntity._assigned_date_and_time )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._assigned_date_and_time = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_date_and_time_assignment.self) else { return nil }
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
    public convenience init?(_ partial:_date_and_time_assignment) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATE_AND_TIME_ASSIGNMENT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATE_AND_TIME_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eDATE_AND_TIME_ASSIGNMENT.ROLE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_DATE_AND_TIME", keyPath: \eDATE_AND_TIME_ASSIGNMENT.ASSIGNED_DATE_AND_TIME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

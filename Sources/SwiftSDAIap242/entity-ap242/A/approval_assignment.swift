/* file: approval_assignment.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY approval_assignment
    ABSTRACT SUPERTYPE;
      assigned_approval  : approval;
    DERIVE
      role  : object_role := get_role( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROLE_ASSOCIATION.'
               + 'ITEM_WITH_ROLE'  ) ) <= 1 );
  END_ENTITY; -- approval_assignment (line:7344 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	approval_assignment
    ATTR:  assigned_approval,	TYPE: approval -- EXPLICIT

    ATTR:  role,	TYPE: object_role -- DERIVED
      := get_role( SELF )


  SUB- ENTITY(2)	frozen_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF change_management_object -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(3)	cc_design_approval
    ATTR:  items,	TYPE: SET [1 : ?] OF approved_item -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(4)	applied_approval_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF approval_item -- EXPLICIT	(AMBIGUOUS/MASKED)


*/


//MARK: - Partial Entity
  public final class _approval_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAPPROVAL_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _assigned_approval: eAPPROVAL // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _role__getter(SELF: eAPPROVAL_ASSIGNMENT) -> eOBJECT_ROLE?  {

      let _TEMP1 = GET_ROLE(sROLE_SELECT(/*eAPPROVAL_ASSIGNMENT*/SELF))
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sROLE_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._assigned_approval.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._assigned_approval.value.isValueEqualOptionally(to: rhs._assigned_approval.value, visited: &comppairs)	{
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
      if let comp = self._assigned_approval.value.isValueEqualOptionally(to: rhs._assigned_approval.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eAPPROVAL_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eROLE_ASSOCIATION.ITEM_WITH_ROLE)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ASSIGNED_APPROVAL: eAPPROVAL) {
      self._assigned_approval = ASSIGNED_APPROVAL
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eAPPROVAL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ASSIGNED_APPROVAL: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY approval_assignment
    ABSTRACT SUPERTYPE;
      assigned_approval  : approval;
    DERIVE
      role  : object_role := get_role( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROLE_ASSOCIATION.'
               + 'ITEM_WITH_ROLE'  ) ) <= 1 );
  END_ENTITY; -- approval_assignment (line:7344 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAPPROVAL_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _approval_assignment.self
    }
    public let partialEntity: _approval_assignment

    //MARK: SUPERTYPES
    public var super_eAPPROVAL_ASSIGNMENT: eAPPROVAL_ASSIGNMENT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eFROZEN_ASSIGNMENT: eFROZEN_ASSIGNMENT? {	// [2]
      return self.complexEntity.entityReference(eFROZEN_ASSIGNMENT.self)
    }

    public var sub_eCC_DESIGN_APPROVAL: eCC_DESIGN_APPROVAL? {	// [3]
      return self.complexEntity.entityReference(eCC_DESIGN_APPROVAL.self)
    }

    public var sub_eAPPLIED_APPROVAL_ASSIGNMENT: eAPPLIED_APPROVAL_ASSIGNMENT? {	// [4]
      return self.complexEntity.entityReference(eAPPLIED_APPROVAL_ASSIGNMENT.self)
    }


    //MARK: ATTRIBUTES
    // ITEMS: (3 AMBIGUOUS REFs)

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eAPPROVAL_ASSIGNMENT`` )
    public var ROLE: eOBJECT_ROLE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROLE") {
          return cached.value as! eOBJECT_ROLE? 
        }
        let origin = self
        let value = origin.partialEntity._role__getter(SELF: origin)
        updateCache(derivedAttributeName:"ROLE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPROVAL_ASSIGNMENT`` )
    public var ASSIGNED_APPROVAL: eAPPROVAL {
      get {
        return SDAI.UNWRAP( self.partialEntity._assigned_approval )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._assigned_approval = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_approval_assignment.self) else { return nil }
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
    public convenience init?(_ partial:_approval_assignment) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _approval_assignment.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "APPROVAL_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPROVAL_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eAPPROVAL_ASSIGNMENT.ROLE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_APPROVAL", keyPath: \eAPPROVAL_ASSIGNMENT.ASSIGNED_APPROVAL, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

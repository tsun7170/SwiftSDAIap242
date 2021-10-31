/* file: action_request_assignment.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY action_request_assignment
    ABSTRACT SUPERTYPE;
      assigned_action_request  : versioned_action_request;
    DERIVE
      role  : object_role := get_role( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROLE_ASSOCIATION.'
               + 'ITEM_WITH_ROLE'  ) ) <= 1 );
  END_ENTITY; -- action_request_assignment (line:6457 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	action_request_assignment
    ATTR:  assigned_action_request,	TYPE: versioned_action_request -- EXPLICIT

    ATTR:  role,	TYPE: object_role -- DERIVED
      := get_role( SELF )


  SUB- ENTITY(2)	change_request
    ATTR:  items,	TYPE: SET [1 : ?] OF change_request_item -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(3)	start_request
    ATTR:  items,	TYPE: SET [1 : ?] OF start_request_item -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(4)	applied_action_request_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF action_request_item -- EXPLICIT	(AMBIGUOUS/MASKED)


*/


//MARK: - Partial Entity
  public final class _action_request_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eACTION_REQUEST_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _assigned_action_request: eVERSIONED_ACTION_REQUEST // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _role__getter(SELF: eACTION_REQUEST_ASSIGNMENT) -> eOBJECT_ROLE?  {

      let _TEMP1 = GET_ROLE(sROLE_SELECT(/*eACTION_REQUEST_ASSIGNMENT*/SELF))
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
      self._assigned_action_request.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._assigned_action_request.value.isValueEqualOptionally(to: rhs._assigned_action_request.value, visited: &comppairs)	{
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
      if let comp = self._assigned_action_request.value.isValueEqualOptionally(to: rhs._assigned_action_request.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eACTION_REQUEST_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eROLE_ASSOCIATION.ITEM_WITH_ROLE)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ASSIGNED_ACTION_REQUEST: eVERSIONED_ACTION_REQUEST) {
      self._assigned_action_request = ASSIGNED_ACTION_REQUEST
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eVERSIONED_ACTION_REQUEST.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ASSIGNED_ACTION_REQUEST: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY action_request_assignment
    ABSTRACT SUPERTYPE;
      assigned_action_request  : versioned_action_request;
    DERIVE
      role  : object_role := get_role( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROLE_ASSOCIATION.'
               + 'ITEM_WITH_ROLE'  ) ) <= 1 );
  END_ENTITY; -- action_request_assignment (line:6457 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eACTION_REQUEST_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _action_request_assignment.self
    }
    public let partialEntity: _action_request_assignment

    //MARK: SUPERTYPES
    public var super_eACTION_REQUEST_ASSIGNMENT: eACTION_REQUEST_ASSIGNMENT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eCHANGE_REQUEST: eCHANGE_REQUEST? {	// [2]
      return self.complexEntity.entityReference(eCHANGE_REQUEST.self)
    }

    public var sub_eSTART_REQUEST: eSTART_REQUEST? {	// [3]
      return self.complexEntity.entityReference(eSTART_REQUEST.self)
    }

    public var sub_eAPPLIED_ACTION_REQUEST_ASSIGNMENT: eAPPLIED_ACTION_REQUEST_ASSIGNMENT? {	// [4]
      return self.complexEntity.entityReference(eAPPLIED_ACTION_REQUEST_ASSIGNMENT.self)
    }


    //MARK: ATTRIBUTES
    // ITEMS: (3 AMBIGUOUS REFs)

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eACTION_REQUEST_ASSIGNMENT`` )
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
    /// - origin: SELF( ``eACTION_REQUEST_ASSIGNMENT`` )
    public var ASSIGNED_ACTION_REQUEST: eVERSIONED_ACTION_REQUEST {
      get {
        return SDAI.UNWRAP( self.partialEntity._assigned_action_request )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._assigned_action_request = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_action_request_assignment.self) else { return nil }
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
    public convenience init?(_ partial:_action_request_assignment) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _action_request_assignment.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ACTION_REQUEST_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION_REQUEST_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eACTION_REQUEST_ASSIGNMENT.ROLE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_ACTION_REQUEST", keyPath: \eACTION_REQUEST_ASSIGNMENT.ASSIGNED_ACTION_REQUEST, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

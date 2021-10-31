/* file: class_usage_effectivity_context_assignment.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY class_usage_effectivity_context_assignment
    SUBTYPE OF ( effectivity_context_assignment );
      items  : SET [1 : ?] OF class_usage_effectivity_context_item;
    WHERE
      wr1: ( SELF.role.name = 'class usage influence' );
      wr2: ( SIZEOF( QUERY ( i <* SELF.items | ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRODUCT_DEFINITION'  IN TYPEOF( i ) ) ) ) ) = 0 );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.APPLIED_EFFECTIVITY_ASSIGNMENT' IN TYPEOF( 
               SELF.assigned_effectivity_assignment ) ) AND ( SIZEOF( TYPEOF( SELF.
               assigned_effectivity_assignment.assigned_effectivity ) ) = 1 ) AND ( SELF.
               assigned_effectivity_assignment.assigned_effectivity.id = 'class usage' ) AND ( SIZEOF( 
               QUERY ( i <* SELF.assigned_effectivity_assignment\applied_effectivity_assignment.items | ( 
               NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_CONCEPT_FEATURE_CATEGORY_USAGE' 
               IN TYPEOF( i ) ) ) ) ) = 0 ) );
  END_ENTITY; -- class_usage_effectivity_context_assignment (line:9514 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	effectivity_context_assignment
    ATTR:  assigned_effectivity_assignment,	TYPE: effectivity_assignment -- EXPLICIT
      -- possibly overriden by
          ENTITY: configured_effectivity_context_assignment,	TYPE: configured_effectivity_assignment

    ATTR:  role,	TYPE: effectivity_context_role -- EXPLICIT


  ENTITY(SELF)	class_usage_effectivity_context_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF class_usage_effectivity_context_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _class_usage_effectivity_context_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<sCLASS_USAGE_EFFECTIVITY_CONTEXT_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._items.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs)	{
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
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ROLE
      let _TEMP2 = _TEMP1.NAME
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("class usage influence"))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ITEMS
      let _TEMP2 = _TEMP1.QUERY{ I in 

          let _TEMP1 = SDAI.TYPEOF(I, IS: ePRODUCT_DEFINITION.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.ASSIGNED_EFFECTIVITY_ASSIGNMENT, IS: eAPPLIED_EFFECTIVITY_ASSIGNMENT.self)
      let _TEMP2 = SELF.ASSIGNED_EFFECTIVITY_ASSIGNMENT
      let _TEMP3 = _TEMP2.ASSIGNED_EFFECTIVITY
      let _TEMP4 = SDAI.TYPEOF(_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = _TEMP1 && _TEMP6
      let _TEMP8 = SELF.ASSIGNED_EFFECTIVITY_ASSIGNMENT
      let _TEMP9 = _TEMP8.ASSIGNED_EFFECTIVITY
      let _TEMP10 = _TEMP9.ID
      let _TEMP11 = SDAI.FORCE_OPTIONAL(_TEMP10) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("class usage"))
      let _TEMP12 = _TEMP7 && _TEMP11
      let _TEMP13 = SELF.ASSIGNED_EFFECTIVITY_ASSIGNMENT
      let _TEMP14 = _TEMP13.GROUP_REF(eAPPLIED_EFFECTIVITY_ASSIGNMENT.self)
      let _TEMP15 = _TEMP14?.ITEMS
      let _TEMP16 = _TEMP15?.QUERY{ I in 

          let _TEMP1 = SDAI.TYPEOF(I, IS: ePRODUCT_CONCEPT_FEATURE_CATEGORY_USAGE.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP17 = SDAI.SIZEOF(_TEMP16)
      let _TEMP18 = _TEMP17 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP19 = _TEMP12 && _TEMP18
      return _TEMP19
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEMS: SDAI.SET<sCLASS_USAGE_EFFECTIVITY_CONTEXT_ITEM>/*[1:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sCLASS_USAGE_EFFECTIVITY_CONTEXT_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY class_usage_effectivity_context_assignment
    SUBTYPE OF ( effectivity_context_assignment );
      items  : SET [1 : ?] OF class_usage_effectivity_context_item;
    WHERE
      wr1: ( SELF.role.name = 'class usage influence' );
      wr2: ( SIZEOF( QUERY ( i <* SELF.items | ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRODUCT_DEFINITION'  IN TYPEOF( i ) ) ) ) ) = 0 );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.APPLIED_EFFECTIVITY_ASSIGNMENT' IN TYPEOF( 
               SELF.assigned_effectivity_assignment ) ) AND ( SIZEOF( TYPEOF( SELF.
               assigned_effectivity_assignment.assigned_effectivity ) ) = 1 ) AND ( SELF.
               assigned_effectivity_assignment.assigned_effectivity.id = 'class usage' ) AND ( SIZEOF( 
               QUERY ( i <* SELF.assigned_effectivity_assignment\applied_effectivity_assignment.items | ( 
               NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_CONCEPT_FEATURE_CATEGORY_USAGE' 
               IN TYPEOF( i ) ) ) ) ) = 0 ) );
  END_ENTITY; -- class_usage_effectivity_context_assignment (line:9514 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _class_usage_effectivity_context_assignment.self
    }
    public let partialEntity: _class_usage_effectivity_context_assignment

    //MARK: SUPERTYPES
    public let super_eEFFECTIVITY_CONTEXT_ASSIGNMENT: eEFFECTIVITY_CONTEXT_ASSIGNMENT 	// [1]
    public var super_eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT: eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEFFECTIVITY_CONTEXT_ASSIGNMENT`` )
    public var ROLE: eEFFECTIVITY_CONTEXT_ROLE {
      get {
        return SDAI.UNWRAP( super_eEFFECTIVITY_CONTEXT_ASSIGNMENT.partialEntity._role )
      }
      set(newValue) {
        let partial = super_eEFFECTIVITY_CONTEXT_ASSIGNMENT.partialEntity
        partial._role = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEFFECTIVITY_CONTEXT_ASSIGNMENT`` )
    public var ASSIGNED_EFFECTIVITY_ASSIGNMENT: eEFFECTIVITY_ASSIGNMENT {
      get {
        return SDAI.UNWRAP( super_eEFFECTIVITY_CONTEXT_ASSIGNMENT.partialEntity
          ._assigned_effectivity_assignment )
      }
      set(newValue) {
        let partial = super_eEFFECTIVITY_CONTEXT_ASSIGNMENT.partialEntity
        partial._assigned_effectivity_assignment = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT`` )
    public var ITEMS: SDAI.SET<sCLASS_USAGE_EFFECTIVITY_CONTEXT_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_class_usage_effectivity_context_assignment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eEFFECTIVITY_CONTEXT_ASSIGNMENT.self) else { return nil }
      self.super_eEFFECTIVITY_CONTEXT_ASSIGNMENT = super1

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
      result[prefix2 + " .WHERE_wr1"] = _class_usage_effectivity_context_assignment.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _class_usage_effectivity_context_assignment.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _class_usage_effectivity_context_assignment.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eEFFECTIVITY_CONTEXT_ASSIGNMENT.self)
      entityDef.add(supertype: eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT.ROLE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_EFFECTIVITY_ASSIGNMENT", keyPath: \eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT.ASSIGNED_EFFECTIVITY_ASSIGNMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eCLASS_USAGE_EFFECTIVITY_CONTEXT_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

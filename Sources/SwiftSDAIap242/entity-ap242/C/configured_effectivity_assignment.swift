/* file: configured_effectivity_assignment.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY configured_effectivity_assignment
    SUBTYPE OF ( effectivity_assignment );
      items  : SET [1 : ?] OF configured_effectivity_item;
    WHERE
      wr1: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EFFECTIVITY'] * TYPEOF( SELF.
               assigned_effectivity ) ) = 1 ) AND ( SELF.assigned_effectivity.id = 'configuration validity' ) );
      wr2: ( SIZEOF( SELF.items ) = 1 );
      wr3: ( SIZEOF( QUERY ( i <* SELF.items | ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRODUCT_DEFINITION'  IN TYPEOF( i ) ) ) OR ( NOT ( i\product_definition.frame_of_reference.
               name IN [ 'conceptual definition', 'part occurrence', 'functional definition', 
               'alternative definition' ] ) ) ) ) ) = 0 );
      wr4: ( SELF.role.name IN [ 'design', 'usage'] );
      wr5: ( ( SELF.role.name <> 'design' ) OR ( SIZEOF( QUERY ( i <* SELF.items | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION'  IN TYPEOF( i ) ) AND ( i
               \product_definition.frame_of_reference.name = 'part occurrence' ) ) ) ) = 0 ) );
      wr6: ( ( SELF.role.name <> 'usage' ) OR ( SIZEOF( QUERY ( i <* SELF.items | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION'  IN TYPEOF( i ) ) AND ( i
               \product_definition.frame_of_reference.name = 'conceptual definition' ) ) ) ) = 0 ) );
      wr7: ( SELF.role.description IN [ 'exception', 'inherited', 'local'] );
      wr8: ( SIZEOF( QUERY ( x <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'EFFECTIVITY_CONTEXT_ASSIGNMENT.ASSIGNED_EFFECTIVITY_ASSIGNMENT'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONFIGURED_EFFECTIVITY_CONTEXT_ASSIGNMENT'  
               IN TYPEOF( x ) ) ) ) = 1 );
  END_ENTITY; -- configured_effectivity_assignment (line:10301 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	effectivity_assignment
    ATTR:  assigned_effectivity,	TYPE: effectivity -- EXPLICIT

    ATTR:  role,	TYPE: object_role -- DERIVED
      := get_role( SELF )


  ENTITY(SELF)	configured_effectivity_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF configured_effectivity_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _configured_effectivity_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONFIGURED_EFFECTIVITY_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<sCONFIGURED_EFFECTIVITY_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sTIME_INTERVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_REQUEST_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EFFECTIVITY"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SELF.ASSIGNED_EFFECTIVITY
      let _TEMP3 = SDAI.TYPEOF(_TEMP2)
      let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = SELF.ASSIGNED_EFFECTIVITY
      let _TEMP8 = _TEMP7.ID
      let _TEMP9 = SDAI.FORCE_OPTIONAL(_TEMP8) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("configuration validity"))
      let _TEMP10 = _TEMP6 && _TEMP9
      return _TEMP10
    }
    public static func WHERE_wr2(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ITEMS
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }
    public static func WHERE_wr3(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ITEMS
      let _TEMP2 = _TEMP1.QUERY{ I in 

          let _TEMP1 = SDAI.TYPEOF(I, IS: ePRODUCT_DEFINITION.self)
          let _TEMP2 =  !_TEMP1
          let _TEMP3 = I.GROUP_REF(ePRODUCT_DEFINITION.self)
          let _TEMP4 = _TEMP3?.FRAME_OF_REFERENCE
          let _TEMP5 = _TEMP4?.NAME
          let _TEMP6 = ([SDAI.AIE(SDAI.STRING("conceptual definition")), 
            SDAI.AIE(SDAI.STRING("part occurrence")), 
            SDAI.AIE(SDAI.STRING("functional definition")), 
            SDAI.AIE(SDAI.STRING("alternative definition"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
          let _TEMP7 = SDAI.aggregate(_TEMP6, contains: SDAI.STRING(/*tLABEL*/_TEMP5))
          let _TEMP8 =  !_TEMP7
          let _TEMP9 = _TEMP2 || _TEMP8
          return _TEMP9 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr4(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ROLE
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = ([SDAI.AIE(SDAI.STRING("design")), 
        SDAI.AIE(SDAI.STRING("usage"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP4 = SDAI.aggregate(_TEMP3, contains: SDAI.STRING(/*tLABEL*/_TEMP2))
      return _TEMP4
    }
    public static func WHERE_wr5(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ROLE
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = _TEMP2 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("design"))
      let _TEMP4 = SELF.ITEMS
      let _TEMP5 = _TEMP4.QUERY{ I in 

          let _TEMP1 = SDAI.TYPEOF(I, IS: ePRODUCT_DEFINITION.self)
          let _TEMP2 = I.GROUP_REF(ePRODUCT_DEFINITION.self)
          let _TEMP3 = _TEMP2?.FRAME_OF_REFERENCE
          let _TEMP4 = _TEMP3?.NAME
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("part occurrence"))
          let _TEMP6 = _TEMP1 && _TEMP5
          return _TEMP6 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP8 = _TEMP3 || _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr6(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ROLE
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = _TEMP2 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("usage"))
      let _TEMP4 = SELF.ITEMS
      let _TEMP5 = _TEMP4.QUERY{ I in 

          let _TEMP1 = SDAI.TYPEOF(I, IS: ePRODUCT_DEFINITION.self)
          let _TEMP2 = I.GROUP_REF(ePRODUCT_DEFINITION.self)
          let _TEMP3 = _TEMP2?.FRAME_OF_REFERENCE
          let _TEMP4 = _TEMP3?.NAME
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("conceptual definition"))
          let _TEMP6 = _TEMP1 && _TEMP5
          return _TEMP6 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP8 = _TEMP3 || _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr7(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ROLE
      let _TEMP2 = _TEMP1?.DESCRIPTION
      let _TEMP3 = ([SDAI.AIE(SDAI.STRING("exception")), 
        SDAI.AIE(SDAI.STRING("inherited")), 
        SDAI.AIE(SDAI.STRING("local"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP4 = SDAI.aggregate(_TEMP3, contains: SDAI.STRING(/*tTEXT*/_TEMP2))
      return _TEMP4
    }
    public static func WHERE_wr8(SELF: eCONFIGURED_EFFECTIVITY_ASSIGNMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eEFFECTIVITY_CONTEXT_ASSIGNMENT.ASSIGNED_EFFECTIVITY_ASSIGNMENT)
      let _TEMP2 = _TEMP1.QUERY{ X in 

          let _TEMP1 = SDAI.TYPEOF(X, IS: eCONFIGURED_EFFECTIVITY_CONTEXT_ASSIGNMENT.self)
          return _TEMP1 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP4
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEMS: SDAI.SET<sCONFIGURED_EFFECTIVITY_ITEM>/*[1:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sCONFIGURED_EFFECTIVITY_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY configured_effectivity_assignment
    SUBTYPE OF ( effectivity_assignment );
      items  : SET [1 : ?] OF configured_effectivity_item;
    WHERE
      wr1: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EFFECTIVITY'] * TYPEOF( SELF.
               assigned_effectivity ) ) = 1 ) AND ( SELF.assigned_effectivity.id = 'configuration validity' ) );
      wr2: ( SIZEOF( SELF.items ) = 1 );
      wr3: ( SIZEOF( QUERY ( i <* SELF.items | ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRODUCT_DEFINITION'  IN TYPEOF( i ) ) ) OR ( NOT ( i\product_definition.frame_of_reference.
               name IN [ 'conceptual definition', 'part occurrence', 'functional definition', 
               'alternative definition' ] ) ) ) ) ) = 0 );
      wr4: ( SELF.role.name IN [ 'design', 'usage'] );
      wr5: ( ( SELF.role.name <> 'design' ) OR ( SIZEOF( QUERY ( i <* SELF.items | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION'  IN TYPEOF( i ) ) AND ( i
               \product_definition.frame_of_reference.name = 'part occurrence' ) ) ) ) = 0 ) );
      wr6: ( ( SELF.role.name <> 'usage' ) OR ( SIZEOF( QUERY ( i <* SELF.items | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION'  IN TYPEOF( i ) ) AND ( i
               \product_definition.frame_of_reference.name = 'conceptual definition' ) ) ) ) = 0 ) );
      wr7: ( SELF.role.description IN [ 'exception', 'inherited', 'local'] );
      wr8: ( SIZEOF( QUERY ( x <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'EFFECTIVITY_CONTEXT_ASSIGNMENT.ASSIGNED_EFFECTIVITY_ASSIGNMENT'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CONFIGURED_EFFECTIVITY_CONTEXT_ASSIGNMENT'  
               IN TYPEOF( x ) ) ) ) = 1 );
  END_ENTITY; -- configured_effectivity_assignment (line:10301 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONFIGURED_EFFECTIVITY_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _configured_effectivity_assignment.self
    }
    public let partialEntity: _configured_effectivity_assignment

    //MARK: SUPERTYPES
    public let super_eEFFECTIVITY_ASSIGNMENT: eEFFECTIVITY_ASSIGNMENT 	// [1]
    public var super_eCONFIGURED_EFFECTIVITY_ASSIGNMENT: eCONFIGURED_EFFECTIVITY_ASSIGNMENT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eEFFECTIVITY_ASSIGNMENT`` )
    public var ROLE: eOBJECT_ROLE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROLE") {
          return cached.value as! eOBJECT_ROLE? 
        }
        let origin = super_eEFFECTIVITY_ASSIGNMENT
        let value = eOBJECT_ROLE(origin.partialEntity._role__getter(SELF: origin))
        updateCache(derivedAttributeName:"ROLE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONFIGURED_EFFECTIVITY_ASSIGNMENT`` )
    public var ITEMS: SDAI.SET<sCONFIGURED_EFFECTIVITY_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eEFFECTIVITY_ASSIGNMENT`` )
    public var ASSIGNED_EFFECTIVITY: eEFFECTIVITY {
      get {
        return SDAI.UNWRAP( super_eEFFECTIVITY_ASSIGNMENT.partialEntity._assigned_effectivity )
      }
      set(newValue) {
        let partial = super_eEFFECTIVITY_ASSIGNMENT.partialEntity
        partial._assigned_effectivity = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_configured_effectivity_assignment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eEFFECTIVITY_ASSIGNMENT.self) else { return nil }
      self.super_eEFFECTIVITY_ASSIGNMENT = super1

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
      result[prefix2 + " .WHERE_wr1"] = _configured_effectivity_assignment.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _configured_effectivity_assignment.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _configured_effectivity_assignment.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _configured_effectivity_assignment.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _configured_effectivity_assignment.WHERE_wr5(SELF: instance)
      result[prefix2 + " .WHERE_wr6"] = _configured_effectivity_assignment.WHERE_wr6(SELF: instance)
      result[prefix2 + " .WHERE_wr7"] = _configured_effectivity_assignment.WHERE_wr7(SELF: instance)
      result[prefix2 + " .WHERE_wr8"] = _configured_effectivity_assignment.WHERE_wr8(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONFIGURED_EFFECTIVITY_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eEFFECTIVITY_ASSIGNMENT.self)
      entityDef.add(supertype: eCONFIGURED_EFFECTIVITY_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eCONFIGURED_EFFECTIVITY_ASSIGNMENT.ROLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eCONFIGURED_EFFECTIVITY_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_EFFECTIVITY", keyPath: \eCONFIGURED_EFFECTIVITY_ASSIGNMENT.ASSIGNED_EFFECTIVITY, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

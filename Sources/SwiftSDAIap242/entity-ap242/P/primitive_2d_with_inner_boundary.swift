/* file: primitive_2d_with_inner_boundary.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY primitive_2d_with_inner_boundary
    SUBTYPE OF ( complex_area, compound_representation_item );
      SELF\compound_representation_item.item_element : compound_inner_area_boundary;
    DERIVE
      inner_boundary  : compound_inner_area_boundary := SELF\compound_representation_item.item_element;
    WHERE
      wr1: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCULAR_AREA', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ELLIPTIC_AREA' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RECTANGULAR_AREA' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYGONAL_AREA' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_WITH_OUTER_BOUNDARY' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_AREA_WITH_PARAMETERS' ] * TYPEOF( SELF ) ) 
               > 0 );
      wr2: ( SIZEOF( QUERY ( inner <* inner_boundary | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRIMITIVE_2D_WITH_INNER_BOUNDARY'  IN TYPEOF( inner ) ) ) ) = 0 );
      wr3: open_path_based_inner_boundary( inner_boundary );
  END_ENTITY; -- primitive_2d_with_inner_boundary (line:25788 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	primitive_2d
    (no local attributes)

  SUPER- ENTITY(4)	complex_area
    (no local attributes)

  SUPER- ENTITY(5)	compound_representation_item
    ATTR:  item_element,	TYPE: compound_item_definition -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: primitive_2d_with_inner_boundary,	TYPE: compound_inner_area_boundary
          ENTITY: row_representation_item,	TYPE: list_representation_item
          ENTITY: point_and_vector,	TYPE: point_and_vector_members
          ENTITY: point_path,	TYPE: point_path_members
          ENTITY: point_array,	TYPE: point_array_members
          ENTITY: location_in_aggregate_representation_item,	TYPE: location_in_aggregate_item


  ENTITY(SELF)	primitive_2d_with_inner_boundary
    REDCR: item_element,	TYPE: compound_inner_area_boundary -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item

    ATTR:  inner_boundary,	TYPE: compound_inner_area_boundary -- DERIVED
      := SELF\compound_representation_item.item_element


*/


//MARK: - Partial Entity
  public final class _primitive_2d_with_inner_boundary : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRIMITIVE_2D_WITH_INNER_BOUNDARY.self
    }

    //ATTRIBUTES
    /* override var _item_element: sCOMPOUND_INNER_AREA_BOUNDARY	//EXPLICIT REDEFINITION(eCOMPOUND_REPRESENTATION_ITEM) */

    /// DERIVE ATTRIBUTE
    internal func _inner_boundary__getter(SELF: ePRIMITIVE_2D_WITH_INNER_BOUNDARY) -> 
      sCOMPOUND_INNER_AREA_BOUNDARY?  {

      let _TEMP1 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.ITEM_ELEMENT
      return sCOMPOUND_INNER_AREA_BOUNDARY(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP2)
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePRIMITIVE_2D_WITH_INNER_BOUNDARY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCULAR_AREA")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ELLIPTIC_AREA")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RECTANGULAR_AREA")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYGONAL_AREA")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_WITH_OUTER_BOUNDARY")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_AREA_WITH_PARAMETERS"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SDAI.TYPEOF(SELF)
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: ePRIMITIVE_2D_WITH_INNER_BOUNDARY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.INNER_BOUNDARY?
        .QUERY{ INNER in 

          let _TEMP1 = SDAI.TYPEOF(INNER, IS: ePRIMITIVE_2D_WITH_INNER_BOUNDARY.self)
          return _TEMP1 }
      let _TEMP2 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_INNER_AREA_BOUNDARY*/_TEMP1))
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }
    public static func WHERE_wr3(SELF: ePRIMITIVE_2D_WITH_INNER_BOUNDARY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = OPEN_PATH_BASED_INNER_BOUNDARY(SDAI.SET<ePRIMITIVE_2D>(/*sCOMPOUND_INNER_AREA_BOUNDARY*/
        SELF.INNER_BOUNDARY))
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY primitive_2d_with_inner_boundary
    SUBTYPE OF ( complex_area, compound_representation_item );
      SELF\compound_representation_item.item_element : compound_inner_area_boundary;
    DERIVE
      inner_boundary  : compound_inner_area_boundary := SELF\compound_representation_item.item_element;
    WHERE
      wr1: ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCULAR_AREA', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ELLIPTIC_AREA' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RECTANGULAR_AREA' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.POLYGONAL_AREA' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_WITH_OUTER_BOUNDARY' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_AREA_WITH_PARAMETERS' ] * TYPEOF( SELF ) ) 
               > 0 );
      wr2: ( SIZEOF( QUERY ( inner <* inner_boundary | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRIMITIVE_2D_WITH_INNER_BOUNDARY'  IN TYPEOF( inner ) ) ) ) = 0 );
      wr3: open_path_based_inner_boundary( inner_boundary );
  END_ENTITY; -- primitive_2d_with_inner_boundary (line:25788 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRIMITIVE_2D_WITH_INNER_BOUNDARY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _primitive_2d_with_inner_boundary.self
    }
    public let partialEntity: _primitive_2d_with_inner_boundary

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePRIMITIVE_2D: ePRIMITIVE_2D 	// [3]
    public let super_eCOMPLEX_AREA: eCOMPLEX_AREA 	// [4]
    public let super_eCOMPOUND_REPRESENTATION_ITEM: eCOMPOUND_REPRESENTATION_ITEM 	// [5]
    public var super_ePRIMITIVE_2D_WITH_INNER_BOUNDARY: ePRIMITIVE_2D_WITH_INNER_BOUNDARY { return self } 	// [6]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``ePRIMITIVE_2D_WITH_INNER_BOUNDARY`` )
    public var INNER_BOUNDARY: sCOMPOUND_INNER_AREA_BOUNDARY?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INNER_BOUNDARY") {
          return cached.value as! sCOMPOUND_INNER_AREA_BOUNDARY? 
        }
        let origin = self
        let value = origin.partialEntity._inner_boundary__getter(SELF: origin)
        updateCache(derivedAttributeName:"INNER_BOUNDARY", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``ePRIMITIVE_2D_WITH_INNER_BOUNDARY`` )
    public var ITEM_ELEMENT: sCOMPOUND_INNER_AREA_BOUNDARY {
      get {
        return SDAI.UNWRAP( sCOMPOUND_INNER_AREA_BOUNDARY( super_eCOMPOUND_REPRESENTATION_ITEM.partialEntity
          ._item_element ) )
      }
      set(newValue) {
        let partial = super_eCOMPOUND_REPRESENTATION_ITEM.partialEntity
        partial._item_element = SDAI.UNWRAP(
          sCOMPOUND_ITEM_DEFINITION(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_primitive_2d_with_inner_boundary.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePRIMITIVE_2D.self) else { return nil }
      self.super_ePRIMITIVE_2D = super3

      guard let super4 = complexEntity?.entityReference(eCOMPLEX_AREA.self) else { return nil }
      self.super_eCOMPLEX_AREA = super4

      guard let super5 = complexEntity?.entityReference(eCOMPOUND_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eCOMPOUND_REPRESENTATION_ITEM = super5

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
      result[prefix2 + " .WHERE_wr1"] = _primitive_2d_with_inner_boundary.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _primitive_2d_with_inner_boundary.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _primitive_2d_with_inner_boundary.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRIMITIVE_2D_WITH_INNER_BOUNDARY", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePRIMITIVE_2D.self)
      entityDef.add(supertype: eCOMPLEX_AREA.self)
      entityDef.add(supertype: eCOMPOUND_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePRIMITIVE_2D_WITH_INNER_BOUNDARY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INNER_BOUNDARY", keyPath: \ePRIMITIVE_2D_WITH_INNER_BOUNDARY.INNER_BOUNDARY, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM_ELEMENT", keyPath: \ePRIMITIVE_2D_WITH_INNER_BOUNDARY.ITEM_ELEMENT, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRIMITIVE_2D_WITH_INNER_BOUNDARY.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePRIMITIVE_2D_WITH_INNER_BOUNDARY.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
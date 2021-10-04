/* file: point_on_surface_pair.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY point_on_surface_pair
    SUBTYPE OF ( high_order_kinematic_pair );
      pair_surface  : surface;
    WHERE
      wr1: ( SIZEOF( QUERY ( r <* SELF\kinematic_pair.associated_link_representations_1 | ( NOT ( 
               pair_surface IN r.items ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( lr <* SELF\kinematic_pair.associated_link_representations_1 | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIGID_LINK_REPRESENTATION'  IN TYPEOF( lr ) ) ) ) ) 
               = 0 );
  END_ENTITY; -- point_on_surface_pair (line:25281 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	item_defined_transformation
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: kinematic_pair,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  transform_item_1,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: kinematic_pair,	TYPE: rigid_placement
          ENTITY: link_motion_transformation,	TYPE: rigid_placement
          ENTITY: transformation_with_derived_angle,	TYPE: angle_direction_reference_with_a2p3d_select

    ATTR:  transform_item_2,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: kinematic_pair,	TYPE: rigid_placement
          ENTITY: link_motion_transformation,	TYPE: kinematic_path
          ENTITY: transformation_with_derived_angle,	TYPE: axis2_placement_3d


  SUPER- ENTITY(4)	kinematic_pair
    ATTR:  joint,	TYPE: kinematic_joint -- EXPLICIT

    REDCR: transform_item_1,	TYPE: rigid_placement -- EXPLICIT
      -- OVERRIDING ENTITY: item_defined_transformation

    REDCR: transform_item_2,	TYPE: rigid_placement -- EXPLICIT
      -- OVERRIDING ENTITY: item_defined_transformation

    ATTR:  associated_link_representations_1,	TYPE: SET [1 : ?] OF kinematic_link_representation -- DERIVED
      := sort_link_associations( link_representation_associations, TRUE )

    ATTR:  associated_link_representations_2,	TYPE: SET [1 : ?] OF kinematic_link_representation -- DERIVED
      := sort_link_associations( link_representation_associations, FALSE )

    REDCR: name,	TYPE: label -- DERIVED (DYNAMIC)	(AMBIGUOUS/MASKED)
      := SELF\representation_item.name
      -- OVERRIDING ENTITY: item_defined_transformation

    ATTR:  link_representation_associations,	TYPE: SET [1 : ?] OF pair_representation_relationship -- INVERSE
      FOR transformation_operator;


  SUPER- ENTITY(5)	high_order_kinematic_pair
    (no local attributes)

  ENTITY(SELF)	point_on_surface_pair
    ATTR:  pair_surface,	TYPE: surface -- EXPLICIT


  SUB- ENTITY(7)	point_on_surface_pair_with_range
    ATTR:  range_on_pair_surface,	TYPE: rectangular_trimmed_surface -- EXPLICIT

    ATTR:  lower_limit_yaw,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  upper_limit_yaw,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  lower_limit_pitch,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  upper_limit_pitch,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  lower_limit_roll,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  upper_limit_roll,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _point_on_surface_pair : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePOINT_ON_SURFACE_PAIR.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _pair_surface: eSURFACE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._pair_surface.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._pair_surface.value.isValueEqualOptionally(to: rhs._pair_surface.value, visited: &comppairs)	{
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
      if let comp = self._pair_surface.value.isValueEqualOptionally(to: rhs._pair_surface.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePOINT_ON_SURFACE_PAIR?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eKINEMATIC_PAIR.self)
      let _TEMP2 = _TEMP1?.ASSOCIATED_LINK_REPRESENTATIONS_1
      let _TEMP3 = _TEMP2?.QUERY{ R in 

          let _TEMP1 = R.ITEMS
          let _TEMP2 = SDAI.aggregate(_TEMP1, contains: sKINEMATIC_LINK_REPRESENTATION_ITEMS(/*eSURFACE*/
            SELF.PAIR_SURFACE))
          let _TEMP3 =  !_TEMP2
          return _TEMP3 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: ePOINT_ON_SURFACE_PAIR?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eKINEMATIC_PAIR.self)
      let _TEMP2 = _TEMP1?.ASSOCIATED_LINK_REPRESENTATIONS_1
      let _TEMP3 = _TEMP2?.QUERY{ LR in 

          let _TEMP1 = SDAI.TYPEOF(LR, IS: eRIGID_LINK_REPRESENTATION.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PAIR_SURFACE: eSURFACE) {
      self._pair_surface = PAIR_SURFACE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eSURFACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PAIR_SURFACE: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY point_on_surface_pair
    SUBTYPE OF ( high_order_kinematic_pair );
      pair_surface  : surface;
    WHERE
      wr1: ( SIZEOF( QUERY ( r <* SELF\kinematic_pair.associated_link_representations_1 | ( NOT ( 
               pair_surface IN r.items ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( lr <* SELF\kinematic_pair.associated_link_representations_1 | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIGID_LINK_REPRESENTATION'  IN TYPEOF( lr ) ) ) ) ) 
               = 0 );
  END_ENTITY; -- point_on_surface_pair (line:25281 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePOINT_ON_SURFACE_PAIR : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _point_on_surface_pair.self
    }
    public let partialEntity: _point_on_surface_pair

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eITEM_DEFINED_TRANSFORMATION: eITEM_DEFINED_TRANSFORMATION 	// [3]
    public let super_eKINEMATIC_PAIR: eKINEMATIC_PAIR 	// [4]
    public let super_eHIGH_ORDER_KINEMATIC_PAIR: eHIGH_ORDER_KINEMATIC_PAIR 	// [5]
    public var super_ePOINT_ON_SURFACE_PAIR: ePOINT_ON_SURFACE_PAIR { return self } 	// [6]

    //MARK: SUBTYPES
    public var sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE: ePOINT_ON_SURFACE_PAIR_WITH_RANGE? {	// [7]
      return self.complexEntity.entityReference(ePOINT_ON_SURFACE_PAIR_WITH_RANGE.self)
    }


    //MARK: ATTRIBUTES
    // NAME: (3 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOINT_ON_SURFACE_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_PITCH: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.partialEntity._lower_limit_pitch
      }
      set(newValue) {
        guard let partial = sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.super_ePOINT_ON_SURFACE_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._lower_limit_pitch = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eITEM_DEFINED_TRANSFORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eITEM_DEFINED_TRANSFORMATION.partialEntity._description
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._description = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing ePAIR_REPRESENTATION_RELATIONSHIP .TRANSFORMATION_OPERATOR
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var LINK_REPRESENTATION_ASSOCIATIONS: SDAI.SET<ePAIR_REPRESENTATION_RELATIONSHIP>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eKINEMATIC_PAIR.partialEntity._link_representation_associations )
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var TRANSFORM_ITEM_1: sRIGID_PLACEMENT {
      get {
        return SDAI.UNWRAP( sRIGID_PLACEMENT( super_eITEM_DEFINED_TRANSFORMATION.partialEntity
          ._transform_item_1 ) )
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._transform_item_1 = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var TRANSFORM_ITEM_2: sRIGID_PLACEMENT {
      get {
        return SDAI.UNWRAP( sRIGID_PLACEMENT( super_eITEM_DEFINED_TRANSFORMATION.partialEntity
          ._transform_item_2 ) )
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._transform_item_2 = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOINT_ON_SURFACE_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_ROLL: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.partialEntity._upper_limit_roll
      }
      set(newValue) {
        guard let partial = sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.super_ePOINT_ON_SURFACE_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._upper_limit_roll = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOINT_ON_SURFACE_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_YAW: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.partialEntity._lower_limit_yaw
      }
      set(newValue) {
        guard let partial = sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.super_ePOINT_ON_SURFACE_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._lower_limit_yaw = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePOINT_ON_SURFACE_PAIR`` )
    public var PAIR_SURFACE: eSURFACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._pair_surface )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._pair_surface = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOINT_ON_SURFACE_PAIR_WITH_RANGE`` )
    public var RANGE_ON_PAIR_SURFACE: eRECTANGULAR_TRIMMED_SURFACE?  {
      get {
        return sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.partialEntity._range_on_pair_surface
      }
      set(newValue) {
        guard let partial = sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.super_ePOINT_ON_SURFACE_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._range_on_pair_surface = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var JOINT: eKINEMATIC_JOINT {
      get {
        return SDAI.UNWRAP( super_eKINEMATIC_PAIR.partialEntity._joint )
      }
      set(newValue) {
        let partial = super_eKINEMATIC_PAIR.partialEntity
        partial._joint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOINT_ON_SURFACE_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_PITCH: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.partialEntity._upper_limit_pitch
      }
      set(newValue) {
        guard let partial = sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.super_ePOINT_ON_SURFACE_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._upper_limit_pitch = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOINT_ON_SURFACE_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_YAW: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.partialEntity._upper_limit_yaw
      }
      set(newValue) {
        guard let partial = sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.super_ePOINT_ON_SURFACE_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._upper_limit_yaw = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var ASSOCIATED_LINK_REPRESENTATIONS_1: (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_1") {
          return cached.value as! (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )? 
        }
        let origin = super_eKINEMATIC_PAIR
        let value = SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>(
          origin.partialEntity._associated_link_representations_1__getter(SELF: origin))
        updateCache(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_1", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eKINEMATIC_PAIR`` )
    public var ASSOCIATED_LINK_REPRESENTATIONS_2: (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_2") {
          return cached.value as! (SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>/*[1:nil]*/ )? 
        }
        let origin = super_eKINEMATIC_PAIR
        let value = SDAI.SET<eKINEMATIC_LINK_REPRESENTATION>(
          origin.partialEntity._associated_link_representations_2__getter(SELF: origin))
        updateCache(derivedAttributeName:"ASSOCIATED_LINK_REPRESENTATIONS_2", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOINT_ON_SURFACE_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_ROLL: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.partialEntity._lower_limit_roll
      }
      set(newValue) {
        guard let partial = sub_ePOINT_ON_SURFACE_PAIR_WITH_RANGE?.super_ePOINT_ON_SURFACE_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._lower_limit_roll = newValue
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
      guard let partial = complexEntity?.partialEntityInstance(_point_on_surface_pair.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eITEM_DEFINED_TRANSFORMATION.self) else { return nil }
      self.super_eITEM_DEFINED_TRANSFORMATION = super3

      guard let super4 = complexEntity?.entityReference(eKINEMATIC_PAIR.self) else { return nil }
      self.super_eKINEMATIC_PAIR = super4

      guard let super5 = complexEntity?.entityReference(eHIGH_ORDER_KINEMATIC_PAIR.self) else { return nil }
      self.super_eHIGH_ORDER_KINEMATIC_PAIR = super5

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
      result[prefix2 + " .WHERE_wr1"] = _point_on_surface_pair.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _point_on_surface_pair.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "POINT_ON_SURFACE_PAIR", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eITEM_DEFINED_TRANSFORMATION.self)
      entityDef.add(supertype: eKINEMATIC_PAIR.self)
      entityDef.add(supertype: eHIGH_ORDER_KINEMATIC_PAIR.self)
      entityDef.add(supertype: ePOINT_ON_SURFACE_PAIR.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "LOWER_LIMIT_PITCH", keyPath: \ePOINT_ON_SURFACE_PAIR.LOWER_LIMIT_PITCH, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePOINT_ON_SURFACE_PAIR.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINK_REPRESENTATION_ASSOCIATIONS", keyPath: \ePOINT_ON_SURFACE_PAIR.LINK_REPRESENTATION_ASSOCIATIONS, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_1", keyPath: \ePOINT_ON_SURFACE_PAIR.TRANSFORM_ITEM_1, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_2", keyPath: \ePOINT_ON_SURFACE_PAIR.TRANSFORM_ITEM_2, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UPPER_LIMIT_ROLL", keyPath: \ePOINT_ON_SURFACE_PAIR.UPPER_LIMIT_ROLL, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOWER_LIMIT_YAW", keyPath: \ePOINT_ON_SURFACE_PAIR.LOWER_LIMIT_YAW, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PAIR_SURFACE", keyPath: \ePOINT_ON_SURFACE_PAIR.PAIR_SURFACE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE_ON_PAIR_SURFACE", keyPath: \ePOINT_ON_SURFACE_PAIR.RANGE_ON_PAIR_SURFACE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "JOINT", keyPath: \ePOINT_ON_SURFACE_PAIR.JOINT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UPPER_LIMIT_PITCH", keyPath: \ePOINT_ON_SURFACE_PAIR.UPPER_LIMIT_PITCH, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UPPER_LIMIT_YAW", keyPath: \ePOINT_ON_SURFACE_PAIR.UPPER_LIMIT_YAW, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSOCIATED_LINK_REPRESENTATIONS_1", keyPath: \ePOINT_ON_SURFACE_PAIR.ASSOCIATED_LINK_REPRESENTATIONS_1, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSOCIATED_LINK_REPRESENTATIONS_2", keyPath: \ePOINT_ON_SURFACE_PAIR.ASSOCIATED_LINK_REPRESENTATIONS_2, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOWER_LIMIT_ROLL", keyPath: \ePOINT_ON_SURFACE_PAIR.LOWER_LIMIT_ROLL, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePOINT_ON_SURFACE_PAIR.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
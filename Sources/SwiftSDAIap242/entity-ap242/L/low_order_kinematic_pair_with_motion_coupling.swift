/* file: low_order_kinematic_pair_with_motion_coupling.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY low_order_kinematic_pair_with_motion_coupling
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            gear_pair, 
            linear_flexible_and_pinion_pair, 
            rack_and_pinion_pair, 
            screw_pair ) )
    SUBTYPE OF ( kinematic_pair );
    WHERE
      wr1: ( SIZEOF( QUERY ( lr <* SELF\kinematic_pair.associated_link_representations_2 | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIGID_LINK_REPRESENTATION'  IN TYPEOF( lr ) ) ) ) ) 
               = 0 );
  END_ENTITY; -- low_order_kinematic_pair_with_motion_coupling (line:19501 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	low_order_kinematic_pair_with_motion_coupling
    (no local attributes)

  SUB- ENTITY(6)	gear_pair_with_range
    ATTR:  lower_limit_actual_rotation_1,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  upper_limit_actual_rotation_1,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT


  SUB- ENTITY(7)	gear_pair
    ATTR:  radius_first_link,	TYPE: length_measure -- EXPLICIT

    ATTR:  radius_second_link,	TYPE: length_measure -- EXPLICIT

    ATTR:  bevel,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  helical_angle,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  gear_ratio,	TYPE: REAL -- EXPLICIT


  SUB- ENTITY(8)	linear_flexible_and_pinion_pair
    ATTR:  pinion_radius,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(9)	rack_and_pinion_pair_with_range
    ATTR:  lower_limit_rack_displacement,	TYPE: OPTIONAL length_measure -- EXPLICIT

    ATTR:  upper_limit_rack_displacement,	TYPE: OPTIONAL length_measure -- EXPLICIT


  SUB- ENTITY(10)	rack_and_pinion_pair
    ATTR:  pinion_radius,	TYPE: length_measure -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(11)	screw_pair_with_range
    ATTR:  lower_limit_actual_rotation,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT

    ATTR:  upper_limit_actual_rotation,	TYPE: OPTIONAL plane_angle_measure -- EXPLICIT


  SUB- ENTITY(12)	screw_pair
    ATTR:  pitch,	TYPE: length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _low_order_kinematic_pair_with_motion_coupling : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.self
    }

    //ATTRIBUTES
    // (no local attributes)

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
    public static func WHERE_wr1(SELF: eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eKINEMATIC_PAIR.self)
      let _TEMP2 = _TEMP1?.ASSOCIATED_LINK_REPRESENTATIONS_2
      let _TEMP3 = _TEMP2?.QUERY{ LR in 

          let _TEMP1 = SDAI.TYPEOF(LR, IS: eRIGID_LINK_REPRESENTATION.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
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
  ENTITY low_order_kinematic_pair_with_motion_coupling
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            gear_pair, 
            linear_flexible_and_pinion_pair, 
            rack_and_pinion_pair, 
            screw_pair ) )
    SUBTYPE OF ( kinematic_pair );
    WHERE
      wr1: ( SIZEOF( QUERY ( lr <* SELF\kinematic_pair.associated_link_representations_2 | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIGID_LINK_REPRESENTATION'  IN TYPEOF( lr ) ) ) ) ) 
               = 0 );
  END_ENTITY; -- low_order_kinematic_pair_with_motion_coupling (line:19501 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _low_order_kinematic_pair_with_motion_coupling.self
    }
    public let partialEntity: _low_order_kinematic_pair_with_motion_coupling

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eITEM_DEFINED_TRANSFORMATION: eITEM_DEFINED_TRANSFORMATION 	// [3]
    public let super_eKINEMATIC_PAIR: eKINEMATIC_PAIR 	// [4]
    public var super_eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING: eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eGEAR_PAIR_WITH_RANGE: eGEAR_PAIR_WITH_RANGE? {	// [6]
      return self.complexEntity.entityReference(eGEAR_PAIR_WITH_RANGE.self)
    }

    public var sub_eGEAR_PAIR: eGEAR_PAIR? {	// [7]
      return self.complexEntity.entityReference(eGEAR_PAIR.self)
    }

    public var sub_eLINEAR_FLEXIBLE_AND_PINION_PAIR: eLINEAR_FLEXIBLE_AND_PINION_PAIR? {	// [8]
      return self.complexEntity.entityReference(eLINEAR_FLEXIBLE_AND_PINION_PAIR.self)
    }

    public var sub_eRACK_AND_PINION_PAIR_WITH_RANGE: eRACK_AND_PINION_PAIR_WITH_RANGE? {	// [9]
      return self.complexEntity.entityReference(eRACK_AND_PINION_PAIR_WITH_RANGE.self)
    }

    public var sub_eRACK_AND_PINION_PAIR: eRACK_AND_PINION_PAIR? {	// [10]
      return self.complexEntity.entityReference(eRACK_AND_PINION_PAIR.self)
    }

    public var sub_eSCREW_PAIR_WITH_RANGE: eSCREW_PAIR_WITH_RANGE? {	// [11]
      return self.complexEntity.entityReference(eSCREW_PAIR_WITH_RANGE.self)
    }

    public var sub_eSCREW_PAIR: eSCREW_PAIR? {	// [12]
      return self.complexEntity.entityReference(eSCREW_PAIR.self)
    }


    //MARK: ATTRIBUTES
    // PINION_RADIUS: (2 AMBIGUOUS REFs)

    // NAME: (3 AMBIGUOUS REFs)

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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEAR_PAIR`` )
    public var GEAR_RATIO: SDAI.REAL?  {
      get {
        return sub_eGEAR_PAIR?.partialEntity._gear_ratio
      }
      set(newValue) {
        guard let partial = sub_eGEAR_PAIR?.super_eGEAR_PAIR.partialEntity else { return }
        partial._gear_ratio = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eRACK_AND_PINION_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_RACK_DISPLACEMENT: tLENGTH_MEASURE?  {
      get {
        return sub_eRACK_AND_PINION_PAIR_WITH_RANGE?.partialEntity._lower_limit_rack_displacement
      }
      set(newValue) {
        guard let partial = sub_eRACK_AND_PINION_PAIR_WITH_RANGE?.super_eRACK_AND_PINION_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._lower_limit_rack_displacement = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSCREW_PAIR`` )
    public var PITCH: tLENGTH_MEASURE?  {
      get {
        return sub_eSCREW_PAIR?.partialEntity._pitch
      }
      set(newValue) {
        guard let partial = sub_eSCREW_PAIR?.super_eSCREW_PAIR.partialEntity else { return }
        partial._pitch = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEAR_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_ACTUAL_ROTATION_1: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eGEAR_PAIR_WITH_RANGE?.partialEntity._upper_limit_actual_rotation_1
      }
      set(newValue) {
        guard let partial = sub_eGEAR_PAIR_WITH_RANGE?.super_eGEAR_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._upper_limit_actual_rotation_1 = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEAR_PAIR`` )
    public var BEVEL: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eGEAR_PAIR?.partialEntity._bevel
      }
      set(newValue) {
        guard let partial = sub_eGEAR_PAIR?.super_eGEAR_PAIR.partialEntity else { return }
        partial._bevel = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eGEAR_PAIR`` )
    public var RADIUS_SECOND_LINK: tLENGTH_MEASURE?  {
      get {
        return sub_eGEAR_PAIR?.partialEntity._radius_second_link
      }
      set(newValue) {
        guard let partial = sub_eGEAR_PAIR?.super_eGEAR_PAIR.partialEntity else { return }
        partial._radius_second_link = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEAR_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_ACTUAL_ROTATION_1: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eGEAR_PAIR_WITH_RANGE?.partialEntity._lower_limit_actual_rotation_1
      }
      set(newValue) {
        guard let partial = sub_eGEAR_PAIR_WITH_RANGE?.super_eGEAR_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._lower_limit_actual_rotation_1 = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEAR_PAIR`` )
    public var HELICAL_ANGLE: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eGEAR_PAIR?.partialEntity._helical_angle
      }
      set(newValue) {
        guard let partial = sub_eGEAR_PAIR?.super_eGEAR_PAIR.partialEntity else { return }
        partial._helical_angle = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eSCREW_PAIR_WITH_RANGE`` )
    public var LOWER_LIMIT_ACTUAL_ROTATION: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eSCREW_PAIR_WITH_RANGE?.partialEntity._lower_limit_actual_rotation
      }
      set(newValue) {
        guard let partial = sub_eSCREW_PAIR_WITH_RANGE?.super_eSCREW_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._lower_limit_actual_rotation = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eRACK_AND_PINION_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_RACK_DISPLACEMENT: tLENGTH_MEASURE?  {
      get {
        return sub_eRACK_AND_PINION_PAIR_WITH_RANGE?.partialEntity._upper_limit_rack_displacement
      }
      set(newValue) {
        guard let partial = sub_eRACK_AND_PINION_PAIR_WITH_RANGE?.super_eRACK_AND_PINION_PAIR_WITH_RANGE
          .partialEntity else { return }
        partial._upper_limit_rack_displacement = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEAR_PAIR`` )
    public var RADIUS_FIRST_LINK: tLENGTH_MEASURE?  {
      get {
        return sub_eGEAR_PAIR?.partialEntity._radius_first_link
      }
      set(newValue) {
        guard let partial = sub_eGEAR_PAIR?.super_eGEAR_PAIR.partialEntity else { return }
        partial._radius_first_link = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eSCREW_PAIR_WITH_RANGE`` )
    public var UPPER_LIMIT_ACTUAL_ROTATION: tPLANE_ANGLE_MEASURE?  {
      get {
        return sub_eSCREW_PAIR_WITH_RANGE?.partialEntity._upper_limit_actual_rotation
      }
      set(newValue) {
        guard let partial = sub_eSCREW_PAIR_WITH_RANGE?.super_eSCREW_PAIR_WITH_RANGE.partialEntity
          else { return }
        partial._upper_limit_actual_rotation = newValue
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
      guard let partial = complexEntity?.partialEntityInstance(_low_order_kinematic_pair_with_motion_coupling.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eITEM_DEFINED_TRANSFORMATION.self) else { return nil }
      self.super_eITEM_DEFINED_TRANSFORMATION = super3

      guard let super4 = complexEntity?.entityReference(eKINEMATIC_PAIR.self) else { return nil }
      self.super_eKINEMATIC_PAIR = super4

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
      result[prefix2 + " .WHERE_wr1"] = _low_order_kinematic_pair_with_motion_coupling.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eITEM_DEFINED_TRANSFORMATION.self)
      entityDef.add(supertype: eKINEMATIC_PAIR.self)
      entityDef.add(supertype: eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "GEAR_RATIO", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.GEAR_RATIO, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINK_REPRESENTATION_ASSOCIATIONS", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.LINK_REPRESENTATION_ASSOCIATIONS, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOWER_LIMIT_RACK_DISPLACEMENT", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.LOWER_LIMIT_RACK_DISPLACEMENT, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PITCH", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.PITCH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UPPER_LIMIT_ACTUAL_ROTATION_1", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.UPPER_LIMIT_ACTUAL_ROTATION_1, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BEVEL", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.BEVEL, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_1", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.TRANSFORM_ITEM_1, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_2", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.TRANSFORM_ITEM_2, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RADIUS_SECOND_LINK", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.RADIUS_SECOND_LINK, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOWER_LIMIT_ACTUAL_ROTATION_1", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.LOWER_LIMIT_ACTUAL_ROTATION_1, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "HELICAL_ANGLE", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.HELICAL_ANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "JOINT", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.JOINT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOWER_LIMIT_ACTUAL_ROTATION", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.LOWER_LIMIT_ACTUAL_ROTATION, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "UPPER_LIMIT_RACK_DISPLACEMENT", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.UPPER_LIMIT_RACK_DISPLACEMENT, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RADIUS_FIRST_LINK", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.RADIUS_FIRST_LINK, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSOCIATED_LINK_REPRESENTATIONS_1", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.ASSOCIATED_LINK_REPRESENTATIONS_1, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSOCIATED_LINK_REPRESENTATIONS_2", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.ASSOCIATED_LINK_REPRESENTATIONS_2, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UPPER_LIMIT_ACTUAL_ROTATION", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.UPPER_LIMIT_ACTUAL_ROTATION, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eLOW_ORDER_KINEMATIC_PAIR_WITH_MOTION_COUPLING.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: geometric_tolerance.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY geometric_tolerance
    ABSTRACT SUPERTYPE OF ( 
        geometric_tolerance_with_datum_reference 
        ANDOR
        geometric_tolerance_with_defined_unit 
        ANDOR
        ONEOF ( 
            geometric_tolerance_with_modifiers, 
            modified_geometric_tolerance ) 
        ANDOR
        unequally_disposed_geometric_tolerance 
        ANDOR
        ONEOF ( 
            cylindricity_tolerance, 
            flatness_tolerance, 
            line_profile_tolerance, 
            position_tolerance, 
            roundness_tolerance, 
            straightness_tolerance, 
            surface_profile_tolerance ) );
      name                     : label;
      description              : OPTIONAL text;
      magnitude                : OPTIONAL length_measure_with_unit;
      toleranced_shape_aspect  : geometric_tolerance_target;
    DERIVE
      controlling_shape  : product_definition_shape := sts_get_product_definition_shape( 
                             toleranced_shape_aspect );
      id                 : identifier := get_id_value( SELF );
    INVERSE
      auxiliary_classification : SET [0 : ?] OF geometric_tolerance_auxiliary_classification FOR 
                                    described_item -- defined in ENTITY: geometric_tolerance_auxiliary_classification;
      tolerance_relationship : SET [0 : ?] OF geometric_tolerance_relationship FOR 
                                    relating_geometric_tolerance -- defined in ENTITY: geometric_tolerance_relationship;
    UNIQUE
      ur1 : id, controlling_shape;
    WHERE
      wr1: ( magnitude\measure_with_unit.value_component >= 0 );
      wr2: EXISTS( controlling_shape );
      wr3: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP' IN TYPEOF( 
               toleranced_shape_aspect ) ) ) OR ( toleranced_shape_aspect\shape_aspect_relationship.
               relating_shape_aspect.of_shape :=: toleranced_shape_aspect\shape_aspect_relationship.
               related_shape_aspect.of_shape ) );
      wr4: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
      wr5: ( SIZEOF( QUERY ( tr <* tolerance_relationship | ( tr.name = 'composite tolerance' ) ) ) <= 1 );
  END_ENTITY; -- geometric_tolerance (line:16908 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	geometric_tolerance
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  magnitude,	TYPE: OPTIONAL length_measure_with_unit -- EXPLICIT

    ATTR:  toleranced_shape_aspect,	TYPE: geometric_tolerance_target -- EXPLICIT

    ATTR:  controlling_shape,	TYPE: product_definition_shape -- DERIVED
      := sts_get_product_definition_shape( toleranced_shape_aspect )

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  auxiliary_classification,	TYPE: SET [0 : ?] OF geometric_tolerance_auxiliary_classification -- INVERSE
      FOR described_item;

    ATTR:  tolerance_relationship,	TYPE: SET [0 : ?] OF geometric_tolerance_relationship -- INVERSE
      FOR relating_geometric_tolerance;


  SUB- ENTITY(2)	cylindricity_tolerance
    (no local attributes)

  SUB- ENTITY(3)	flatness_tolerance
    (no local attributes)

  SUB- ENTITY(4)	surface_profile_tolerance
    (no local attributes)

  SUB- ENTITY(5)	modified_geometric_tolerance
    ATTR:  modifier,	TYPE: limit_condition -- EXPLICIT


  SUB- ENTITY(6)	angularity_tolerance
    (no local attributes)

  SUB- ENTITY(7)	symmetry_tolerance
    (no local attributes)

  SUB- ENTITY(8)	coaxiality_tolerance
    (no local attributes)

  SUB- ENTITY(9)	concentricity_tolerance
    (no local attributes)

  SUB- ENTITY(10)	perpendicularity_tolerance
    (no local attributes)

  SUB- ENTITY(11)	circular_runout_tolerance
    (no local attributes)

  SUB- ENTITY(12)	parallelism_tolerance
    (no local attributes)

  SUB- ENTITY(13)	total_runout_tolerance
    (no local attributes)

  SUB- ENTITY(14)	geometric_tolerance_with_datum_reference
    ATTR:  datum_system,	TYPE: SET [1 : ?] OF datum_system_or_reference -- EXPLICIT


  SUB- ENTITY(15)	geometric_tolerance_with_defined_area_unit
    ATTR:  area_type,	TYPE: area_unit_type -- EXPLICIT

    ATTR:  second_unit_size,	TYPE: OPTIONAL length_or_plane_angle_measure_with_unit_select -- EXPLICIT


  SUB- ENTITY(16)	geometric_tolerance_with_defined_unit
    ATTR:  unit_size,	TYPE: length_or_plane_angle_measure_with_unit_select -- EXPLICIT


  SUB- ENTITY(17)	geometric_tolerance_with_maximum_tolerance
    ATTR:  maximum_upper_tolerance,	TYPE: length_measure_with_unit -- EXPLICIT


  SUB- ENTITY(18)	geometric_tolerance_with_modifiers
    ATTR:  modifiers,	TYPE: SET [1 : ?] OF geometric_tolerance_modifier -- EXPLICIT


  SUB- ENTITY(19)	unequally_disposed_geometric_tolerance
    ATTR:  displacement,	TYPE: length_measure_with_unit -- EXPLICIT


  SUB- ENTITY(20)	line_profile_tolerance
    (no local attributes)

  SUB- ENTITY(21)	position_tolerance
    (no local attributes)

  SUB- ENTITY(22)	roundness_tolerance
    (no local attributes)

  SUB- ENTITY(23)	straightness_tolerance
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _geometric_tolerance : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGEOMETRIC_TOLERANCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _magnitude: eLENGTH_MEASURE_WITH_UNIT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _toleranced_shape_aspect: sGEOMETRIC_TOLERANCE_TARGET // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _controlling_shape__getter(SELF: eGEOMETRIC_TOLERANCE) -> ePRODUCT_DEFINITION_SHAPE?  {

      let _TEMP1 = STS_GET_PRODUCT_DEFINITION_SHAPE(SELF.TOLERANCED_SHAPE_ASPECT)
      return _TEMP1
    }

    /// DERIVE ATTRIBUTE
    internal func _id__getter(SELF: eGEOMETRIC_TOLERANCE) -> tIDENTIFIER?  {

      let _TEMP1 = GET_ID_VALUE(sID_ATTRIBUTE_SELECT(/*eGEOMETRIC_TOLERANCE*/SELF))
      return _TEMP1
    }

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _geometric_tolerance_auxiliary_classification ._described_item
    internal var _auxiliary_classification: SDAI.SET<eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION> {
      return __auxiliary_classification.map{ $0.reference }
    }
    private var __auxiliary_classification = SDAI.SET<
      SDAI.UnownedWrap<eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>>(bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), 
      bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _auxiliary_classification__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION.self) else { return }
      self.__auxiliary_classification.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _auxiliary_classification__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION.self) else { return }
      let success = self.__auxiliary_classification.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _auxiliary_classification__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION.self) else { return }
      let success = self.__auxiliary_classification.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _geometric_tolerance_relationship ._relating_geometric_tolerance
    internal var _tolerance_relationship: SDAI.SET<eGEOMETRIC_TOLERANCE_RELATIONSHIP> {
      return __tolerance_relationship.map{ $0.reference }
    }
    private var __tolerance_relationship = SDAI.SET<SDAI.UnownedWrap<eGEOMETRIC_TOLERANCE_RELATIONSHIP>>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(0)), bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _tolerance_relationship__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eGEOMETRIC_TOLERANCE_RELATIONSHIP.self) else { return }
      self.__tolerance_relationship.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _tolerance_relationship__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eGEOMETRIC_TOLERANCE_RELATIONSHIP.self) else { return }
      let success = self.__tolerance_relationship.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _tolerance_relationship__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eGEOMETRIC_TOLERANCE_RELATIONSHIP.self) else { return }
      let success = self.__tolerance_relationship.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sID_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SOURCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sGPS_FILTRATION_SPECIFICATION_TARGET.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_ASSIGNED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SATISFACTION_ITEM.typeName)) // -> sREQUIREMENT_ASSIGNED_ITEM
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sREQUIREMENT_ASSIGNED_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sREQUIREMENT_ASSIGNED_ITEM
      members.insert(SDAI.STRING(sDERIVED_PROPERTY_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTERIZED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTERIZED_DEFINITION.typeName)) // -> sCHARACTERIZED_ITEM
      members.insert(SDAI.STRING(sTOLERANCE_ZONE_TARGET.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._magnitude?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._toleranced_shape_aspect.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._magnitude?.value.isValueEqualOptionally(to: rhs._magnitude?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._toleranced_shape_aspect.value.isValueEqualOptionally(to: rhs._toleranced_shape_aspect.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._magnitude?.value.isValueEqualOptionally(to: rhs._magnitude?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._toleranced_shape_aspect.value.isValueEqualOptionally(to: rhs._toleranced_shape_aspect.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eGEOMETRIC_TOLERANCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.MAGNITUDE?.GROUP_REF(eMEASURE_WITH_UNIT.self)
      let _TEMP2 = _TEMP1?.VALUE_COMPONENT
      let _TEMP3 = _TEMP2 >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eGEOMETRIC_TOLERANCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.CONTROLLING_SHAPE)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP1)
    }
    public static func WHERE_wr3(SELF: eGEOMETRIC_TOLERANCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.TOLERANCED_SHAPE_ASPECT, IS: eSHAPE_ASPECT_RELATIONSHIP.self)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SELF.TOLERANCED_SHAPE_ASPECT.GROUP_REF(eSHAPE_ASPECT_RELATIONSHIP.self)
      let _TEMP4 = _TEMP3?.RELATING_SHAPE_ASPECT
      let _TEMP5 = _TEMP4?.OF_SHAPE
      let _TEMP6 = SELF.TOLERANCED_SHAPE_ASPECT.GROUP_REF(eSHAPE_ASPECT_RELATIONSHIP.self)
      let _TEMP7 = _TEMP6?.RELATED_SHAPE_ASPECT
      let _TEMP8 = _TEMP7?.OF_SHAPE
      let _TEMP9 = _TEMP5 .===. _TEMP8
      let _TEMP10 = _TEMP2 || _TEMP9
      return _TEMP10
    }
    public static func WHERE_wr4(SELF: eGEOMETRIC_TOLERANCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eID_ATTRIBUTE
        .IDENTIFIED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }
    public static func WHERE_wr5(SELF: eGEOMETRIC_TOLERANCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.TOLERANCE_RELATIONSHIP
        .QUERY{ TR in 

          let _TEMP1 = TR.NAME
          let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("composite tolerance"))
          return _TEMP2 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eGEOMETRIC_TOLERANCE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      guard let attr1 = SELF.ID else { return nil }
      attributes.append( AnyHashable(attr1) )
      guard let attr2 = SELF.CONTROLLING_SHAPE else { return nil }
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , MAGNITUDE: eLENGTH_MEASURE_WITH_UNIT? , 
                TOLERANCED_SHAPE_ASPECT: sGEOMETRIC_TOLERANCE_TARGET) {
      self._name = NAME
      self._description = DESCRIPTION
      self._magnitude = MAGNITUDE
      self._toleranced_shape_aspect = TOLERANCED_SHAPE_ASPECT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOptionalParameter(as: eLENGTH_MEASURE_WITH_UNIT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        sGEOMETRIC_TOLERANCE_TARGET.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, MAGNITUDE: p2, TOLERANCED_SHAPE_ASPECT: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY geometric_tolerance
    ABSTRACT SUPERTYPE OF ( 
        geometric_tolerance_with_datum_reference 
        ANDOR
        geometric_tolerance_with_defined_unit 
        ANDOR
        ONEOF ( 
            geometric_tolerance_with_modifiers, 
            modified_geometric_tolerance ) 
        ANDOR
        unequally_disposed_geometric_tolerance 
        ANDOR
        ONEOF ( 
            cylindricity_tolerance, 
            flatness_tolerance, 
            line_profile_tolerance, 
            position_tolerance, 
            roundness_tolerance, 
            straightness_tolerance, 
            surface_profile_tolerance ) );
      name                     : label;
      description              : OPTIONAL text;
      magnitude                : OPTIONAL length_measure_with_unit;
      toleranced_shape_aspect  : geometric_tolerance_target;
    DERIVE
      controlling_shape  : product_definition_shape := sts_get_product_definition_shape( 
                             toleranced_shape_aspect );
      id                 : identifier := get_id_value( SELF );
    INVERSE
      auxiliary_classification : SET [0 : ?] OF geometric_tolerance_auxiliary_classification FOR 
                                    described_item -- defined in ENTITY: geometric_tolerance_auxiliary_classification;
      tolerance_relationship : SET [0 : ?] OF geometric_tolerance_relationship FOR 
                                    relating_geometric_tolerance -- defined in ENTITY: geometric_tolerance_relationship;
    UNIQUE
      ur1 : id, controlling_shape;
    WHERE
      wr1: ( magnitude\measure_with_unit.value_component >= 0 );
      wr2: EXISTS( controlling_shape );
      wr3: ( ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP' IN TYPEOF( 
               toleranced_shape_aspect ) ) ) OR ( toleranced_shape_aspect\shape_aspect_relationship.
               relating_shape_aspect.of_shape :=: toleranced_shape_aspect\shape_aspect_relationship.
               related_shape_aspect.of_shape ) );
      wr4: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
      wr5: ( SIZEOF( QUERY ( tr <* tolerance_relationship | ( tr.name = 'composite tolerance' ) ) ) <= 1 );
  END_ENTITY; -- geometric_tolerance (line:16908 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGEOMETRIC_TOLERANCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _geometric_tolerance.self
    }
    public let partialEntity: _geometric_tolerance

    //MARK: SUPERTYPES
    public var super_eGEOMETRIC_TOLERANCE: eGEOMETRIC_TOLERANCE { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eCYLINDRICITY_TOLERANCE: eCYLINDRICITY_TOLERANCE? {	// [2]
      return self.complexEntity.entityReference(eCYLINDRICITY_TOLERANCE.self)
    }

    public var sub_eFLATNESS_TOLERANCE: eFLATNESS_TOLERANCE? {	// [3]
      return self.complexEntity.entityReference(eFLATNESS_TOLERANCE.self)
    }

    public var sub_eSURFACE_PROFILE_TOLERANCE: eSURFACE_PROFILE_TOLERANCE? {	// [4]
      return self.complexEntity.entityReference(eSURFACE_PROFILE_TOLERANCE.self)
    }

    public var sub_eMODIFIED_GEOMETRIC_TOLERANCE: eMODIFIED_GEOMETRIC_TOLERANCE? {	// [5]
      return self.complexEntity.entityReference(eMODIFIED_GEOMETRIC_TOLERANCE.self)
    }

    public var sub_eANGULARITY_TOLERANCE: eANGULARITY_TOLERANCE? {	// [6]
      return self.complexEntity.entityReference(eANGULARITY_TOLERANCE.self)
    }

    public var sub_eSYMMETRY_TOLERANCE: eSYMMETRY_TOLERANCE? {	// [7]
      return self.complexEntity.entityReference(eSYMMETRY_TOLERANCE.self)
    }

    public var sub_eCOAXIALITY_TOLERANCE: eCOAXIALITY_TOLERANCE? {	// [8]
      return self.complexEntity.entityReference(eCOAXIALITY_TOLERANCE.self)
    }

    public var sub_eCONCENTRICITY_TOLERANCE: eCONCENTRICITY_TOLERANCE? {	// [9]
      return self.complexEntity.entityReference(eCONCENTRICITY_TOLERANCE.self)
    }

    public var sub_ePERPENDICULARITY_TOLERANCE: ePERPENDICULARITY_TOLERANCE? {	// [10]
      return self.complexEntity.entityReference(ePERPENDICULARITY_TOLERANCE.self)
    }

    public var sub_eCIRCULAR_RUNOUT_TOLERANCE: eCIRCULAR_RUNOUT_TOLERANCE? {	// [11]
      return self.complexEntity.entityReference(eCIRCULAR_RUNOUT_TOLERANCE.self)
    }

    public var sub_ePARALLELISM_TOLERANCE: ePARALLELISM_TOLERANCE? {	// [12]
      return self.complexEntity.entityReference(ePARALLELISM_TOLERANCE.self)
    }

    public var sub_eTOTAL_RUNOUT_TOLERANCE: eTOTAL_RUNOUT_TOLERANCE? {	// [13]
      return self.complexEntity.entityReference(eTOTAL_RUNOUT_TOLERANCE.self)
    }

    public var sub_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE: eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE? {	// [14]
      return self.complexEntity.entityReference(eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE.self)
    }

    public var sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT: eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT? {	// [15]
      return self.complexEntity.entityReference(eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT.self)
    }

    public var sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT: eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT? {	// [16]
      return self.complexEntity.entityReference(eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT.self)
    }

    public var sub_eGEOMETRIC_TOLERANCE_WITH_MAXIMUM_TOLERANCE: eGEOMETRIC_TOLERANCE_WITH_MAXIMUM_TOLERANCE? {	// [17]
      return self.complexEntity.entityReference(eGEOMETRIC_TOLERANCE_WITH_MAXIMUM_TOLERANCE.self)
    }

    public var sub_eGEOMETRIC_TOLERANCE_WITH_MODIFIERS: eGEOMETRIC_TOLERANCE_WITH_MODIFIERS? {	// [18]
      return self.complexEntity.entityReference(eGEOMETRIC_TOLERANCE_WITH_MODIFIERS.self)
    }

    public var sub_eUNEQUALLY_DISPOSED_GEOMETRIC_TOLERANCE: eUNEQUALLY_DISPOSED_GEOMETRIC_TOLERANCE? {	// [19]
      return self.complexEntity.entityReference(eUNEQUALLY_DISPOSED_GEOMETRIC_TOLERANCE.self)
    }

    public var sub_eLINE_PROFILE_TOLERANCE: eLINE_PROFILE_TOLERANCE? {	// [20]
      return self.complexEntity.entityReference(eLINE_PROFILE_TOLERANCE.self)
    }

    public var sub_ePOSITION_TOLERANCE: ePOSITION_TOLERANCE? {	// [21]
      return self.complexEntity.entityReference(ePOSITION_TOLERANCE.self)
    }

    public var sub_eROUNDNESS_TOLERANCE: eROUNDNESS_TOLERANCE? {	// [22]
      return self.complexEntity.entityReference(eROUNDNESS_TOLERANCE.self)
    }

    public var sub_eSTRAIGHTNESS_TOLERANCE: eSTRAIGHTNESS_TOLERANCE? {	// [23]
      return self.complexEntity.entityReference(eSTRAIGHTNESS_TOLERANCE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEOMETRIC_TOLERANCE_WITH_MAXIMUM_TOLERANCE`` )
    public var MAXIMUM_UPPER_TOLERANCE: eLENGTH_MEASURE_WITH_UNIT?  {
      get {
        return sub_eGEOMETRIC_TOLERANCE_WITH_MAXIMUM_TOLERANCE?.partialEntity._maximum_upper_tolerance
      }
      set(newValue) {
        guard let partial = sub_eGEOMETRIC_TOLERANCE_WITH_MAXIMUM_TOLERANCE?.super_eGEOMETRIC_TOLERANCE_WITH_MAXIMUM_TOLERANCE
          .partialEntity else { return }
        partial._maximum_upper_tolerance = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing eGEOMETRIC_TOLERANCE_RELATIONSHIP .RELATING_GEOMETRIC_TOLERANCE
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCE_RELATIONSHIP: SDAI.SET<eGEOMETRIC_TOLERANCE_RELATIONSHIP>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._tolerance_relationship )
      }
    }

    /// __INVERSE__ attribute
    /// observing eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION .DESCRIBED_ITEM
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var AUXILIARY_CLASSIFICATION: SDAI.SET<eGEOMETRIC_TOLERANCE_AUXILIARY_CLASSIFICATION>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._auxiliary_classification )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eUNEQUALLY_DISPOSED_GEOMETRIC_TOLERANCE`` )
    public var DISPLACEMENT: eLENGTH_MEASURE_WITH_UNIT?  {
      get {
        return sub_eUNEQUALLY_DISPOSED_GEOMETRIC_TOLERANCE?.partialEntity._displacement
      }
      set(newValue) {
        guard let partial = sub_eUNEQUALLY_DISPOSED_GEOMETRIC_TOLERANCE?.super_eUNEQUALLY_DISPOSED_GEOMETRIC_TOLERANCE
          .partialEntity else { return }
        partial._displacement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eMODIFIED_GEOMETRIC_TOLERANCE`` )
    public var MODIFIER: nLIMIT_CONDITION?  {
      get {
        return sub_eMODIFIED_GEOMETRIC_TOLERANCE?.partialEntity._modifier
      }
      set(newValue) {
        guard let partial = sub_eMODIFIED_GEOMETRIC_TOLERANCE?.super_eMODIFIED_GEOMETRIC_TOLERANCE
          .partialEntity else { return }
        partial._modifier = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE`` )
    public var DATUM_SYSTEM: (SDAI.SET<sDATUM_SYSTEM_OR_REFERENCE>/*[1:nil]*/ )?  {
      get {
        return sub_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE?.partialEntity._datum_system
      }
      set(newValue) {
        guard let partial = sub_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE?.super_eGEOMETRIC_TOLERANCE_WITH_DATUM_REFERENCE
          .partialEntity else { return }
        partial._datum_system = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT`` )
    public var UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  {
      get {
        return sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT?.partialEntity._unit_size
      }
      set(newValue) {
        guard let partial = sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT?.super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_UNIT
          .partialEntity else { return }
        partial._unit_size = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEOMETRIC_TOLERANCE_WITH_MODIFIERS`` )
    public var MODIFIERS: (SDAI.SET<nGEOMETRIC_TOLERANCE_MODIFIER>/*[1:nil]*/ )?  {
      get {
        return sub_eGEOMETRIC_TOLERANCE_WITH_MODIFIERS?.partialEntity._modifiers
      }
      set(newValue) {
        guard let partial = sub_eGEOMETRIC_TOLERANCE_WITH_MODIFIERS?.super_eGEOMETRIC_TOLERANCE_WITH_MODIFIERS
          .partialEntity else { return }
        partial._modifiers = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var MAGNITUDE: eLENGTH_MEASURE_WITH_UNIT?  {
      get {
        return self.partialEntity._magnitude
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._magnitude = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = self
        let value = origin.partialEntity._id__getter(SELF: origin)
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT`` )
    public var AREA_TYPE: nAREA_UNIT_TYPE?  {
      get {
        return sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?.partialEntity._area_type
      }
      set(newValue) {
        guard let partial = sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?.super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT
          .partialEntity else { return }
        partial._area_type = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var CONTROLLING_SHAPE: ePRODUCT_DEFINITION_SHAPE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"CONTROLLING_SHAPE") {
          return cached.value as! ePRODUCT_DEFINITION_SHAPE? 
        }
        let origin = self
        let value = origin.partialEntity._controlling_shape__getter(SELF: origin)
        updateCache(derivedAttributeName:"CONTROLLING_SHAPE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT`` )
    public var SECOND_UNIT_SIZE: sLENGTH_OR_PLANE_ANGLE_MEASURE_WITH_UNIT_SELECT?  {
      get {
        return sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?.partialEntity._second_unit_size
      }
      set(newValue) {
        guard let partial = sub_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT?.super_eGEOMETRIC_TOLERANCE_WITH_DEFINED_AREA_UNIT
          .partialEntity else { return }
        partial._second_unit_size = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGEOMETRIC_TOLERANCE`` )
    public var TOLERANCED_SHAPE_ASPECT: sGEOMETRIC_TOLERANCE_TARGET {
      get {
        return SDAI.UNWRAP( self.partialEntity._toleranced_shape_aspect )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._toleranced_shape_aspect = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_geometric_tolerance.self) else { return nil }
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
    public convenience init?(_ partial:_geometric_tolerance) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _geometric_tolerance.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _geometric_tolerance.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _geometric_tolerance.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _geometric_tolerance.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _geometric_tolerance.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GEOMETRIC_TOLERANCE", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGEOMETRIC_TOLERANCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "MAXIMUM_UPPER_TOLERANCE", keyPath: \eGEOMETRIC_TOLERANCE.MAXIMUM_UPPER_TOLERANCE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGEOMETRIC_TOLERANCE.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TOLERANCE_RELATIONSHIP", keyPath: \eGEOMETRIC_TOLERANCE.TOLERANCE_RELATIONSHIP, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AUXILIARY_CLASSIFICATION", keyPath: \eGEOMETRIC_TOLERANCE.AUXILIARY_CLASSIFICATION, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DISPLACEMENT", keyPath: \eGEOMETRIC_TOLERANCE.DISPLACEMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MODIFIER", keyPath: \eGEOMETRIC_TOLERANCE.MODIFIER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DATUM_SYSTEM", keyPath: \eGEOMETRIC_TOLERANCE.DATUM_SYSTEM, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UNIT_SIZE", keyPath: \eGEOMETRIC_TOLERANCE.UNIT_SIZE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MODIFIERS", keyPath: \eGEOMETRIC_TOLERANCE.MODIFIERS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MAGNITUDE", keyPath: \eGEOMETRIC_TOLERANCE.MAGNITUDE, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eGEOMETRIC_TOLERANCE.ID, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "AREA_TYPE", keyPath: \eGEOMETRIC_TOLERANCE.AREA_TYPE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTROLLING_SHAPE", keyPath: \eGEOMETRIC_TOLERANCE.CONTROLLING_SHAPE, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SECOND_UNIT_SIZE", keyPath: \eGEOMETRIC_TOLERANCE.SECOND_UNIT_SIZE, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eGEOMETRIC_TOLERANCE.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TOLERANCED_SHAPE_ASPECT", keyPath: \eGEOMETRIC_TOLERANCE.TOLERANCED_SHAPE_ASPECT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _geometric_tolerance.UNIQUE_ur1)

      return entityDef
    }

  }
}

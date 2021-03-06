/* file: a3m_equivalence_inspection_requirement_with_values.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY a3m_equivalence_inspection_requirement_with_values
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( data_equivalence_inspection_requirement );
      applied_values  : SET [1 : ?] OF measure_representation_item;
  END_ENTITY; -- a3m_equivalence_inspection_requirement_with_values (line:6183 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_equivalence_inspection_requirement
    (no local attributes)

  ENTITY(SELF)	a3m_equivalence_inspection_requirement_with_values
    ATTR:  applied_values,	TYPE: SET [1 : ?] OF measure_representation_item -- EXPLICIT


  SUB- ENTITY(4)	different_curve_length
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_edge_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_length_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_length_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_length_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(5)	different_volume
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_manifold_solid_brep]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_volume_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_volume_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_volume_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(6)	mismatch_of_arcwise_connected_surfaces_boundary
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: comparing_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_face_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_face_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_length_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_cartesian_point, ddns_point_on_curve]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_length_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(7)	different_surface_area
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_face_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_area_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_area_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_area_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(8)	different_centroid
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [3 : 3] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_manifold_solid_brep, etns_shell_based_surface_model, etns_shell_based_wireframe_model]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_length_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_cartesian_point]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_length_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(9)	different_bounding_box
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [3 : 3] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_manifold_solid_brep, etns_shell_based_surface_model, etns_shell_based_wireframe_model]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_length_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [1 : 1] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_two_cartesian_points]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [0 : 0] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := []
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(10)	mismatch_of_arcwise_connected_surfaces
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: comparing_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_face_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_face_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_length_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_cartesian_point, ddns_point_on_surface]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_length_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(11)	different_surface_normal
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: comparing_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_face_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_face_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_plane_angle_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_cartesian_point, ddns_point_on_surface]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_plane_angle_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


  SUB- ENTITY(12)	mismatch_of_arcwise_connected_curves
    REDCR: assessment_specification,	TYPE: a3m_equivalence_assessment_by_numerical_test -- EXPLICIT
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: comparing_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_edge_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: compared_element_types,	TYPE: LIST [1 : 1] OF a3ms_element_type_name -- DERIVED (DYNAMIC)
      := [etns_connected_edge_set]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: measured_data_type,	TYPE: a3ms_measured_data_type_name -- DERIVED (DYNAMIC)
      := mdns_length_measure
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: detected_difference_types,	TYPE: LIST [2 : 2] OF a3ms_detected_difference_type_name -- DERIVED (DYNAMIC)
      := [ddns_cartesian_point, ddns_point_on_curve]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion

    REDCR: accuracy_types,	TYPE: LIST [1 : 1] OF a3ms_accuracy_type_name -- DERIVED (DYNAMIC)
      := [atns_length_measure]
      -- OVERRIDING ENTITY: a3m_equivalence_criterion


*/


//MARK: - Partial Entity
  public final class _a3m_equivalence_inspection_requirement_with_values : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _applied_values: SDAI.SET<eMEASURE_REPRESENTATION_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._applied_values.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._applied_values.value.isValueEqualOptionally(to: rhs._applied_values.value, visited: &comppairs)	{
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
      if let comp = self._applied_values.value.isValueEqualOptionally(to: rhs._applied_values.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(APPLIED_VALUES: SDAI.SET<eMEASURE_REPRESENTATION_ITEM>/*[1:nil]*/ ) {
      self._applied_values = APPLIED_VALUES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        eMEASURE_REPRESENTATION_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( APPLIED_VALUES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY a3m_equivalence_inspection_requirement_with_values
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( data_equivalence_inspection_requirement );
      applied_values  : SET [1 : ?] OF measure_representation_item;
  END_ENTITY; -- a3m_equivalence_inspection_requirement_with_values (line:6183 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _a3m_equivalence_inspection_requirement_with_values.self
    }
    public let partialEntity: _a3m_equivalence_inspection_requirement_with_values

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT: eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT 	// [2]
    public var super_eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES: eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eDIFFERENT_CURVE_LENGTH: eDIFFERENT_CURVE_LENGTH? {	// [4]
      return self.complexEntity.entityReference(eDIFFERENT_CURVE_LENGTH.self)
    }

    public var sub_eDIFFERENT_VOLUME: eDIFFERENT_VOLUME? {	// [5]
      return self.complexEntity.entityReference(eDIFFERENT_VOLUME.self)
    }

    public var sub_eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES_BOUNDARY: eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES_BOUNDARY? {	// [6]
      return self.complexEntity.entityReference(eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES_BOUNDARY.self)
    }

    public var sub_eDIFFERENT_SURFACE_AREA: eDIFFERENT_SURFACE_AREA? {	// [7]
      return self.complexEntity.entityReference(eDIFFERENT_SURFACE_AREA.self)
    }

    public var sub_eDIFFERENT_CENTROID: eDIFFERENT_CENTROID? {	// [8]
      return self.complexEntity.entityReference(eDIFFERENT_CENTROID.self)
    }

    public var sub_eDIFFERENT_BOUNDING_BOX: eDIFFERENT_BOUNDING_BOX? {	// [9]
      return self.complexEntity.entityReference(eDIFFERENT_BOUNDING_BOX.self)
    }

    public var sub_eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES: eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES? {	// [10]
      return self.complexEntity.entityReference(eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES.self)
    }

    public var sub_eDIFFERENT_SURFACE_NORMAL: eDIFFERENT_SURFACE_NORMAL? {	// [11]
      return self.complexEntity.entityReference(eDIFFERENT_SURFACE_NORMAL.self)
    }

    public var sub_eMISMATCH_OF_ARCWISE_CONNECTED_CURVES: eMISMATCH_OF_ARCWISE_CONNECTED_CURVES? {	// [12]
      return self.complexEntity.entityReference(eMISMATCH_OF_ARCWISE_CONNECTED_CURVES.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eDIFFERENT_CURVE_LENGTH`` )
    public var ACCURACY_TYPES: (SDAI.LIST<nA3MS_ACCURACY_TYPE_NAME>/*[1:1]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ACCURACY_TYPES") {
          return cached.value as! (SDAI.LIST<nA3MS_ACCURACY_TYPE_NAME>/*[1:1]*/ )? 
        }
        guard let origin = sub_eDIFFERENT_CURVE_LENGTH else { return nil }
        let value = SDAI.LIST<nA3MS_ACCURACY_TYPE_NAME>(
          origin.partialEntity._accuracy_types__getter(SELF: origin))
        updateCache(derivedAttributeName:"ACCURACY_TYPES", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eDIFFERENT_CURVE_LENGTH`` )
    public var DETECTED_DIFFERENCE_TYPES: (SDAI.LIST<nA3MS_DETECTED_DIFFERENCE_TYPE_NAME>/*[1:1]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DETECTED_DIFFERENCE_TYPES") {
          return cached.value as! (SDAI.LIST<nA3MS_DETECTED_DIFFERENCE_TYPE_NAME>/*[1:1]*/ )? 
        }
        guard let origin = sub_eDIFFERENT_CURVE_LENGTH else { return nil }
        let value = SDAI.LIST<nA3MS_DETECTED_DIFFERENCE_TYPE_NAME>(
          origin.partialEntity._detected_difference_types__getter(SELF: origin))
        updateCache(derivedAttributeName:"DETECTED_DIFFERENCE_TYPES", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eDIFFERENT_CURVE_LENGTH`` )
    public var COMPARED_ELEMENT_TYPES: (SDAI.LIST<nA3MS_ELEMENT_TYPE_NAME>/*[1:1]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COMPARED_ELEMENT_TYPES") {
          return cached.value as! (SDAI.LIST<nA3MS_ELEMENT_TYPE_NAME>/*[1:1]*/ )? 
        }
        guard let origin = sub_eDIFFERENT_CURVE_LENGTH else { return nil }
        let value = SDAI.LIST<nA3MS_ELEMENT_TYPE_NAME>(
          origin.partialEntity._compared_element_types__getter(SELF: origin))
        updateCache(derivedAttributeName:"COMPARED_ELEMENT_TYPES", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eDIFFERENT_CURVE_LENGTH`` )
    public var MEASURED_DATA_TYPE: nA3MS_MEASURED_DATA_TYPE_NAME?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"MEASURED_DATA_TYPE") {
          return cached.value as! nA3MS_MEASURED_DATA_TYPE_NAME? 
        }
        guard let origin = sub_eDIFFERENT_CURVE_LENGTH else { return nil }
        let value = nA3MS_MEASURED_DATA_TYPE_NAME(
          origin.partialEntity._measured_data_type__getter(SELF: origin))
        updateCache(derivedAttributeName:"MEASURED_DATA_TYPE", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUB( ``eDIFFERENT_CURVE_LENGTH`` )
    public var ASSESSMENT_SPECIFICATION: eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST?  {
      get {
        return eA3M_EQUIVALENCE_ASSESSMENT_BY_NUMERICAL_TEST( sub_eDIFFERENT_CURVE_LENGTH?.super_eA3M_EQUIVALENCE_CRITERION
          .partialEntity._assessment_specification )
      }
      set(newValue) {
        guard let partial = sub_eDIFFERENT_CURVE_LENGTH?.super_eA3M_EQUIVALENCE_CRITERION.partialEntity
          else { return }
        partial._assessment_specification = SDAI.UNWRAP(
          sA3M_EQUIVALENCE_ASSESSMENT_SPECIFICATION_SELECT(newValue))
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

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES_BOUNDARY`` )
    public var COMPARING_ELEMENT_TYPES: (SDAI.LIST<nA3MS_ELEMENT_TYPE_NAME>/*[1:1]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COMPARING_ELEMENT_TYPES") {
          return cached.value as! (SDAI.LIST<nA3MS_ELEMENT_TYPE_NAME>/*[1:1]*/ )? 
        }
        guard let origin = sub_eMISMATCH_OF_ARCWISE_CONNECTED_SURFACES_BOUNDARY else { return nil }
        let value = SDAI.LIST<nA3MS_ELEMENT_TYPE_NAME>(
          origin.partialEntity._comparing_element_types__getter(SELF: origin))
        updateCache(derivedAttributeName:"COMPARING_ELEMENT_TYPES", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES`` )
    public var APPLIED_VALUES: SDAI.SET<eMEASURE_REPRESENTATION_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._applied_values )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._applied_values = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_a3m_equivalence_inspection_requirement_with_values.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT = super2

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "A3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_REQUIREMENT.self)
      entityDef.add(supertype: eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ACCURACY_TYPES", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.ACCURACY_TYPES, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DETECTED_DIFFERENCE_TYPES", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.DETECTED_DIFFERENCE_TYPES, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COMPARED_ELEMENT_TYPES", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.COMPARED_ELEMENT_TYPES, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MEASURED_DATA_TYPE", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.MEASURED_DATA_TYPE, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSESSMENT_SPECIFICATION", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.ASSESSMENT_SPECIFICATION, 
        kind: .explicitRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COMPARING_ELEMENT_TYPES", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.COMPARING_ELEMENT_TYPES, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "APPLIED_VALUES", keyPath: \eA3M_EQUIVALENCE_INSPECTION_REQUIREMENT_WITH_VALUES.APPLIED_VALUES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

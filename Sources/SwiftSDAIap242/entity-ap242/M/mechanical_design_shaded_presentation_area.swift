/* file: mechanical_design_shaded_presentation_area.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY mechanical_design_shaded_presentation_area
    SUBTYPE OF ( presentation_area );
      SELF\representation.items  : SET [1 : ?] OF mechanical_design_shaded_presentation_area_items;
    WHERE
      wr1: ( SIZEOF( QUERY ( it1 <* SELF.items | ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'AXIS2_PLACEMENT'  IN TYPEOF( it1 ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it1 ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW'  IN TYPEOF( it1\
               mapped_item.mapping_source.mapped_representation ) ) ) ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( pv <* QUERY ( mi1 <* QUERY ( it1 <* SELF.items | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it1 ) ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW'  IN TYPEOF( mi1\
               mapped_item.mapping_source.mapped_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it2 <* pv\
               mapped_item.mapping_source.mapped_representation\representation.items | ( ( NOT ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT'  IN TYPEOF( it2 ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it2 ) ) AND ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_IMAGE_3D_WITH_SCALE'  IN TYPEOF( it2 ) ) ) 
               AND ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW' IN TYPEOF( it2
               \mapped_item.mapping_source.mapped_representation ) ) ) ) ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_IMAGE_3D_WITH_SCALE'  IN TYPEOF( it2 ) ) 
               AND ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MECHANICAL_DESIGN_SHADED_PRESENTATION_REPRESENTATION'  IN TYPEOF( it2\mapped_item.
               mapping_source.mapped_representation ) ) ) ) ) ) ) = 0 ) ) ) ) = 0 );
      wr3: ( ( SIZEOF( QUERY ( ps <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRESENTATION_SIZE.UNIT'  ) | ( NOT ( ( ps\presentation_size.size.size_in_x > 0 ) AND ( ps\
               presentation_size.size.size_in_y > 0 ) ) ) ) ) = 0 ) AND ( SIZEOF( QUERY ( pset <* 
               QUERY ( ais <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_IN_SET.AREA' )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_SET' IN TYPEOF( ais.in_set ) ) )
               | ( SIZEOF( QUERY ( ps <* USEDIN( pset, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRESENTATION_SIZE.UNIT'  ) | ( NOT ( ( ps\presentation_size.size.size_in_x > 0 ) AND ( ps\
               presentation_size.size.size_in_y > 0 ) ) ) ) ) = 0 ) ) ) = 0 ) );
      wr4: ( ( SIZEOF( QUERY ( psize <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRESENTATION_SIZE.UNIT'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'AXIS2_PLACEMENT_2D'  IN TYPEOF( psize.size.placement ) ) ) ) = 1 ) AND ( SIZEOF( 
               QUERY ( pset <* QUERY ( ais <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'AREA_IN_SET.AREA'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_SET' 
               IN TYPEOF( ais.in_set ) ) ) | ( SIZEOF( QUERY ( psize <* USEDIN( pset, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_SIZE.UNIT'  ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_2D'  IN TYPEOF( psize.size.
               placement ) ) ) ) ) = 0 ) ) ) = 0 ) );
      wr5: ( SIZEOF( QUERY ( pv <* QUERY ( mi1 <* QUERY ( it1 <* SELF.items | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it1 ) ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW'  IN TYPEOF( mi1\
               mapped_item.mapping_source.mapped_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( ci <* pv\
               mapped_item.mapping_source.mapped_representation\representation.items | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_IMAGE_3D_WITH_SCALE'  IN TYPEOF( ci ) ) 
               AND ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3_WITH_HLHSR' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_WITH_LIGHT_SOURCES' ] * TYPEOF( 
               ci\mapped_item.mapping_source.mapping_origin ) ) = 1 ) ) ) ) = 0 ) ) ) ) = 0 );
  END_ENTITY; -- mechanical_design_shaded_presentation_area (line:20809 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  items,	TYPE: SET [1 : ?] OF representation_item -- EXPLICIT
      -- observed by
        ENTITY(1): hidden_element_over_riding_styled_item,	ATTR: container,	TYPE: SET [1 : ?] OF
          presentation_view
      -- possibly overriden by
          ENTITY: shape_representation_with_parameters,	TYPE: SET [1 : ?] OF shape_representation_with_parameters_items
      *** ENTITY: mechanical_design_shaded_presentation_area,	TYPE: SET [1 : ?] OF mechanical_design_shaded_presentation_area_items
          ENTITY: mechanical_design_shaded_presentation_representation,	TYPE: SET [1 : ?] OF mechanical_design_shaded_presentation_representation_items
          ENTITY: connected_edge_with_length_set_representation,	TYPE: SET [1 : ?] OF connected_edge_with_length_set_items
          ENTITY: mechanism_state_representation,	TYPE: SET [1 : ?] OF pair_value
          ENTITY: reinforcement_orientation_basis,	TYPE: SET [1 : 1] OF basis_11_direction_member
          ENTITY: externally_defined_representation,	TYPE: SET [1 : ?] OF externally_defined_representation_item
          ENTITY: kinematic_topology_network_structure,	TYPE: SET [1 : ?] OF kinematic_loop
          ENTITY: kinematic_topology_structure,	TYPE: SET [1 : ?] OF kinematic_joint
          ENTITY: single_area_csg_2d_shape_representation,	TYPE: SET [1 : ?] OF csg_2d_area_select
          ENTITY: draughting_model,	TYPE: SET [1 : ?] OF draughting_model_item_select
          ENTITY: shape_dimension_representation,	TYPE: SET [1 : ?] OF shape_dimension_representation_item
          ENTITY: point_placement_shape_representation,	TYPE: SET [1 : ?] OF point_placement_shape_representation_item
          ENTITY: link_motion_representation_along_path,	TYPE: SET [1 : ?] OF kinematic_path
          ENTITY: kinematic_topology_directed_structure,	TYPE: SET [1 : ?] OF oriented_joint
          ENTITY: scan_data_shape_representation,	TYPE: SET [1 : ?] OF scanned_data_item
          ENTITY: mechanical_design_geometric_presentation_area,	TYPE: SET [1 : ?] OF mechanical_design_geometric_presentation_area_items
          ENTITY: procedural_shape_representation,	TYPE: SET [1 : ?] OF procedural_shape_representation_sequence
          ENTITY: path_parameter_representation,	TYPE: SET [1 : ?] OF bounded_curve
          ENTITY: csg_2d_shape_representation,	TYPE: SET [1 : ?] OF csg_2d_shape_select
          ENTITY: ply_angle_representation,	TYPE: SET [1 : 1] OF measure_representation_item
          ENTITY: text_string_representation,	TYPE: SET [1 : ?] OF text_string_representation_item
          ENTITY: procedural_representation,	TYPE: SET [1 : ?] OF procedural_representation_sequence
          ENTITY: draughting_subfigure_representation,	TYPE: SET [1 : ?] OF draughting_subfigure_representation_item
          ENTITY: picture_representation,	TYPE: SET [2 : ?] OF picture_representation_item_select
          ENTITY: structured_text_representation,	TYPE: SET [1 : ?] OF string_representation_item_select
          ENTITY: interpolated_configuration_representation,	TYPE: SET [1 : ?] OF interpolated_configuration_sequence
          ENTITY: mechanical_design_presentation_representation_with_draughting,	TYPE: SET [1 : ?] OF camera_model_d3
          ENTITY: mechanism_representation,	TYPE: SET [1 : ?] OF pair_representation_relationship
          ENTITY: mechanical_design_geometric_presentation_representation,	TYPE: SET [1 : ?] OF mechanical_design_geometric_presentation_representation_items
          ENTITY: kinematic_link_representation,	TYPE: SET [1 : ?] OF kinematic_link_representation_items
          ENTITY: neutral_sketch_representation,	TYPE: SET [1 : ?] OF sketch_element_select
          ENTITY: draughting_symbol_representation,	TYPE: SET [1 : ?] OF draughting_symbol_representation_item

    ATTR:  context_of_items,	TYPE: representation_context -- EXPLICIT (DYNAMIC)
      -- observed by
        ENTITY(1): representation_context,	ATTR: representations_in_context,	TYPE: SET [1 : ?] OF
          representation
      -- possibly overriden by
          ENTITY: mechanism_state_representation,	TYPE: geometric_representation_context	(as DERIVED)
      *** ENTITY: presentation_representation,	TYPE: geometric_representation_context
          ENTITY: link_motion_representation_along_path,	TYPE: geometric_representation_context_with_parameter
          ENTITY: path_parameter_representation,	TYPE: path_parameter_representation_context
          ENTITY: analysis_model,	TYPE: analysis_representation_context
          ENTITY: interpolated_configuration_representation,	TYPE: geometric_representation_context_with_parameter
          ENTITY: mechanism_representation,	TYPE: geometric_representation_context
          ENTITY: kinematic_link_representation,	TYPE: geometric_representation_context

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  description,	TYPE: text -- DERIVED
      := get_description_value( SELF )


  SUPER- ENTITY(2)	presentation_representation
    REDCR: context_of_items,	TYPE: geometric_representation_context -- EXPLICIT
      -- OVERRIDING ENTITY: representation


  SUPER- ENTITY(3)	presentation_area
    (no local attributes)

  ENTITY(SELF)	mechanical_design_shaded_presentation_area
    REDCR: items,	TYPE: SET [1 : ?] OF mechanical_design_shaded_presentation_area_items -- EXPLICIT
      -- OVERRIDING ENTITY: representation


*/


//MARK: - Partial Entity
  public final class _mechanical_design_shaded_presentation_area : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA.self
    }

    //ATTRIBUTES
    /* override var _items: SDAI.SET<sMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA_ITEMS>[1:nil] 	//EXPLICIT REDEFINITION(eREPRESENTATION) */

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
    public static func WHERE_wr1(SELF: eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ITEMS
      let _TEMP2 = _TEMP1.QUERY{ IT1 in 

          let _TEMP1 = SDAI.TYPEOF(IT1, IS: sAXIS2_PLACEMENT.self)
          let _TEMP2 = SDAI.TYPEOF(IT1, IS: eMAPPED_ITEM.self)
          let _TEMP3 = SDAI.TYPEOF(IT1.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPED_REPRESENTATION, 
            IS: ePRESENTATION_VIEW.self)
          let _TEMP4 = _TEMP2 && _TEMP3
          let _TEMP5 = _TEMP1 || _TEMP4
          let _TEMP6 =  !_TEMP5
          return _TEMP6 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ITEMS
      let _TEMP2 = _TEMP1.QUERY{ IT1 in 

          let _TEMP1 = SDAI.TYPEOF(IT1, IS: eMAPPED_ITEM.self)
          return _TEMP1 }
      let _TEMP3 = _TEMP2.QUERY{ MI1 in 

          let _TEMP1 = SDAI.TYPEOF(MI1.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPED_REPRESENTATION, 
            IS: ePRESENTATION_VIEW.self)
          return _TEMP1 }
      let _TEMP4 = _TEMP3.QUERY{ PV in 

          let _TEMP1 = PV.GROUP_REF(eMAPPED_ITEM.self)
          let _TEMP2 = _TEMP1?.MAPPING_SOURCE
          let _TEMP3 = _TEMP2?.MAPPED_REPRESENTATION
          let _TEMP4 = _TEMP3?.GROUP_REF(eREPRESENTATION.self)
          let _TEMP5 = _TEMP4?.ITEMS
          let _TEMP6 = _TEMP5?.QUERY{ IT2 in 

              let _TEMP1 = SDAI.TYPEOF(IT2, IS: sAXIS2_PLACEMENT.self)
              let _TEMP2 = SDAI.TYPEOF(IT2, IS: eMAPPED_ITEM.self)
              let _TEMP3 = SDAI.TYPEOF(IT2, IS: eCAMERA_IMAGE_3D_WITH_SCALE.self)
              let _TEMP4 =  !_TEMP3
              let _TEMP5 = _TEMP2 && _TEMP4
              let _TEMP6 = SDAI.TYPEOF(IT2.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPED_REPRESENTATION, 
                IS: ePRESENTATION_VIEW.self)
              let _TEMP7 =  !_TEMP6
              let _TEMP8 = _TEMP5 && _TEMP7
              let _TEMP9 = _TEMP1 || _TEMP8
              let _TEMP10 =  !_TEMP9
              let _TEMP11 = SDAI.TYPEOF(IT2, IS: eCAMERA_IMAGE_3D_WITH_SCALE.self)
              let _TEMP12 = SDAI.TYPEOF(IT2.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPED_REPRESENTATION, 
                IS: eMECHANICAL_DESIGN_SHADED_PRESENTATION_REPRESENTATION.self)
              let _TEMP13 =  !_TEMP12
              let _TEMP14 = _TEMP11 && _TEMP13
              let _TEMP15 = _TEMP10 || _TEMP14
              return _TEMP15 }
          let _TEMP7 = SDAI.SIZEOF(_TEMP6)
          let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP9 =  !_TEMP8
          return _TEMP9 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr3(SELF: eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePRESENTATION_SIZE.UNIT)
      let _TEMP2 = _TEMP1?.QUERY{ PS in 

          let _TEMP1 = /*runtime*/PS.GROUP_REF(ePRESENTATION_SIZE.self)
          let _TEMP2 = /*runtime*/_TEMP1?.SIZE
          let _TEMP3 = /*runtime*/_TEMP2?.SIZE_IN_X
          let _TEMP4 = /*runtime*/_TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP5 = /*runtime*/PS.GROUP_REF(ePRESENTATION_SIZE.self)
          let _TEMP6 = /*runtime*/_TEMP5?.SIZE
          let _TEMP7 = /*runtime*/_TEMP6?.SIZE_IN_Y
          let _TEMP8 = /*runtime*/_TEMP7 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP9 = _TEMP4 && _TEMP8
          let _TEMP10 =  !_TEMP9
          return _TEMP10 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP5 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAREA_IN_SET
        .AREA)
      let _TEMP6 = _TEMP5?.QUERY{ AIS in 

          let _TEMP1 = SDAI.TYPEOF(AIS.IN_SET, IS: ePRESENTATION_SET.self)
          return _TEMP1 }
      let _TEMP7 = _TEMP6?.QUERY{ PSET in 

          let _TEMP1 = SDAI.USEDIN(T: PSET, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePRESENTATION_SIZE.UNIT)
          let _TEMP2 = _TEMP1?.QUERY{ PS in 

              let _TEMP1 = /*runtime*/PS.GROUP_REF(ePRESENTATION_SIZE.self)
              let _TEMP2 = /*runtime*/_TEMP1?.SIZE
              let _TEMP3 = /*runtime*/_TEMP2?.SIZE_IN_X
              let _TEMP4 = /*runtime*/_TEMP3 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
              let _TEMP5 = /*runtime*/PS.GROUP_REF(ePRESENTATION_SIZE.self)
              let _TEMP6 = /*runtime*/_TEMP5?.SIZE
              let _TEMP7 = /*runtime*/_TEMP6?.SIZE_IN_Y
              let _TEMP8 = /*runtime*/_TEMP7 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
              let _TEMP9 = _TEMP4 && _TEMP8
              let _TEMP10 =  !_TEMP9
              return _TEMP10 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          return _TEMP4 }
      let _TEMP8 = SDAI.SIZEOF(_TEMP7)
      let _TEMP9 = _TEMP8 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP10 = _TEMP4 && _TEMP9
      return _TEMP10
    }
    public static func WHERE_wr4(SELF: eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePRESENTATION_SIZE.UNIT)
      let _TEMP2 = _TEMP1?.QUERY{ PSIZE in 

          let _TEMP1 = SDAI.TYPEOF(SDAI.FORCE_OPTIONAL(PSIZE.SIZE)?.PLACEMENT, IS: eAXIS2_PLACEMENT_2D.self)
          return _TEMP1 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP5 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eAREA_IN_SET
        .AREA)
      let _TEMP6 = _TEMP5?.QUERY{ AIS in 

          let _TEMP1 = SDAI.TYPEOF(AIS.IN_SET, IS: ePRESENTATION_SET.self)
          return _TEMP1 }
      let _TEMP7 = _TEMP6?.QUERY{ PSET in 

          let _TEMP1 = SDAI.USEDIN(T: PSET, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePRESENTATION_SIZE.UNIT)
          let _TEMP2 = _TEMP1?.QUERY{ PSIZE in 

              let _TEMP1 = SDAI.TYPEOF(SDAI.FORCE_OPTIONAL(PSIZE.SIZE)?.PLACEMENT, 
                IS: eAXIS2_PLACEMENT_2D.self)
              let _TEMP2 =  !_TEMP1
              return _TEMP2 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          return _TEMP4 }
      let _TEMP8 = SDAI.SIZEOF(_TEMP7)
      let _TEMP9 = _TEMP8 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP10 = _TEMP4 && _TEMP9
      return _TEMP10
    }
    public static func WHERE_wr5(SELF: eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.ITEMS
      let _TEMP2 = _TEMP1.QUERY{ IT1 in 

          let _TEMP1 = SDAI.TYPEOF(IT1, IS: eMAPPED_ITEM.self)
          return _TEMP1 }
      let _TEMP3 = _TEMP2.QUERY{ MI1 in 

          let _TEMP1 = SDAI.TYPEOF(MI1.GROUP_REF(eMAPPED_ITEM.self)?.MAPPING_SOURCE.MAPPED_REPRESENTATION, 
            IS: ePRESENTATION_VIEW.self)
          return _TEMP1 }
      let _TEMP4 = _TEMP3.QUERY{ PV in 

          let _TEMP1 = PV.GROUP_REF(eMAPPED_ITEM.self)
          let _TEMP2 = _TEMP1?.MAPPING_SOURCE
          let _TEMP3 = _TEMP2?.MAPPED_REPRESENTATION
          let _TEMP4 = _TEMP3?.GROUP_REF(eREPRESENTATION.self)
          let _TEMP5 = _TEMP4?.ITEMS
          let _TEMP6 = _TEMP5?.QUERY{ CI in 

              let _TEMP1 = SDAI.TYPEOF(CI, IS: eCAMERA_IMAGE_3D_WITH_SCALE.self)
              let _TEMP2 = ([SDAI.AIE(SDAI.STRING(
                "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3")), 
                SDAI.AIE(SDAI.STRING(
                "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3_WITH_HLHSR")), 
                SDAI.AIE(SDAI.STRING(
                "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_WITH_LIGHT_SOURCES"))] 
                as [SDAI.AggregationInitializerElement<SDAI.STRING>])
              let _TEMP3 = CI.GROUP_REF(eMAPPED_ITEM.self)
              let _TEMP4 = _TEMP3?.MAPPING_SOURCE
              let _TEMP5 = _TEMP4?.MAPPING_ORIGIN
              let _TEMP6 = SDAI.TYPEOF(_TEMP5)
              let _TEMP7 = SDAI.FORCE_OPTIONAL(_TEMP2) * _TEMP6
              let _TEMP8 = SDAI.SIZEOF(_TEMP7)
              let _TEMP9 = _TEMP8 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP10 = _TEMP1 && _TEMP9
              return _TEMP10 }
          let _TEMP7 = SDAI.SIZEOF(_TEMP6)
          let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP9 =  !_TEMP8
          return _TEMP9 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
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
  ENTITY mechanical_design_shaded_presentation_area
    SUBTYPE OF ( presentation_area );
      SELF\representation.items  : SET [1 : ?] OF mechanical_design_shaded_presentation_area_items;
    WHERE
      wr1: ( SIZEOF( QUERY ( it1 <* SELF.items | ( NOT ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'AXIS2_PLACEMENT'  IN TYPEOF( it1 ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it1 ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW'  IN TYPEOF( it1\
               mapped_item.mapping_source.mapped_representation ) ) ) ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( pv <* QUERY ( mi1 <* QUERY ( it1 <* SELF.items | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it1 ) ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW'  IN TYPEOF( mi1\
               mapped_item.mapping_source.mapped_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it2 <* pv\
               mapped_item.mapping_source.mapped_representation\representation.items | ( ( NOT ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT'  IN TYPEOF( it2 ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it2 ) ) AND ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_IMAGE_3D_WITH_SCALE'  IN TYPEOF( it2 ) ) ) 
               AND ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW' IN TYPEOF( it2
               \mapped_item.mapping_source.mapped_representation ) ) ) ) ) ) OR ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_IMAGE_3D_WITH_SCALE'  IN TYPEOF( it2 ) ) 
               AND ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MECHANICAL_DESIGN_SHADED_PRESENTATION_REPRESENTATION'  IN TYPEOF( it2\mapped_item.
               mapping_source.mapped_representation ) ) ) ) ) ) ) = 0 ) ) ) ) = 0 );
      wr3: ( ( SIZEOF( QUERY ( ps <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRESENTATION_SIZE.UNIT'  ) | ( NOT ( ( ps\presentation_size.size.size_in_x > 0 ) AND ( ps\
               presentation_size.size.size_in_y > 0 ) ) ) ) ) = 0 ) AND ( SIZEOF( QUERY ( pset <* 
               QUERY ( ais <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AREA_IN_SET.AREA' )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_SET' IN TYPEOF( ais.in_set ) ) )
               | ( SIZEOF( QUERY ( ps <* USEDIN( pset, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRESENTATION_SIZE.UNIT'  ) | ( NOT ( ( ps\presentation_size.size.size_in_x > 0 ) AND ( ps\
               presentation_size.size.size_in_y > 0 ) ) ) ) ) = 0 ) ) ) = 0 ) );
      wr4: ( ( SIZEOF( QUERY ( psize <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PRESENTATION_SIZE.UNIT'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'AXIS2_PLACEMENT_2D'  IN TYPEOF( psize.size.placement ) ) ) ) = 1 ) AND ( SIZEOF( 
               QUERY ( pset <* QUERY ( ais <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'AREA_IN_SET.AREA'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_SET' 
               IN TYPEOF( ais.in_set ) ) ) | ( SIZEOF( QUERY ( psize <* USEDIN( pset, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_SIZE.UNIT'  ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.AXIS2_PLACEMENT_2D'  IN TYPEOF( psize.size.
               placement ) ) ) ) ) = 0 ) ) ) = 0 ) );
      wr5: ( SIZEOF( QUERY ( pv <* QUERY ( mi1 <* QUERY ( it1 <* SELF.items | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MAPPED_ITEM'  IN TYPEOF( it1 ) ) ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRESENTATION_VIEW'  IN TYPEOF( mi1\
               mapped_item.mapping_source.mapped_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( ci <* pv\
               mapped_item.mapping_source.mapped_representation\representation.items | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_IMAGE_3D_WITH_SCALE'  IN TYPEOF( ci ) ) 
               AND ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_D3_WITH_HLHSR' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CAMERA_MODEL_WITH_LIGHT_SOURCES' ] * TYPEOF( 
               ci\mapped_item.mapping_source.mapping_origin ) ) = 1 ) ) ) ) = 0 ) ) ) ) = 0 );
  END_ENTITY; -- mechanical_design_shaded_presentation_area (line:20809 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _mechanical_design_shaded_presentation_area.self
    }
    public let partialEntity: _mechanical_design_shaded_presentation_area

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION: eREPRESENTATION 	// [1]
    public let super_ePRESENTATION_REPRESENTATION: ePRESENTATION_REPRESENTATION 	// [2]
    public let super_ePRESENTATION_AREA: ePRESENTATION_AREA 	// [3]
    public var super_eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA: eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCRIPTION") {
          return cached.value as! tTEXT? 
        }
        let origin = super_eREPRESENTATION
        let value = tTEXT(origin.partialEntity._description__getter(SELF: origin))
        updateCache(derivedAttributeName:"DESCRIPTION", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA`` )
    public var ITEMS: SDAI.SET<sMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA_ITEMS>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( SDAI.SET<sMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA_ITEMS>( super_eREPRESENTATION
          .partialEntity._items ) )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION.partialEntity
        partial._items = SDAI.UNWRAP(
          SDAI.SET<eREPRESENTATION_ITEM>(newValue))
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eREPRESENTATION
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF(DYNAMIC)__ attribute
    /// - origin: SUPER( ``ePRESENTATION_REPRESENTATION`` )
    public var CONTEXT_OF_ITEMS: eGEOMETRIC_REPRESENTATION_CONTEXT {
      get {
        if let resolved = _representation._context_of_items__provider(complex: self.complexEntity) {
          let value = SDAI.UNWRAP( eGEOMETRIC_REPRESENTATION_CONTEXT(resolved._context_of_items__getter(
            complex: self.complexEntity)) )
          return value
        }
        else {
          return SDAI.UNWRAP( eGEOMETRIC_REPRESENTATION_CONTEXT(super_eREPRESENTATION.partialEntity
            ._context_of_items) )
        }
      }
      set(newValue) {
        if let _ = _representation._context_of_items__provider(complex: self.complexEntity) { return }

        let partial = super_eREPRESENTATION.partialEntity
        partial._context_of_items = SDAI.UNWRAP(
          eREPRESENTATION_CONTEXT(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_mechanical_design_shaded_presentation_area.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION.self) else { return nil }
      self.super_eREPRESENTATION = super1

      guard let super2 = complexEntity?.entityReference(ePRESENTATION_REPRESENTATION.self) else { return nil }
      self.super_ePRESENTATION_REPRESENTATION = super2

      guard let super3 = complexEntity?.entityReference(ePRESENTATION_AREA.self) else { return nil }
      self.super_ePRESENTATION_AREA = super3

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
      result[prefix2 + " .WHERE_wr1"] = _mechanical_design_shaded_presentation_area.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _mechanical_design_shaded_presentation_area.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _mechanical_design_shaded_presentation_area.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _mechanical_design_shaded_presentation_area.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _mechanical_design_shaded_presentation_area.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MECHANICAL_DESIGN_SHADED_PRESENTATION_AREA", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION.self)
      entityDef.add(supertype: ePRESENTATION_REPRESENTATION.self)
      entityDef.add(supertype: ePRESENTATION_AREA.self)
      entityDef.add(supertype: eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA.DESCRIPTION, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA.ITEMS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTEXT_OF_ITEMS", keyPath: \eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA.CONTEXT_OF_ITEMS, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
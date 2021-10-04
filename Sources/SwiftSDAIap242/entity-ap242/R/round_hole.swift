/* file: round_hole.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY round_hole
    SUBTYPE OF ( feature_definition );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'diameter occurrence' ) AND ( SIZEOF( QUERY ( sdr <* QUERY ( sar <* USEDIN( 
               sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'profile usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) ) )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCULAR_CLOSED_PROFILE' IN TYPEOF( sdr
               .relating_shape_aspect ) ) AND ( sdr.name = 'diameter' ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 ) );
      wr2: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'hole depth occurrence' ) AND ( SIZEOF( QUERY ( sdr <* QUERY ( sar <* USEDIN( 
               sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'path feature component usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) ) )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_FEATURE_COMPONENT' IN TYPEOF( sdr.
               relating_shape_aspect ) ) AND ( sdr.name = 'hole depth' ) AND ( sdr.relating_shape_aspect.
               description = 'linear' ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 ) );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'bottom condition occurrence' ) AND ( SIZEOF( QUERY ( fcr <* QUERY ( sar <* 
               USEDIN( sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'hole bottom usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.HOLE_BOTTOM' IN TYPEOF( fcr
               .relating_shape_aspect ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROUND_HOLE' 
               IN TYPEOF( fcr.related_shape_aspect.of_shape.definition ) ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 ) );
      wr4: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'change in diameter occurrence' ) AND ( SIZEOF( QUERY ( fcr <* QUERY ( sar <* 
               USEDIN( sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'taper usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TAPER' IN TYPEOF( fcr.
               relating_shape_aspect ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROUND_HOLE' 
               IN TYPEOF( fcr.related_shape_aspect.of_shape.definition ) ) ) ) ) = 1 ) ) ) ) <= 1 ) ) ) ) = 0 ) );
      wr5: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pdr <* get_property_definition_representations( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) ) = 1 ) );
  END_ENTITY; -- round_hole (line:28058 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  SUPER- ENTITY(2)	feature_definition
    (no local attributes)

  ENTITY(SELF)	round_hole
    (no local attributes)

  SUB- ENTITY(4)	spotface_definition
    ATTR:  spotface_radius,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  spotface_radius_tolerance,	TYPE: OPTIONAL tolerance_value -- EXPLICIT


  SUB- ENTITY(5)	explicit_round_hole
    ATTR:  depth,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  depth_tolerance,	TYPE: OPTIONAL tolerance_value -- EXPLICIT

    ATTR:  diameter,	TYPE: positive_length_measure_with_unit -- EXPLICIT

    ATTR:  diameter_tolerance,	TYPE: OPTIONAL tolerance_value_or_limits_and_fits -- EXPLICIT

    ATTR:  placement,	TYPE: shape_representation -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _round_hole : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eROUND_HOLE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMACHINING_FEATURE_DEFINITION.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: eROUND_HOLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eEXPLICIT_ROUND_HOLE.self)
      let _TEMP2 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP3 = _TEMP2?.QUERY{ PD in 

          let _TEMP1 = SDAI.TYPEOF(PD, IS: ePRODUCT_DEFINITION_SHAPE.self)
          return _TEMP1 }
      let _TEMP4 = _TEMP3?.QUERY{ PDS in 

          let _TEMP1 = SDAI.USEDIN(T: PDS, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT.OF_SHAPE)
          let _TEMP2 = _TEMP1?.QUERY{ SA_OCC in 

              let _TEMP1 = /*runtime*/SA_OCC.DESCRIPTION
              let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "diameter occurrence"))
              let _TEMP3 = SDAI.USEDIN(T: SA_OCC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
              let _TEMP4 = _TEMP3?.QUERY{ SAR in 

                  let _TEMP1 = /*runtime*/SAR.DESCRIPTION
                  let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "profile usage"))
                  let _TEMP3 = SDAI.TYPEOF(SAR, IS: eSHAPE_DEFINING_RELATIONSHIP.self)
                  let _TEMP4 = _TEMP2 && _TEMP3
                  return _TEMP4 }
              let _TEMP5 = _TEMP4?.QUERY{ SDR in 

                  let _TEMP1 = SDAI.TYPEOF(SDR.RELATING_SHAPE_ASPECT, IS: eCIRCULAR_CLOSED_PROFILE.self)
                  let _TEMP2 = /*runtime*/SDR.NAME
                  let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "diameter"))
                  let _TEMP4 = _TEMP1 && _TEMP3
                  return _TEMP4 }
              let _TEMP6 = SDAI.SIZEOF(_TEMP5)
              let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP8 = _TEMP2 && _TEMP7
              return _TEMP8 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP7 = _TEMP1 .!=. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr2(SELF: eROUND_HOLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eEXPLICIT_ROUND_HOLE.self)
      let _TEMP2 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP3 = _TEMP2?.QUERY{ PD in 

          let _TEMP1 = SDAI.TYPEOF(PD, IS: ePRODUCT_DEFINITION_SHAPE.self)
          return _TEMP1 }
      let _TEMP4 = _TEMP3?.QUERY{ PDS in 

          let _TEMP1 = SDAI.USEDIN(T: PDS, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT.OF_SHAPE)
          let _TEMP2 = _TEMP1?.QUERY{ SA_OCC in 

              let _TEMP1 = /*runtime*/SA_OCC.DESCRIPTION
              let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "hole depth occurrence"))
              let _TEMP3 = SDAI.USEDIN(T: SA_OCC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
              let _TEMP4 = _TEMP3?.QUERY{ SAR in 

                  let _TEMP1 = /*runtime*/SAR.DESCRIPTION
                  let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "path feature component usage"))
                  let _TEMP3 = SDAI.TYPEOF(SAR, IS: eSHAPE_DEFINING_RELATIONSHIP.self)
                  let _TEMP4 = _TEMP2 && _TEMP3
                  return _TEMP4 }
              let _TEMP5 = _TEMP4?.QUERY{ SDR in 

                  let _TEMP1 = SDAI.TYPEOF(SDR.RELATING_SHAPE_ASPECT, IS: ePATH_FEATURE_COMPONENT.self)
                  let _TEMP2 = /*runtime*/SDR.NAME
                  let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "hole depth"))
                  let _TEMP4 = _TEMP1 && _TEMP3
                  let _TEMP5 = /*runtime*/SDR.RELATING_SHAPE_ASPECT
                  let _TEMP6 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP5)?.DESCRIPTION
                  let _TEMP7 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP6) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "linear"))
                  let _TEMP8 = _TEMP4 && _TEMP7
                  return _TEMP8 }
              let _TEMP6 = SDAI.SIZEOF(_TEMP5)
              let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP8 = _TEMP2 && _TEMP7
              return _TEMP8 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP7 = _TEMP1 .!=. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr3(SELF: eROUND_HOLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eEXPLICIT_ROUND_HOLE.self)
      let _TEMP2 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP3 = _TEMP2?.QUERY{ PD in 

          let _TEMP1 = SDAI.TYPEOF(PD, IS: ePRODUCT_DEFINITION_SHAPE.self)
          return _TEMP1 }
      let _TEMP4 = _TEMP3?.QUERY{ PDS in 

          let _TEMP1 = SDAI.USEDIN(T: PDS, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT.OF_SHAPE)
          let _TEMP2 = _TEMP1?.QUERY{ SA_OCC in 

              let _TEMP1 = /*runtime*/SA_OCC.DESCRIPTION
              let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "bottom condition occurrence"))
              let _TEMP3 = SDAI.USEDIN(T: SA_OCC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
              let _TEMP4 = _TEMP3?.QUERY{ SAR in 

                  let _TEMP1 = /*runtime*/SAR.DESCRIPTION
                  let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "hole bottom usage"))
                  let _TEMP3 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
                  let _TEMP4 = _TEMP2 && _TEMP3
                  return _TEMP4 }
              let _TEMP5 = _TEMP4?.QUERY{ FCR in 

                  let _TEMP1 = SDAI.TYPEOF(FCR.RELATING_SHAPE_ASPECT, IS: eHOLE_BOTTOM.self)
                  let _TEMP2 = SDAI.TYPEOF(SDAI.FORCE_OPTIONAL(SDAI.FORCE_OPTIONAL(FCR.RELATED_SHAPE_ASPECT)?
                    .OF_SHAPE)?.DEFINITION, IS: eROUND_HOLE.self)
                  let _TEMP3 = _TEMP1 && _TEMP2
                  return _TEMP3 }
              let _TEMP6 = SDAI.SIZEOF(_TEMP5)
              let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP8 = _TEMP2 && _TEMP7
              return _TEMP8 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP7 = _TEMP1 .!=. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr4(SELF: eROUND_HOLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eEXPLICIT_ROUND_HOLE.self)
      let _TEMP2 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP3 = _TEMP2?.QUERY{ PD in 

          let _TEMP1 = SDAI.TYPEOF(PD, IS: ePRODUCT_DEFINITION_SHAPE.self)
          return _TEMP1 }
      let _TEMP4 = _TEMP3?.QUERY{ PDS in 

          let _TEMP1 = SDAI.USEDIN(T: PDS, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT.OF_SHAPE)
          let _TEMP2 = _TEMP1?.QUERY{ SA_OCC in 

              let _TEMP1 = /*runtime*/SA_OCC.DESCRIPTION
              let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "change in diameter occurrence"))
              let _TEMP3 = SDAI.USEDIN(T: SA_OCC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
              let _TEMP4 = _TEMP3?.QUERY{ SAR in 

                  let _TEMP1 = /*runtime*/SAR.DESCRIPTION
                  let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "taper usage"))
                  let _TEMP3 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
                  let _TEMP4 = _TEMP2 && _TEMP3
                  return _TEMP4 }
              let _TEMP5 = _TEMP4?.QUERY{ FCR in 

                  let _TEMP1 = SDAI.TYPEOF(FCR.RELATING_SHAPE_ASPECT, IS: eTAPER.self)
                  let _TEMP2 = SDAI.TYPEOF(SDAI.FORCE_OPTIONAL(SDAI.FORCE_OPTIONAL(FCR.RELATED_SHAPE_ASPECT)?
                    .OF_SHAPE)?.DEFINITION, IS: eROUND_HOLE.self)
                  let _TEMP3 = _TEMP1 && _TEMP2
                  return _TEMP3 }
              let _TEMP6 = SDAI.SIZEOF(_TEMP5)
              let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP8 = _TEMP2 && _TEMP7
              return _TEMP8 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP7 = _TEMP1 .!=. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr5(SELF: eROUND_HOLE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eEXPLICIT_ROUND_HOLE.self)
      let _TEMP2 = GET_PROPERTY_DEFINITION_REPRESENTATIONS(sCHARACTERIZED_DEFINITION(/*eROUND_HOLE*/SELF))
      let _TEMP3 = _TEMP2?.QUERY{ PDR in 

          let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP6 = _TEMP1 .!=. _TEMP5
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
  ENTITY round_hole
    SUBTYPE OF ( feature_definition );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'diameter occurrence' ) AND ( SIZEOF( QUERY ( sdr <* QUERY ( sar <* USEDIN( 
               sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'profile usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) ) )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CIRCULAR_CLOSED_PROFILE' IN TYPEOF( sdr
               .relating_shape_aspect ) ) AND ( sdr.name = 'diameter' ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 ) );
      wr2: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'hole depth occurrence' ) AND ( SIZEOF( QUERY ( sdr <* QUERY ( sar <* USEDIN( 
               sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'path feature component usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) ) )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_FEATURE_COMPONENT' IN TYPEOF( sdr.
               relating_shape_aspect ) ) AND ( sdr.name = 'hole depth' ) AND ( sdr.relating_shape_aspect.
               description = 'linear' ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 ) );
      wr3: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'bottom condition occurrence' ) AND ( SIZEOF( QUERY ( fcr <* QUERY ( sar <* 
               USEDIN( sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'hole bottom usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.HOLE_BOTTOM' IN TYPEOF( fcr
               .relating_shape_aspect ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROUND_HOLE' 
               IN TYPEOF( fcr.related_shape_aspect.of_shape.definition ) ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 ) );
      wr4: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'change in diameter occurrence' ) AND ( SIZEOF( QUERY ( fcr <* QUERY ( sar <* 
               USEDIN( sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'taper usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TAPER' IN TYPEOF( fcr.
               relating_shape_aspect ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ROUND_HOLE' 
               IN TYPEOF( fcr.related_shape_aspect.of_shape.definition ) ) ) ) ) = 1 ) ) ) ) <= 1 ) ) ) ) = 0 ) );
      wr5: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.EXPLICIT_ROUND_HOLE' IN TYPEOF( SELF ) ) XOR 
               ( SIZEOF( QUERY ( pdr <* get_property_definition_representations( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) ) = 1 ) );
  END_ENTITY; -- round_hole (line:28058 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eROUND_HOLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _round_hole.self
    }
    public let partialEntity: _round_hole

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eFEATURE_DEFINITION: eFEATURE_DEFINITION 	// [2]
    public var super_eROUND_HOLE: eROUND_HOLE { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eSPOTFACE_DEFINITION: eSPOTFACE_DEFINITION? {	// [4]
      return self.complexEntity.entityReference(eSPOTFACE_DEFINITION.self)
    }

    public var sub_eEXPLICIT_ROUND_HOLE: eEXPLICIT_ROUND_HOLE? {	// [5]
      return self.complexEntity.entityReference(eEXPLICIT_ROUND_HOLE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXPLICIT_ROUND_HOLE`` )
    public var DIAMETER_TOLERANCE: sTOLERANCE_VALUE_OR_LIMITS_AND_FITS?  {
      get {
        return sub_eEXPLICIT_ROUND_HOLE?.partialEntity._diameter_tolerance
      }
      set(newValue) {
        guard let partial = sub_eEXPLICIT_ROUND_HOLE?.super_eEXPLICIT_ROUND_HOLE.partialEntity
          else { return }
        partial._diameter_tolerance = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXPLICIT_ROUND_HOLE`` )
    public var DEPTH_TOLERANCE: eTOLERANCE_VALUE?  {
      get {
        return sub_eEXPLICIT_ROUND_HOLE?.partialEntity._depth_tolerance
      }
      set(newValue) {
        guard let partial = sub_eEXPLICIT_ROUND_HOLE?.super_eEXPLICIT_ROUND_HOLE.partialEntity
          else { return }
        partial._depth_tolerance = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let resolved = _characterized_object._description__provider(complex: self.complexEntity) {
          let value = resolved._description__getter(complex: self.complexEntity)
          return value
        }
        else {
          return super_eCHARACTERIZED_OBJECT.partialEntity._description
        }
      }
      set(newValue) {
        if let _ = _characterized_object._description__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXPLICIT_ROUND_HOLE`` )
    public var PLACEMENT: eSHAPE_REPRESENTATION?  {
      get {
        return sub_eEXPLICIT_ROUND_HOLE?.partialEntity._placement
      }
      set(newValue) {
        guard let partial = sub_eEXPLICIT_ROUND_HOLE?.super_eEXPLICIT_ROUND_HOLE.partialEntity
          else { return }
        partial._placement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXPLICIT_ROUND_HOLE`` )
    public var DIAMETER: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT?  {
      get {
        return sub_eEXPLICIT_ROUND_HOLE?.partialEntity._diameter
      }
      set(newValue) {
        guard let partial = sub_eEXPLICIT_ROUND_HOLE?.super_eEXPLICIT_ROUND_HOLE.partialEntity
          else { return }
        partial._diameter = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSPOTFACE_DEFINITION`` )
    public var SPOTFACE_RADIUS: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT?  {
      get {
        return sub_eSPOTFACE_DEFINITION?.partialEntity._spotface_radius
      }
      set(newValue) {
        guard let partial = sub_eSPOTFACE_DEFINITION?.super_eSPOTFACE_DEFINITION.partialEntity
          else { return }
        partial._spotface_radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSPOTFACE_DEFINITION`` )
    public var SPOTFACE_RADIUS_TOLERANCE: eTOLERANCE_VALUE?  {
      get {
        return sub_eSPOTFACE_DEFINITION?.partialEntity._spotface_radius_tolerance
      }
      set(newValue) {
        guard let partial = sub_eSPOTFACE_DEFINITION?.super_eSPOTFACE_DEFINITION.partialEntity
          else { return }
        partial._spotface_radius_tolerance = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var NAME: tLABEL {
      get {
        if let resolved = _characterized_object._name__provider(complex: self.complexEntity) {
          let value = resolved._name__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eCHARACTERIZED_OBJECT.partialEntity._name )
        }
      }
      set(newValue) {
        if let _ = _characterized_object._name__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXPLICIT_ROUND_HOLE`` )
    public var DEPTH: ePOSITIVE_LENGTH_MEASURE_WITH_UNIT?  {
      get {
        return sub_eEXPLICIT_ROUND_HOLE?.partialEntity._depth
      }
      set(newValue) {
        guard let partial = sub_eEXPLICIT_ROUND_HOLE?.super_eEXPLICIT_ROUND_HOLE.partialEntity
          else { return }
        partial._depth = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_round_hole.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eFEATURE_DEFINITION.self) else { return nil }
      self.super_eFEATURE_DEFINITION = super2

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
      result[prefix2 + " .WHERE_wr1"] = _round_hole.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _round_hole.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _round_hole.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _round_hole.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _round_hole.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ROUND_HOLE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eFEATURE_DEFINITION.self)
      entityDef.add(supertype: eROUND_HOLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DIAMETER_TOLERANCE", keyPath: \eROUND_HOLE.DIAMETER_TOLERANCE, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEPTH_TOLERANCE", keyPath: \eROUND_HOLE.DEPTH_TOLERANCE, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eROUND_HOLE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACEMENT", keyPath: \eROUND_HOLE.PLACEMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIAMETER", keyPath: \eROUND_HOLE.DIAMETER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SPOTFACE_RADIUS", keyPath: \eROUND_HOLE.SPOTFACE_RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SPOTFACE_RADIUS_TOLERANCE", keyPath: \eROUND_HOLE.SPOTFACE_RADIUS_TOLERANCE, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eROUND_HOLE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEPTH", keyPath: \eROUND_HOLE.DEPTH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
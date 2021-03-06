/* file: applied_area.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY applied_area
    SUBTYPE OF ( shape_aspect );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE' IN TYPEOF( SELF.
               of_shape ) );
      wr2: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS' IN 
               TYPEOF( pdr.used_representation ) ) ) ) = 1 ) ) ) ) = 0 );
      wr3: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( ( 2 <= SIZEOF( impl_rep.used_representation.
               items ) ) AND ( SIZEOF( impl_rep.used_representation.items ) <= 3 ) ) ) ) ) = 0 ) ) ) ) = 0 );
      wr4: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS' 
               IN TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( QUERY ( srwp_i <* pdr.used_representation
               .items | ( NOT ( srwp_i.name IN [ 'orientation', 'effective length', 'maximum length'] ) ) ) ) 
               > 0 ) ) ) ) = 0 ) ) ) = 0 );
      wr5: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MEASURE_REPRESENTATION_ITEM' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT' ] * TYPEOF( it ) ) = 2 ) AND ( it.name = 'effective length' ) ) ) ) 
               = 1 ) ) ) ) = 0 ) ) ) ) <= 1 );
      wr6: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MEASURE_REPRESENTATION_ITEM' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT' ] * TYPEOF( it ) ) = 2 ) AND ( it.name = 'maximum length' ) ) ) ) 
               <= 1 ) ) ) ) = 0 ) ) ) ) = 0 );
      wr7: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLACEMENT' IN
               TYPEOF( it ) ) AND ( it.name = 'orientation' ) ) ) ) = 1 ) ) ) ) = 0 ) ) ) ) = 0 );
  END_ENTITY; -- applied_area (line:7092 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	shape_aspect
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_shape,	TYPE: product_definition_shape -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: component_feature,	TYPE: assembly_component
          ENTITY: constituent_shape_aspect,	TYPE: product_definition_shape	(as DERIVED)
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)

    ATTR:  product_definitional,	TYPE: LOGICAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: default_model_geometric_view,	TYPE: LOGICAL	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	applied_area
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _applied_area : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAPPLIED_AREA.self
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
    public static func WHERE_wr1(SELF: eAPPLIED_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.OF_SHAPE, IS: ePRODUCT_DEFINITION_SHAPE.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eAPPLIED_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, 
                IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
              return _TEMP1 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eAPPLIED_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, 
                IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
              return _TEMP1 }
          let _TEMP3 = _TEMP2.QUERY{ IMPL_REP in 

              let _TEMP1 = /*runtime*/IMPL_REP.USED_REPRESENTATION
              let _TEMP2 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP1)?.ITEMS
              let _TEMP3 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*runtime*/_TEMP2))
              let _TEMP4 = SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2)) <= _TEMP3
              let _TEMP5 = /*runtime*/IMPL_REP.USED_REPRESENTATION
              let _TEMP6 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP5)?.ITEMS
              let _TEMP7 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*runtime*/_TEMP6))
              let _TEMP8 = _TEMP7 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
              let _TEMP9 = _TEMP4 && _TEMP8
              let _TEMP10 =  !_TEMP9
              return _TEMP10 }
          let _TEMP4 = SDAI.SIZEOF(_TEMP3)
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP6 =  !_TEMP5
          return _TEMP6 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr4(SELF: eAPPLIED_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, 
                IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
              let _TEMP2 = /*runtime*/PDR.USED_REPRESENTATION
              let _TEMP3 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP2)?.ITEMS
              let _TEMP4 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP3)?
                .QUERY{ SRWP_I in 

                  let _TEMP1 = /*runtime*/SRWP_I.NAME
                  let _TEMP2 = ([SDAI.AIE(SDAI.STRING("orientation")), 
                    SDAI.AIE(SDAI.STRING("effective length")), 
                    SDAI.AIE(SDAI.STRING("maximum length"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
                  let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(fromGeneric: /*
                    /*runtime*/SDAI.GENERIC*/_TEMP1))
                  let _TEMP4 =  !_TEMP3
                  return _TEMP4 }
              let _TEMP5 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*runtime*/_TEMP4))
              let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
              let _TEMP7 = _TEMP1 && _TEMP6
              return _TEMP7 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          return _TEMP4 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr5(SELF: eAPPLIED_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, 
                IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
              return _TEMP1 }
          let _TEMP3 = _TEMP2.QUERY{ IMPL_REP in 

              let _TEMP1 = /*runtime*/IMPL_REP.USED_REPRESENTATION
              let _TEMP2 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP1)?.ITEMS
              let _TEMP3 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP2)?
                .QUERY{ IT in 

                  let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
                    "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM")), 
                    SDAI.AIE(SDAI.STRING(
                    "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT"))] 
                    as [SDAI.AggregationInitializerElement<SDAI.STRING>])
                  let _TEMP2 = SDAI.TYPEOF(IT)
                  let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP2)
                  let _TEMP4 = SDAI.SIZEOF(_TEMP3)
                  let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
                  let _TEMP6 = /*runtime*/IT.NAME
                  let _TEMP7 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP6) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "effective length"))
                  let _TEMP8 = _TEMP5 && _TEMP7
                  return _TEMP8 }
              let _TEMP4 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*runtime*/_TEMP3))
              let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP6 =  !_TEMP5
              return _TEMP6 }
          let _TEMP4 = SDAI.SIZEOF(_TEMP3)
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP6 =  !_TEMP5
          return _TEMP6 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP4
    }
    public static func WHERE_wr6(SELF: eAPPLIED_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, 
                IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
              return _TEMP1 }
          let _TEMP3 = _TEMP2.QUERY{ IMPL_REP in 

              let _TEMP1 = /*runtime*/IMPL_REP.USED_REPRESENTATION
              let _TEMP2 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP1)?.ITEMS
              let _TEMP3 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP2)?
                .QUERY{ IT in 

                  let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
                    "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM")), 
                    SDAI.AIE(SDAI.STRING(
                    "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT"))] 
                    as [SDAI.AggregationInitializerElement<SDAI.STRING>])
                  let _TEMP2 = SDAI.TYPEOF(IT)
                  let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP2)
                  let _TEMP4 = SDAI.SIZEOF(_TEMP3)
                  let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
                  let _TEMP6 = /*runtime*/IT.NAME
                  let _TEMP7 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP6) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "maximum length"))
                  let _TEMP8 = _TEMP5 && _TEMP7
                  return _TEMP8 }
              let _TEMP4 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*runtime*/_TEMP3))
              let _TEMP5 = _TEMP4 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP6 =  !_TEMP5
              return _TEMP6 }
          let _TEMP4 = SDAI.SIZEOF(_TEMP3)
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP6 =  !_TEMP5
          return _TEMP6 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr7(SELF: eAPPLIED_AREA?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, 
                IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
              return _TEMP1 }
          let _TEMP3 = _TEMP2.QUERY{ IMPL_REP in 

              let _TEMP1 = /*runtime*/IMPL_REP.USED_REPRESENTATION
              let _TEMP2 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP1)?.ITEMS
              let _TEMP3 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP2)?
                .QUERY{ IT in 

                  let _TEMP1 = SDAI.TYPEOF(IT, IS: ePLACEMENT.self)
                  let _TEMP2 = /*runtime*/IT.NAME
                  let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "orientation"))
                  let _TEMP4 = _TEMP1 && _TEMP3
                  return _TEMP4 }
              let _TEMP4 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*runtime*/_TEMP3))
              let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP6 =  !_TEMP5
              return _TEMP6 }
          let _TEMP4 = SDAI.SIZEOF(_TEMP3)
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP6 =  !_TEMP5
          return _TEMP6 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
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
  ENTITY applied_area
    SUBTYPE OF ( shape_aspect );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE' IN TYPEOF( SELF.
               of_shape ) );
      wr2: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS' IN 
               TYPEOF( pdr.used_representation ) ) ) ) = 1 ) ) ) ) = 0 );
      wr3: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( ( 2 <= SIZEOF( impl_rep.used_representation.
               items ) ) AND ( SIZEOF( impl_rep.used_representation.items ) <= 3 ) ) ) ) ) = 0 ) ) ) ) = 0 );
      wr4: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS' 
               IN TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( QUERY ( srwp_i <* pdr.used_representation
               .items | ( NOT ( srwp_i.name IN [ 'orientation', 'effective length', 'maximum length'] ) ) ) ) 
               > 0 ) ) ) ) = 0 ) ) ) = 0 );
      wr5: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MEASURE_REPRESENTATION_ITEM' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT' ] * TYPEOF( it ) ) = 2 ) AND ( it.name = 'effective length' ) ) ) ) 
               = 1 ) ) ) ) = 0 ) ) ) ) <= 1 );
      wr6: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MEASURE_REPRESENTATION_ITEM' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT' ] * TYPEOF( it ) ) = 2 ) AND ( it.name = 'maximum length' ) ) ) ) 
               <= 1 ) ) ) ) = 0 ) ) ) ) = 0 );
      wr7: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLACEMENT' IN
               TYPEOF( it ) ) AND ( it.name = 'orientation' ) ) ) ) = 1 ) ) ) ) = 0 ) ) ) ) = 0 );
  END_ENTITY; -- applied_area (line:7092 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAPPLIED_AREA : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _applied_area.self
    }
    public let partialEntity: _applied_area

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public var super_eAPPLIED_AREA: eAPPLIED_AREA { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      get {
        if let resolved = _shape_aspect._product_definitional__provider(complex: self.complexEntity) {
          let value = resolved._product_definitional__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._product_definitional )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._product_definitional__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._product_definitional = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eSHAPE_ASPECT.partialEntity._description
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE {
      get {
        if let resolved = _shape_aspect._of_shape__provider(complex: self.complexEntity) {
          let value = resolved._of_shape__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._of_shape )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._of_shape__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._of_shape = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eSHAPE_ASPECT
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_applied_area.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super1

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
      result[prefix2 + " .WHERE_wr1"] = _applied_area.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _applied_area.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _applied_area.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _applied_area.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _applied_area.WHERE_wr5(SELF: instance)
      result[prefix2 + " .WHERE_wr6"] = _applied_area.WHERE_wr6(SELF: instance)
      result[prefix2 + " .WHERE_wr7"] = _applied_area.WHERE_wr7(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "APPLIED_AREA", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eAPPLIED_AREA.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eAPPLIED_AREA.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eAPPLIED_AREA.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eAPPLIED_AREA.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eAPPLIED_AREA.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eAPPLIED_AREA.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

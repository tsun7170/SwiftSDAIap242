/* file: bead_end.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY bead_end
    SUBTYPE OF ( shape_aspect );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_DEFINITION' IN TYPEOF( SELF.
               of_shape.definition ) );
      wr2: ( SELF.description IN [ 'linear', 'open', 'radiused'] );
      wr3: ( ( SELF.description <> 'linear' ) XOR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) ) > 0 ) );
      wr4: ( ( SELF.description <> 'linear' ) OR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( pdr.used_representation.items ) = 2 ) ) ) ) 
               = 1 ) );
      wr5: ( ( SELF.description <> 'linear' ) OR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( QUERY ( i <* pdr.used_representation.items
               | ( ( i.name = 'end length' ) AND ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MEASURE_REPRESENTATION_ITEM' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT' ] * TYPEOF( i ) ) = 2 ) ) ) ) = 1 ) ) ) ) = 1 ) );
      wr6: ( ( SELF.description <> 'linear' ) OR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( QUERY ( i <* pdr.used_representation.items
               | ( ( i.name = 'end shape' ) AND ( i\descriptive_representation_item.description IN [ 'straight', 
               'tapered' ] ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DESCRIPTIVE_REPRESENTATION_ITEM'  IN TYPEOF( i ) ) ) ) ) = 1 ) ) ) ) = 1 ) );
      wr7: ( SIZEOF( QUERY ( sar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT'  ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) AND ( sar.name = 'bead end usage' ) AND ( sar.description IN [ 'starting', 'ending'] ) 
               AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BEAD' IN TYPEOF( sar.
               related_shape_aspect.of_shape.definition ) ) AND ( sar.related_shape_aspect.of_shape.
               definition\characterized_object.name = 'end condition' ) AND ( sar.related_shape_aspect.
               of_shape.definition\characterized_object.description = 'bead end occurrence' ) ) ) ) = 1 );
  END_ENTITY; -- bead_end (line:8095 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	bead_end
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _bead_end : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eBEAD_END.self
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
    public static func WHERE_wr1(SELF: eBEAD_END?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.OF_SHAPE.DEFINITION, IS: eFEATURE_COMPONENT_DEFINITION.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eBEAD_END?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DESCRIPTION
      let _TEMP2 = ([SDAI.AIE(SDAI.STRING("linear")), 
        SDAI.AIE(SDAI.STRING("open")), 
        SDAI.AIE(SDAI.STRING("radiused"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(/*tTEXT*/_TEMP1))
      return _TEMP3
    }
    public static func WHERE_wr3(SELF: eBEAD_END?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DESCRIPTION
      let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("linear"))
      let _TEMP3 = GET_SHAPE_ASPECT_PROPERTY_DEFINITION_REPRESENTATIONS(eSHAPE_ASPECT(/*eBEAD_END*/SELF))
      let _TEMP4 = _TEMP3?.QUERY{ PDR in 

          let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
          return _TEMP1 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP7 = _TEMP2 .!=. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr4(SELF: eBEAD_END?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DESCRIPTION
      let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("linear"))
      let _TEMP3 = GET_SHAPE_ASPECT_PROPERTY_DEFINITION_REPRESENTATIONS(eSHAPE_ASPECT(/*eBEAD_END*/SELF))
      let _TEMP4 = _TEMP3?.QUERY{ PDR in 

          let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
          let _TEMP2 = PDR.USED_REPRESENTATION
          let _TEMP3 = _TEMP2.ITEMS
          let _TEMP4 = SDAI.SIZEOF(_TEMP3)
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
          let _TEMP6 = _TEMP1 && _TEMP5
          return _TEMP6 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = _TEMP2 || _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr5(SELF: eBEAD_END?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DESCRIPTION
      let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("linear"))
      let _TEMP3 = GET_SHAPE_ASPECT_PROPERTY_DEFINITION_REPRESENTATIONS(eSHAPE_ASPECT(/*eBEAD_END*/SELF))
      let _TEMP4 = _TEMP3?.QUERY{ PDR in 

          let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
          let _TEMP2 = PDR.USED_REPRESENTATION
          let _TEMP3 = _TEMP2.ITEMS
          let _TEMP4 = _TEMP3.QUERY{ I in 

              let _TEMP1 = I.NAME
              let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("end length"))
              let _TEMP3 = ([SDAI.AIE(SDAI.STRING(
                "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM")), 
                SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LENGTH_MEASURE_WITH_UNIT"))] 
                as [SDAI.AggregationInitializerElement<SDAI.STRING>])
              let _TEMP4 = SDAI.TYPEOF(I)
              let _TEMP5 = SDAI.FORCE_OPTIONAL(_TEMP3) * SDAI.FORCE_OPTIONAL(_TEMP4)
              let _TEMP6 = SDAI.SIZEOF(_TEMP5)
              let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
              let _TEMP8 = _TEMP2 && _TEMP7
              return _TEMP8 }
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = _TEMP1 && _TEMP6
          return _TEMP7 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = _TEMP2 || _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr6(SELF: eBEAD_END?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.DESCRIPTION
      let _TEMP2 = _TEMP1 .!=. SDAI.FORCE_OPTIONAL(SDAI.STRING("linear"))
      let _TEMP3 = GET_SHAPE_ASPECT_PROPERTY_DEFINITION_REPRESENTATIONS(eSHAPE_ASPECT(/*eBEAD_END*/SELF))
      let _TEMP4 = _TEMP3?.QUERY{ PDR in 

          let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
          let _TEMP2 = PDR.USED_REPRESENTATION
          let _TEMP3 = _TEMP2.ITEMS
          let _TEMP4 = _TEMP3.QUERY{ I in 

              let _TEMP1 = I.NAME
              let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("end shape"))
              let _TEMP3 = I.GROUP_REF(eDESCRIPTIVE_REPRESENTATION_ITEM.self)
              let _TEMP4 = _TEMP3?.DESCRIPTION
              let _TEMP5 = ([SDAI.AIE(SDAI.STRING("straight")), 
                SDAI.AIE(SDAI.STRING("tapered"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
              let _TEMP6 = SDAI.aggregate(_TEMP5, contains: SDAI.STRING(/*tTEXT*/_TEMP4))
              let _TEMP7 = _TEMP2 && _TEMP6
              let _TEMP8 = SDAI.TYPEOF(I, IS: eDESCRIPTIVE_REPRESENTATION_ITEM.self)
              let _TEMP9 = _TEMP7 && _TEMP8
              return _TEMP9 }
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = _TEMP1 && _TEMP6
          return _TEMP7 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = _TEMP2 || _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr7(SELF: eBEAD_END?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eSHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT)
      let _TEMP2 = _TEMP1.QUERY{ SAR in 

          let _TEMP1 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
          let _TEMP2 = /*runtime*/SAR.NAME
          let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
            "bead end usage"))
          let _TEMP4 = _TEMP1 && _TEMP3
          let _TEMP5 = /*runtime*/SAR.DESCRIPTION
          let _TEMP6 = ([SDAI.AIE(SDAI.STRING("starting")), 
            SDAI.AIE(SDAI.STRING("ending"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
          let _TEMP7 = SDAI.aggregate(_TEMP6, contains: SDAI.STRING(fromGeneric: /*/*runtime*/SDAI.GENERIC*/
            _TEMP5))
          let _TEMP8 = _TEMP4 && _TEMP7
          let _TEMP9 = SDAI.TYPEOF(SDAI.FORCE_OPTIONAL(SDAI.FORCE_OPTIONAL(SAR.RELATED_SHAPE_ASPECT)?.OF_SHAPE)?
            .DEFINITION, IS: eBEAD.self)
          let _TEMP10 = _TEMP8 && _TEMP9
          let _TEMP11 = /*runtime*/SAR.RELATED_SHAPE_ASPECT
          let _TEMP12 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP11)?.OF_SHAPE
          let _TEMP13 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP12)?.DEFINITION
          let _TEMP14 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP13)?.GROUP_REF(eCHARACTERIZED_OBJECT.self)
          let _TEMP15 = /*runtime*/_TEMP14?.NAME
          let _TEMP16 = /*runtime*/_TEMP15 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("end condition"))
          let _TEMP17 = _TEMP10 && _TEMP16
          let _TEMP18 = /*runtime*/SAR.RELATED_SHAPE_ASPECT
          let _TEMP19 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP18)?.OF_SHAPE
          let _TEMP20 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP19)?.DEFINITION
          let _TEMP21 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP20)?.GROUP_REF(eCHARACTERIZED_OBJECT.self)
          let _TEMP22 = /*runtime*/_TEMP21?.DESCRIPTION
          let _TEMP23 = /*runtime*/_TEMP22 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("bead end occurrence"))
          let _TEMP24 = _TEMP17 && _TEMP23
          return _TEMP24 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
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
  ENTITY bead_end
    SUBTYPE OF ( shape_aspect );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_DEFINITION' IN TYPEOF( SELF.
               of_shape.definition ) );
      wr2: ( SELF.description IN [ 'linear', 'open', 'radiused'] );
      wr3: ( ( SELF.description <> 'linear' ) XOR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) ) > 0 ) );
      wr4: ( ( SELF.description <> 'linear' ) OR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( pdr.used_representation.items ) = 2 ) ) ) ) 
               = 1 ) );
      wr5: ( ( SELF.description <> 'linear' ) OR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( QUERY ( i <* pdr.used_representation.items
               | ( ( i.name = 'end length' ) AND ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'MEASURE_REPRESENTATION_ITEM' , 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'LENGTH_MEASURE_WITH_UNIT' ] * TYPEOF( i ) ) = 2 ) ) ) ) = 1 ) ) ) ) = 1 ) );
      wr6: ( ( SELF.description <> 'linear' ) OR ( SIZEOF( QUERY ( pdr <* 
               get_shape_aspect_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) AND ( SIZEOF( QUERY ( i <* pdr.used_representation.items
               | ( ( i.name = 'end shape' ) AND ( i\descriptive_representation_item.description IN [ 'straight', 
               'tapered' ] ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'DESCRIPTIVE_REPRESENTATION_ITEM'  IN TYPEOF( i ) ) ) ) ) = 1 ) ) ) ) = 1 ) );
      wr7: ( SIZEOF( QUERY ( sar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT'  ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) AND ( sar.name = 'bead end usage' ) AND ( sar.description IN [ 'starting', 'ending'] ) 
               AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.BEAD' IN TYPEOF( sar.
               related_shape_aspect.of_shape.definition ) ) AND ( sar.related_shape_aspect.of_shape.
               definition\characterized_object.name = 'end condition' ) AND ( sar.related_shape_aspect.
               of_shape.definition\characterized_object.description = 'bead end occurrence' ) ) ) ) = 1 );
  END_ENTITY; -- bead_end (line:8095 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eBEAD_END : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _bead_end.self
    }
    public let partialEntity: _bead_end

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public var super_eBEAD_END: eBEAD_END { return self } 	// [2]

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
      guard let partial = complexEntity?.partialEntityInstance(_bead_end.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _bead_end.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _bead_end.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _bead_end.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _bead_end.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _bead_end.WHERE_wr5(SELF: instance)
      result[prefix2 + " .WHERE_wr6"] = _bead_end.WHERE_wr6(SELF: instance)
      result[prefix2 + " .WHERE_wr7"] = _bead_end.WHERE_wr7(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "BEAD_END", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eBEAD_END.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eBEAD_END.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eBEAD_END.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eBEAD_END.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eBEAD_END.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eBEAD_END.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

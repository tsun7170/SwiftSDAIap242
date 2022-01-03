/* file: rib_top.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY rib_top
    SUBTYPE OF ( feature_definition );
    WHERE
      wr1: ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'rib top condition occurrence' ) AND ( SIZEOF( QUERY ( sdr <* QUERY ( sar <* 
               USEDIN( sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'rib top usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIB_TOP_FLOOR' IN TYPEOF( 
               sdr.relating_shape_aspect ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIB_TOP' 
               IN TYPEOF( sdr.related_shape_aspect.of_shape.definition ) ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIRECTION_SHAPE_REPRESENTATION' IN 
               TYPEOF( pdr.used_representation ) ) AND ( pdr.used_representation.name = 'removal direction' ) ) ) ) 
               = 1 ) ) ) ) = 1 );
      wr3: ( SIZEOF( QUERY ( pdr <* get_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANAR_SHAPE_REPRESENTATION'  IN TYPEOF( pdr.
               used_representation ) ) AND ( pdr.used_representation.name = 'maximum feature limit' ) ) ) ) 
               >= 0 );
  END_ENTITY; -- rib_top (line:27873 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	rib_top
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _rib_top : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eRIB_TOP.self
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
    public static func WHERE_wr1(SELF: eRIB_TOP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.TYPEOF(PD, IS: ePRODUCT_DEFINITION_SHAPE.self)
          return _TEMP1 }
      let _TEMP3 = _TEMP2.QUERY{ PDS in 

          let _TEMP1 = SDAI.USEDIN(T: PDS, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT.OF_SHAPE)
          let _TEMP2 = _TEMP1.QUERY{ SA_OCC in 

              let _TEMP1 = /*runtime*/SA_OCC.DESCRIPTION
              let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "rib top condition occurrence"))
              let _TEMP3 = SDAI.USEDIN(T: SA_OCC, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
                .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
              let _TEMP4 = _TEMP3.QUERY{ SAR in 

                  let _TEMP1 = /*runtime*/SAR.DESCRIPTION
                  let _TEMP2 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                    "rib top usage"))
                  let _TEMP3 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
                  let _TEMP4 = _TEMP2 && _TEMP3
                  return _TEMP4 }
              let _TEMP5 = _TEMP4.QUERY{ SDR in 

                  let _TEMP1 = SDAI.TYPEOF(SDR.RELATING_SHAPE_ASPECT, IS: eRIB_TOP_FLOOR.self)
                  let _TEMP2 = SDAI.TYPEOF(SDAI.FORCE_OPTIONAL(SDAI.FORCE_OPTIONAL(SDR.RELATED_SHAPE_ASPECT)?
                    .OF_SHAPE)?.DEFINITION, IS: eRIB_TOP.self)
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
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: eRIB_TOP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eDIRECTION_SHAPE_REPRESENTATION.self)
              let _TEMP2 = /*runtime*/PDR.USED_REPRESENTATION
              let _TEMP3 = /*runtime*/SDAI.FORCE_OPTIONAL(_TEMP2)?.NAME
              let _TEMP4 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP3) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "removal direction"))
              let _TEMP5 = _TEMP1 && _TEMP4
              return _TEMP5 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eRIB_TOP?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = GET_PROPERTY_DEFINITION_REPRESENTATIONS(sCHARACTERIZED_DEFINITION(/*eRIB_TOP*/SELF))
      let _TEMP2 = _TEMP1?.QUERY{ PDR in 

          let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: ePLANAR_SHAPE_REPRESENTATION.self)
          let _TEMP2 = PDR.USED_REPRESENTATION
          let _TEMP3 = _TEMP2.NAME
          let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP3) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("maximum feature limit"))
          let _TEMP5 = _TEMP1 && _TEMP4
          return _TEMP5 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
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
  ENTITY rib_top
    SUBTYPE OF ( feature_definition );
    WHERE
      wr1: ( SIZEOF( QUERY ( pds <* QUERY ( pd <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION_SHAPE'  IN TYPEOF( pd ) ) )
               | ( NOT ( SIZEOF( QUERY ( sa_occ <* USEDIN( pds, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT.OF_SHAPE'  ) | ( ( sa_occ.
               description = 'rib top condition occurrence' ) AND ( SIZEOF( QUERY ( sdr <* QUERY ( sar <* 
               USEDIN( sa_occ, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( sar.description = 'rib top usage' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIB_TOP_FLOOR' IN TYPEOF( 
               sdr.relating_shape_aspect ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.RIB_TOP' 
               IN TYPEOF( sdr.related_shape_aspect.of_shape.definition ) ) ) ) ) = 1 ) ) ) ) = 1 ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIRECTION_SHAPE_REPRESENTATION' IN 
               TYPEOF( pdr.used_representation ) ) AND ( pdr.used_representation.name = 'removal direction' ) ) ) ) 
               = 1 ) ) ) ) = 1 );
      wr3: ( SIZEOF( QUERY ( pdr <* get_property_definition_representations( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLANAR_SHAPE_REPRESENTATION'  IN TYPEOF( pdr.
               used_representation ) ) AND ( pdr.used_representation.name = 'maximum feature limit' ) ) ) ) 
               >= 0 );
  END_ENTITY; -- rib_top (line:27873 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eRIB_TOP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _rib_top.self
    }
    public let partialEntity: _rib_top

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eFEATURE_DEFINITION: eFEATURE_DEFINITION 	// [2]
    public var super_eRIB_TOP: eRIB_TOP { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_rib_top.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _rib_top.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _rib_top.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _rib_top.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "RIB_TOP", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eFEATURE_DEFINITION.self)
      entityDef.add(supertype: eRIB_TOP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eRIB_TOP.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eRIB_TOP.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

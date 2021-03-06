/* file: general_feature.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY general_feature
    SUBTYPE OF ( shape_feature_definition );
    WHERE
      wr1: ( ( SIZEOF( get_property_definition_representations( SELF ) ) <= 1 ) AND ( SIZEOF( QUERY ( pdr <* 
               get_property_definition_representations( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) ) <= 1 ) );
      wr2: ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( sa.description = 'course of travel occurrence'  ) ) ) 
               = SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( sa.description = 
               'course of travel occurrence'  ) AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) AND ( sar.name = 'course of travel' ) ) ) ) 
               = 1 ) ) ) ) );
      wr3: ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( sa.description = 'course of travel occurrence'  ) ) ) 
               = SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( sa.description = 
               'course of travel occurrence'  ) AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_FEATURE_COMPONENT'  IN TYPEOF( sar.
               relating_shape_aspect ) ) ) ) ) = 1 ) ) ) ) );
      wr4: ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( sa.description = 'boundary occurrence' ) ) ) 
               = SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( sa.description = 'boundary occurrence' ) 
               AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT'  ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) 
               AND ( sar.description = 'profile usage' ) ) ) ) = 1 ) ) ) ) );
      wr5: ( ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_SHAPE_ASPECT'  IN TYPEOF( sa ) ) ) ) 
               <= 1 ) AND ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_SHAPE_ASPECT'  IN TYPEOF( sa ) ) 
               AND ( sa.name = 'general compound feature' ) AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATING_SHAPE_ASPECT'  ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( sar ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSTANCED_FEATURE'  IN TYPEOF( sar.
               related_shape_aspect ) ) ) ) ) >= 2 ) ) ) ) <= 1 ) );
  END_ENTITY; -- general_feature (line:16656 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  SUPER- ENTITY(3)	shape_feature_definition
    (no local attributes)

  ENTITY(SELF)	general_feature
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _general_feature : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGENERAL_FEATURE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
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
    public static func WHERE_wr1(SELF: eGENERAL_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = GET_PROPERTY_DEFINITION_REPRESENTATIONS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP4 = GET_PROPERTY_DEFINITION_REPRESENTATIONS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP5 = _TEMP4?.QUERY{ PDR in 

          let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: eSHAPE_REPRESENTATION_WITH_PARAMETERS.self)
          return _TEMP1 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP6 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP8 = _TEMP3 && _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr2(SELF: eGENERAL_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP2 = _TEMP1?.QUERY{ SA in 

          let _TEMP1 = SA.DESCRIPTION
          let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("course of travel occurrence"))
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP5 = _TEMP4?.QUERY{ SA in 

          let _TEMP1 = SA.DESCRIPTION
          let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("course of travel occurrence"))
          let _TEMP3 = SDAI.USEDIN(T: SA, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
          let _TEMP4 = _TEMP3.QUERY{ SAR in 

              let _TEMP1 = SDAI.TYPEOF(SAR, IS: eSHAPE_DEFINING_RELATIONSHIP.self)
              let _TEMP2 = /*runtime*/SAR.NAME
              let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "course of travel"))
              let _TEMP4 = _TEMP1 && _TEMP3
              return _TEMP4 }
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = _TEMP2 && _TEMP6
          return _TEMP7 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP3 .==. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr3(SELF: eGENERAL_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP2 = _TEMP1?.QUERY{ SA in 

          let _TEMP1 = SA.DESCRIPTION
          let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("course of travel occurrence"))
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP5 = _TEMP4?.QUERY{ SA in 

          let _TEMP1 = SA.DESCRIPTION
          let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("course of travel occurrence"))
          let _TEMP3 = SDAI.USEDIN(T: SA, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
          let _TEMP4 = _TEMP3.QUERY{ SAR in 

              let _TEMP1 = SDAI.TYPEOF(SAR, IS: eSHAPE_DEFINING_RELATIONSHIP.self)
              let _TEMP2 = SDAI.TYPEOF(SAR.RELATING_SHAPE_ASPECT, IS: ePATH_FEATURE_COMPONENT.self)
              let _TEMP3 = _TEMP1 && _TEMP2
              return _TEMP3 }
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = _TEMP2 && _TEMP6
          return _TEMP7 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP3 .==. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr4(SELF: eGENERAL_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP2 = _TEMP1?.QUERY{ SA in 

          let _TEMP1 = SA.DESCRIPTION
          let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("boundary occurrence"))
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP5 = _TEMP4?.QUERY{ SA in 

          let _TEMP1 = SA.DESCRIPTION
          let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("boundary occurrence"))
          let _TEMP3 = SDAI.USEDIN(T: SA, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
          let _TEMP4 = _TEMP3.QUERY{ SAR in 

              let _TEMP1 = SDAI.TYPEOF(SAR, IS: eSHAPE_DEFINING_RELATIONSHIP.self)
              let _TEMP2 = /*runtime*/SAR.DESCRIPTION
              let _TEMP3 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
                "profile usage"))
              let _TEMP4 = _TEMP1 && _TEMP3
              return _TEMP4 }
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = _TEMP2 && _TEMP6
          return _TEMP7 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP3 .==. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr5(SELF: eGENERAL_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP2 = _TEMP1?.QUERY{ SA in 

          let _TEMP1 = SDAI.TYPEOF(SA, IS: eCOMPOSITE_SHAPE_ASPECT.self)
          return _TEMP1 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP5 = GET_SHAPE_ASPECTS(sCHARACTERIZED_DEFINITION(/*eGENERAL_FEATURE*/SELF))
      let _TEMP6 = _TEMP5?.QUERY{ SA in 

          let _TEMP1 = SDAI.TYPEOF(SA, IS: eCOMPOSITE_SHAPE_ASPECT.self)
          let _TEMP2 = SA.NAME
          let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP2) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
            "general compound feature"))
          let _TEMP4 = _TEMP1 && _TEMP3
          let _TEMP5 = SDAI.USEDIN(T: SA, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .eSHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT)
          let _TEMP6 = _TEMP5.QUERY{ SAR in 

              let _TEMP1 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
              let _TEMP2 = SDAI.TYPEOF(SAR.RELATED_SHAPE_ASPECT, IS: eINSTANCED_FEATURE.self)
              let _TEMP3 = _TEMP1 && _TEMP2
              return _TEMP3 }
          let _TEMP7 = SDAI.SIZEOF(_TEMP6)
          let _TEMP8 = _TEMP7 >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
          let _TEMP9 = _TEMP4 && _TEMP8
          return _TEMP9 }
      let _TEMP7 = SDAI.SIZEOF(_TEMP6)
      let _TEMP8 = _TEMP7 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP9 = _TEMP4 && _TEMP8
      return _TEMP9
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
  ENTITY general_feature
    SUBTYPE OF ( shape_feature_definition );
    WHERE
      wr1: ( ( SIZEOF( get_property_definition_representations( SELF ) ) <= 1 ) AND ( SIZEOF( QUERY ( pdr <* 
               get_property_definition_representations( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) ) <= 1 ) );
      wr2: ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( sa.description = 'course of travel occurrence'  ) ) ) 
               = SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( sa.description = 
               'course of travel occurrence'  ) AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) AND ( sar.name = 'course of travel' ) ) ) ) 
               = 1 ) ) ) ) );
      wr3: ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( sa.description = 'course of travel occurrence'  ) ) ) 
               = SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( sa.description = 
               'course of travel occurrence'  ) AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_FEATURE_COMPONENT'  IN TYPEOF( sar.
               relating_shape_aspect ) ) ) ) ) = 1 ) ) ) ) );
      wr4: ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( sa.description = 'boundary occurrence' ) ) ) 
               = SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( sa.description = 'boundary occurrence' ) 
               AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT'  ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_DEFINING_RELATIONSHIP'  IN TYPEOF( sar ) ) 
               AND ( sar.description = 'profile usage' ) ) ) ) = 1 ) ) ) ) );
      wr5: ( ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_SHAPE_ASPECT'  IN TYPEOF( sa ) ) ) ) 
               <= 1 ) AND ( SIZEOF( QUERY ( sa <* get_shape_aspects( SELF ) | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMPOSITE_SHAPE_ASPECT'  IN TYPEOF( sa ) ) 
               AND ( sa.name = 'general compound feature' ) AND ( SIZEOF( QUERY ( sar <* USEDIN( sa, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATING_SHAPE_ASPECT'  ) | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( sar ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSTANCED_FEATURE'  IN TYPEOF( sar.
               related_shape_aspect ) ) ) ) ) >= 2 ) ) ) ) <= 1 ) );
  END_ENTITY; -- general_feature (line:16656 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGENERAL_FEATURE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _general_feature.self
    }
    public let partialEntity: _general_feature

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eFEATURE_DEFINITION: eFEATURE_DEFINITION 	// [2]
    public let super_eSHAPE_FEATURE_DEFINITION: eSHAPE_FEATURE_DEFINITION 	// [3]
    public var super_eGENERAL_FEATURE: eGENERAL_FEATURE { return self } 	// [4]

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
      guard let partial = complexEntity?.partialEntityInstance(_general_feature.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eFEATURE_DEFINITION.self) else { return nil }
      self.super_eFEATURE_DEFINITION = super2

      guard let super3 = complexEntity?.entityReference(eSHAPE_FEATURE_DEFINITION.self) else { return nil }
      self.super_eSHAPE_FEATURE_DEFINITION = super3

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
      result[prefix2 + " .WHERE_wr1"] = _general_feature.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _general_feature.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _general_feature.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _general_feature.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _general_feature.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GENERAL_FEATURE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eFEATURE_DEFINITION.self)
      entityDef.add(supertype: eSHAPE_FEATURE_DEFINITION.self)
      entityDef.add(supertype: eGENERAL_FEATURE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGENERAL_FEATURE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eGENERAL_FEATURE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

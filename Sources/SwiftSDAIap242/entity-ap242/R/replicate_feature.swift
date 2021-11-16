/* file: replicate_feature.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY replicate_feature
    SUPERTYPE OF ( 
        ONEOF ( 
            circular_pattern, 
            rectangular_pattern, 
            feature_pattern ) )
    SUBTYPE OF ( feature_definition );
    WHERE
      wr1: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS' IN 
               TYPEOF( pdr.used_representation ) ) ) ) = 1 ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( fcr <* QUERY ( sar <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATING_SHAPE_ASPECT'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( sar ) ) ) | ( ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPLICATE_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSTANCED_FEATURE' ] * TYPEOF( fcr.
               related_shape_aspect ) ) >= 1 ) AND ( fcr.name = 'pattern basis' ) ) ) ) = 1 );
      wr3: ( ( SIZEOF( QUERY ( sar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT'  ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) ) + SIZEOF( QUERY ( sar <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( sar ) ) ) ) ) ) = 0 );
  END_ENTITY; -- replicate_feature (line:27385 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	replicate_feature
    (no local attributes)

  SUB- ENTITY(4)	circular_pattern
    (no local attributes)

  SUB- ENTITY(5)	rectangular_pattern
    (no local attributes)

  SUB- ENTITY(6)	feature_pattern
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _replicate_feature : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREPLICATE_FEATURE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMACHINING_FEATURE_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: eREPLICATE_FEATURE?) -> SDAI.LOGICAL {
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
    public static func WHERE_wr2(SELF: eREPLICATE_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eSHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT)
      let _TEMP2 = _TEMP1.QUERY{ SAR in 

          let _TEMP1 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
          return _TEMP1 }
      let _TEMP3 = _TEMP2.QUERY{ FCR in 

          let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
            "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPLICATE_FEATURE")), 
            SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSTANCED_FEATURE"))] 
            as [SDAI.AggregationInitializerElement<SDAI.STRING>])
          let _TEMP2 = /*runtime*/FCR.RELATED_SHAPE_ASPECT
          let _TEMP3 = SDAI.TYPEOF(_TEMP2)
          let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP3)
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = /*runtime*/FCR.NAME
          let _TEMP8 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP7) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
            "pattern basis"))
          let _TEMP9 = _TEMP6 && _TEMP8
          return _TEMP9 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP5
    }
    public static func WHERE_wr3(SELF: eREPLICATE_FEATURE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eSHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT)
      let _TEMP2 = _TEMP1.QUERY{ SAR in 

          let _TEMP1 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eSHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT)
      let _TEMP5 = _TEMP4.QUERY{ SAR in 

          let _TEMP1 = SDAI.TYPEOF(SAR, IS: eFEATURE_COMPONENT_RELATIONSHIP.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP6 = SDAI.SIZEOF(_TEMP5)
      let _TEMP7 = _TEMP3 + _TEMP6
      let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP8
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
  ENTITY replicate_feature
    SUPERTYPE OF ( 
        ONEOF ( 
            circular_pattern, 
            rectangular_pattern, 
            feature_pattern ) )
    SUBTYPE OF ( feature_definition );
    WHERE
      wr1: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS' IN 
               TYPEOF( pdr.used_representation ) ) ) ) = 1 ) ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( fcr <* QUERY ( sar <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATING_SHAPE_ASPECT'  ) | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( sar ) ) ) | ( ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPLICATE_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.INSTANCED_FEATURE' ] * TYPEOF( fcr.
               related_shape_aspect ) ) >= 1 ) AND ( fcr.name = 'pattern basis' ) ) ) ) = 1 );
      wr3: ( ( SIZEOF( QUERY ( sar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT'  ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( 
               sar ) ) ) ) ) + SIZEOF( QUERY ( sar <* USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_ASPECT_RELATIONSHIP.'
               + 'RELATED_SHAPE_ASPECT'  ) | ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'FEATURE_COMPONENT_RELATIONSHIP'  IN TYPEOF( sar ) ) ) ) ) ) = 0 );
  END_ENTITY; -- replicate_feature (line:27385 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREPLICATE_FEATURE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _replicate_feature.self
    }
    public let partialEntity: _replicate_feature

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eFEATURE_DEFINITION: eFEATURE_DEFINITION 	// [2]
    public var super_eREPLICATE_FEATURE: eREPLICATE_FEATURE { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eCIRCULAR_PATTERN: eCIRCULAR_PATTERN? {	// [4]
      return self.complexEntity.entityReference(eCIRCULAR_PATTERN.self)
    }

    public var sub_eRECTANGULAR_PATTERN: eRECTANGULAR_PATTERN? {	// [5]
      return self.complexEntity.entityReference(eRECTANGULAR_PATTERN.self)
    }

    public var sub_eFEATURE_PATTERN: eFEATURE_PATTERN? {	// [6]
      return self.complexEntity.entityReference(eFEATURE_PATTERN.self)
    }


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
      guard let partial = complexEntity?.partialEntityInstance(_replicate_feature.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _replicate_feature.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _replicate_feature.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _replicate_feature.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REPLICATE_FEATURE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eFEATURE_DEFINITION.self)
      entityDef.add(supertype: eREPLICATE_FEATURE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eREPLICATE_FEATURE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eREPLICATE_FEATURE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: closed_path_profile.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY closed_path_profile
    SUBTYPE OF ( shape_aspect );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_DEFINITION' IN TYPEOF( SELF.
               of_shape.definition ) );
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
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( impl_rep.used_representation.items ) =
               1 ) ) ) ) = 0 ) ) ) ) = 0 );
      wr4: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLACEMENT' IN
               TYPEOF( it ) ) AND ( it.name = 'orientation' ) ) ) ) = 1 ) ) ) ) = 0 ) ) ) ) = 0 );
      wr5: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_SHAPE_REPRESENTATION' IN TYPEOF( pdr
               .used_representation ) ) ) ) = 1 ) ) ) ) = 0 );
  END_ENTITY; -- closed_path_profile (line:9565 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	closed_path_profile
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _closed_path_profile : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCLOSED_PATH_PROFILE.self
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
    public static func WHERE_wr1(SELF: eCLOSED_PATH_PROFILE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.OF_SHAPE.DEFINITION, IS: eFEATURE_COMPONENT_DEFINITION.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eCLOSED_PATH_PROFILE?) -> SDAI.LOGICAL {
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
    public static func WHERE_wr3(SELF: eCLOSED_PATH_PROFILE?) -> SDAI.LOGICAL {
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
              let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
              let _TEMP5 =  !_TEMP4
              return _TEMP5 }
          let _TEMP4 = SDAI.SIZEOF(_TEMP3)
          let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
          let _TEMP6 =  !_TEMP5
          return _TEMP6 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr4(SELF: eCLOSED_PATH_PROFILE?) -> SDAI.LOGICAL {
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
    public static func WHERE_wr5(SELF: eCLOSED_PATH_PROFILE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .ePROPERTY_DEFINITION.DEFINITION)
      let _TEMP2 = _TEMP1.QUERY{ PD in 

          let _TEMP1 = SDAI.USEDIN(T: PD, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
            .ePROPERTY_DEFINITION_REPRESENTATION.DEFINITION)
          let _TEMP2 = _TEMP1.QUERY{ PDR in 

              let _TEMP1 = SDAI.TYPEOF(PDR.USED_REPRESENTATION, IS: ePATH_SHAPE_REPRESENTATION.self)
              return _TEMP1 }
          let _TEMP3 = SDAI.SIZEOF(_TEMP2)
          let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP5 =  !_TEMP4
          return _TEMP5 }
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
  ENTITY closed_path_profile
    SUBTYPE OF ( shape_aspect );
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.FEATURE_COMPONENT_DEFINITION' IN TYPEOF( SELF.
               of_shape.definition ) );
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
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( impl_rep.used_representation.items ) =
               1 ) ) ) ) = 0 ) ) ) ) = 0 );
      wr4: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( impl_rep <* QUERY ( pdr <* 
               USEDIN( pd, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  ) | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SHAPE_REPRESENTATION_WITH_PARAMETERS'  IN 
               TYPEOF( pdr.used_representation ) ) ) | ( NOT ( SIZEOF( QUERY ( it <* impl_rep.
               used_representation.items | ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PLACEMENT' IN
               TYPEOF( it ) ) AND ( it.name = 'orientation' ) ) ) ) = 1 ) ) ) ) = 0 ) ) ) ) = 0 );
      wr5: ( SIZEOF( QUERY ( pd <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'PROPERTY_DEFINITION.DEFINITION'  ) | ( NOT ( SIZEOF( QUERY ( pdr <* USEDIN( pd, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROPERTY_DEFINITION_REPRESENTATION.DEFINITION'  )
               | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PATH_SHAPE_REPRESENTATION' IN TYPEOF( pdr
               .used_representation ) ) ) ) = 1 ) ) ) ) = 0 );
  END_ENTITY; -- closed_path_profile (line:9565 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCLOSED_PATH_PROFILE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _closed_path_profile.self
    }
    public let partialEntity: _closed_path_profile

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public var super_eCLOSED_PATH_PROFILE: eCLOSED_PATH_PROFILE { return self } 	// [2]

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
      guard let partial = complexEntity?.partialEntityInstance(_closed_path_profile.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _closed_path_profile.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _closed_path_profile.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _closed_path_profile.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _closed_path_profile.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _closed_path_profile.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CLOSED_PATH_PROFILE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eCLOSED_PATH_PROFILE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eCLOSED_PATH_PROFILE.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCLOSED_PATH_PROFILE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eCLOSED_PATH_PROFILE.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCLOSED_PATH_PROFILE.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCLOSED_PATH_PROFILE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: datum.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY datum
    SUBTYPE OF ( shape_aspect );
      identification  : identifier;
    INVERSE
      established_by_relationships : SET [1 : ?] OF shape_aspect_relationship FOR related_shape_aspect -- defined in ENTITY: shape_aspect_relationship;
    UNIQUE
      ur1 : identification, SELF\shape_aspect.of_shape;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMMON_DATUM' IN TYPEOF( SELF ) ) XOR ( 
               SIZEOF( QUERY ( x <* SELF\datum.established_by_relationships | ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_TARGET' ] * TYPEOF( x\
               shape_aspect_relationship.relating_shape_aspect ) ) = 1 ) ) ) >= 1 ) );
      wr2: ( SIZEOF( QUERY ( x <* SELF\datum.established_by_relationships | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_FEATURE'  IN TYPEOF( x\
               shape_aspect_relationship.relating_shape_aspect ) ) ) ) <= 1 );
      wr3: ( SELF\shape_aspect.product_definitional = FALSE );
      wr4: ( SELF\shape_aspect.name = '' );
  END_ENTITY; -- datum (line:11665 file:ap242ed2_mim_lf_v1.101.TY.exp)

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


  ENTITY(SELF)	datum
    ATTR:  identification,	TYPE: identifier -- EXPLICIT

    ATTR:  established_by_relationships,	TYPE: SET [1 : ?] OF shape_aspect_relationship -- INVERSE
      FOR related_shape_aspect;


  SUB- ENTITY(3)	common_datum
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _datum : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATUM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _identification: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _shape_aspect_relationship ._related_shape_aspect
    internal var _established_by_relationships: SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP> {
      return __established_by_relationships.map{ $0.reference }
    }
    private var __established_by_relationships = SDAI.SET<SDAI.UnownedWrap<eSHAPE_ASPECT_RELATIONSHIP>>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _established_by_relationships__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eSHAPE_ASPECT_RELATIONSHIP.self) else { return }
      self.__established_by_relationships.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _established_by_relationships__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eSHAPE_ASPECT_RELATIONSHIP.self) else { return }
      let success = self.__established_by_relationships.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _established_by_relationships__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eSHAPE_ASPECT_RELATIONSHIP.self) else { return }
      let success = self.__established_by_relationships.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATUM_OR_COMMON_DATUM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._identification.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._identification.value.isValueEqualOptionally(to: rhs._identification.value, visited: &comppairs)	{
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
      if let comp = self._identification.value.isValueEqualOptionally(to: rhs._identification.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDATUM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF, IS: eCOMMON_DATUM.self)
      let _TEMP2 = SELF.GROUP_REF(eDATUM.self)
      let _TEMP3 = _TEMP2?.ESTABLISHED_BY_RELATIONSHIPS
      let _TEMP4 = _TEMP3?.QUERY{ X in 

          let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_FEATURE")), 
            SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_TARGET"))] 
            as [SDAI.AggregationInitializerElement<SDAI.STRING>])
          let _TEMP2 = X.GROUP_REF(eSHAPE_ASPECT_RELATIONSHIP.self)
          let _TEMP3 = _TEMP2?.RELATING_SHAPE_ASPECT
          let _TEMP4 = SDAI.TYPEOF(_TEMP3)
          let _TEMP5 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP4)
          let _TEMP6 = SDAI.SIZEOF(_TEMP5)
          let _TEMP7 = _TEMP6 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          return _TEMP7 }
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP7 = _TEMP1 .!=. _TEMP6
      return _TEMP7
    }
    public static func WHERE_wr2(SELF: eDATUM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDATUM.self)
      let _TEMP2 = _TEMP1?.ESTABLISHED_BY_RELATIONSHIPS
      let _TEMP3 = _TEMP2?.QUERY{ X in 

          let _TEMP1 = SDAI.TYPEOF(X.GROUP_REF(eSHAPE_ASPECT_RELATIONSHIP.self)?.RELATING_SHAPE_ASPECT, 
            IS: eDATUM_FEATURE.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP5
    }
    public static func WHERE_wr3(SELF: eDATUM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.PRODUCT_DEFINITIONAL
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.FALSE))
      return _TEMP3
    }
    public static func WHERE_wr4(SELF: eDATUM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(""))
      return _TEMP3
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eDATUM else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      let attr1 = SELF.IDENTIFICATION
      attributes.append( AnyHashable(attr1) )
      guard let attr2 = SELF.GROUP_REF(eSHAPE_ASPECT.self)?.OF_SHAPE else { return nil }
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(IDENTIFICATION: tIDENTIFIER) {
      self._identification = IDENTIFICATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( IDENTIFICATION: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY datum
    SUBTYPE OF ( shape_aspect );
      identification  : identifier;
    INVERSE
      established_by_relationships : SET [1 : ?] OF shape_aspect_relationship FOR related_shape_aspect -- defined in ENTITY: shape_aspect_relationship;
    UNIQUE
      ur1 : identification, SELF\shape_aspect.of_shape;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.COMMON_DATUM' IN TYPEOF( SELF ) ) XOR ( 
               SIZEOF( QUERY ( x <* SELF\datum.established_by_relationships | ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_FEATURE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_TARGET' ] * TYPEOF( x\
               shape_aspect_relationship.relating_shape_aspect ) ) = 1 ) ) ) >= 1 ) );
      wr2: ( SIZEOF( QUERY ( x <* SELF\datum.established_by_relationships | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DATUM_FEATURE'  IN TYPEOF( x\
               shape_aspect_relationship.relating_shape_aspect ) ) ) ) <= 1 );
      wr3: ( SELF\shape_aspect.product_definitional = FALSE );
      wr4: ( SELF\shape_aspect.name = '' );
  END_ENTITY; -- datum (line:11665 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATUM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _datum.self
    }
    public let partialEntity: _datum

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public var super_eDATUM: eDATUM { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eCOMMON_DATUM: eCOMMON_DATUM? {	// [3]
      return self.complexEntity.entityReference(eCOMMON_DATUM.self)
    }


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

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATUM`` )
    public var IDENTIFICATION: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._identification )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._identification = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eSHAPE_ASPECT_RELATIONSHIP .RELATED_SHAPE_ASPECT
    /// - origin: SELF( ``eDATUM`` )
    public var ESTABLISHED_BY_RELATIONSHIPS: SDAI.SET<eSHAPE_ASPECT_RELATIONSHIP>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._established_by_relationships )
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
      guard let partial = complexEntity?.partialEntityInstance(_datum.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _datum.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _datum.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _datum.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _datum.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATUM", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eDATUM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eDATUM.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDATUM.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eDATUM.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "IDENTIFICATION", keyPath: \eDATUM.IDENTIFICATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ESTABLISHED_BY_RELATIONSHIPS", keyPath: \eDATUM.ESTABLISHED_BY_RELATIONSHIPS, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eDATUM.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATUM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _datum.UNIQUE_ur1)

      return entityDef
    }

  }
}

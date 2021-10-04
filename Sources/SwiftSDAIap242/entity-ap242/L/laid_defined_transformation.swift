/* file: laid_defined_transformation.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY laid_defined_transformation
    SUBTYPE OF ( transformation_with_derived_angle );
  END_ENTITY; -- laid_defined_transformation (line:18858 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	item_defined_transformation
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: kinematic_pair,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  transform_item_1,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: kinematic_pair,	TYPE: rigid_placement
          ENTITY: link_motion_transformation,	TYPE: rigid_placement
      *** ENTITY: transformation_with_derived_angle,	TYPE: angle_direction_reference_with_a2p3d_select

    ATTR:  transform_item_2,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: kinematic_pair,	TYPE: rigid_placement
          ENTITY: link_motion_transformation,	TYPE: kinematic_path
      *** ENTITY: transformation_with_derived_angle,	TYPE: axis2_placement_3d


  SUPER- ENTITY(2)	transformation_with_derived_angle
    REDCR: transform_item_1,	TYPE: angle_direction_reference_with_a2p3d_select -- EXPLICIT
      -- OVERRIDING ENTITY: item_defined_transformation

    REDCR: transform_item_2,	TYPE: axis2_placement_3d -- EXPLICIT
      -- OVERRIDING ENTITY: item_defined_transformation

    ATTR:  orientation_angle,	TYPE: plane_angle_measure -- DERIVED
      := derive_angle( SELF\item_defined_transformation.transform_item_1, SELF\item_defined_transformation.
        transform_item_2 )


  ENTITY(SELF)	laid_defined_transformation
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _laid_defined_transformation : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eLAID_DEFINED_TRANSFORMATION.self
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
  ENTITY laid_defined_transformation
    SUBTYPE OF ( transformation_with_derived_angle );
  END_ENTITY; -- laid_defined_transformation (line:18858 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eLAID_DEFINED_TRANSFORMATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _laid_defined_transformation.self
    }
    public let partialEntity: _laid_defined_transformation

    //MARK: SUPERTYPES
    public let super_eITEM_DEFINED_TRANSFORMATION: eITEM_DEFINED_TRANSFORMATION 	// [1]
    public let super_eTRANSFORMATION_WITH_DERIVED_ANGLE: eTRANSFORMATION_WITH_DERIVED_ANGLE 	// [2]
    public var super_eLAID_DEFINED_TRANSFORMATION: eLAID_DEFINED_TRANSFORMATION { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eITEM_DEFINED_TRANSFORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eITEM_DEFINED_TRANSFORMATION.partialEntity._description
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eTRANSFORMATION_WITH_DERIVED_ANGLE`` )
    public var ORIENTATION_ANGLE: tPLANE_ANGLE_MEASURE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ORIENTATION_ANGLE") {
          return cached.value as! tPLANE_ANGLE_MEASURE? 
        }
        let origin = super_eTRANSFORMATION_WITH_DERIVED_ANGLE
        let value = tPLANE_ANGLE_MEASURE(origin.partialEntity._orientation_angle__getter(SELF: origin))
        updateCache(derivedAttributeName:"ORIENTATION_ANGLE", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eTRANSFORMATION_WITH_DERIVED_ANGLE`` )
    public var TRANSFORM_ITEM_1: sANGLE_DIRECTION_REFERENCE_WITH_A2P3D_SELECT {
      get {
        return SDAI.UNWRAP( sANGLE_DIRECTION_REFERENCE_WITH_A2P3D_SELECT( super_eITEM_DEFINED_TRANSFORMATION
          .partialEntity._transform_item_1 ) )
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._transform_item_1 = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUPER( ``eTRANSFORMATION_WITH_DERIVED_ANGLE`` )
    public var TRANSFORM_ITEM_2: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( eAXIS2_PLACEMENT_3D( super_eITEM_DEFINED_TRANSFORMATION.partialEntity
          ._transform_item_2 ) )
      }
      set(newValue) {
        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._transform_item_2 = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eITEM_DEFINED_TRANSFORMATION`` )
    public var NAME: tLABEL {
      get {
        if let resolved = _item_defined_transformation._name__provider(complex: self.complexEntity) {
          let value = resolved._name__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eITEM_DEFINED_TRANSFORMATION.partialEntity._name )
        }
      }
      set(newValue) {
        if let _ = _item_defined_transformation._name__provider(complex: self.complexEntity) { return }

        let partial = super_eITEM_DEFINED_TRANSFORMATION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_laid_defined_transformation.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eITEM_DEFINED_TRANSFORMATION.self) else { return nil }
      self.super_eITEM_DEFINED_TRANSFORMATION = super1

      guard let super2 = complexEntity?.entityReference(eTRANSFORMATION_WITH_DERIVED_ANGLE.self) else { return nil }
      self.super_eTRANSFORMATION_WITH_DERIVED_ANGLE = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "LAID_DEFINED_TRANSFORMATION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eITEM_DEFINED_TRANSFORMATION.self)
      entityDef.add(supertype: eTRANSFORMATION_WITH_DERIVED_ANGLE.self)
      entityDef.add(supertype: eLAID_DEFINED_TRANSFORMATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eLAID_DEFINED_TRANSFORMATION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORIENTATION_ANGLE", keyPath: \eLAID_DEFINED_TRANSFORMATION.ORIENTATION_ANGLE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_1", keyPath: \eLAID_DEFINED_TRANSFORMATION.TRANSFORM_ITEM_1, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRANSFORM_ITEM_2", keyPath: \eLAID_DEFINED_TRANSFORMATION.TRANSFORM_ITEM_2, 
        kind: .explicitRedeclaring, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eLAID_DEFINED_TRANSFORMATION.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

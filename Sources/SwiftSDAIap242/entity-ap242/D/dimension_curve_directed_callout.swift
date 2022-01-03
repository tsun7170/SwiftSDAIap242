/* file: dimension_curve_directed_callout.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY dimension_curve_directed_callout
    SUBTYPE OF ( draughting_callout );
    WHERE
      wr1: ( SIZEOF( QUERY ( d_c <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSION_CURVE'  IN TYPEOF( d_c ) ) ) ) <= 2 );
      wr2: ( SIZEOF( SELF\draughting_callout.contents ) >= 2 );
  END_ENTITY; -- dimension_curve_directed_callout (line:12436 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	draughting_callout
    ATTR:  contents,	TYPE: SET [1 : ?] OF draughting_callout_element -- EXPLICIT
      -- observed by
        ENTITY(1): annotation_placeholder_occurrence,	ATTR: the_callout,	TYPE: draughting_callout


  ENTITY(SELF)	dimension_curve_directed_callout
    (no local attributes)

  SUB- ENTITY(5)	linear_dimension
    (no local attributes)

  SUB- ENTITY(6)	radius_dimension
    (no local attributes)

  SUB- ENTITY(7)	curve_dimension
    (no local attributes)

  SUB- ENTITY(8)	diameter_dimension
    (no local attributes)

  SUB- ENTITY(9)	angular_dimension
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _dimension_curve_directed_callout : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDIMENSION_CURVE_DIRECTED_CALLOUT.self
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
    public static func WHERE_wr1(SELF: eDIMENSION_CURVE_DIRECTED_CALLOUT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDRAUGHTING_CALLOUT.self)
      let _TEMP2 = _TEMP1?.CONTENTS
      let _TEMP3 = _TEMP2?.QUERY{ D_C in 

          let _TEMP1 = SDAI.TYPEOF(D_C, IS: eDIMENSION_CURVE.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      return _TEMP5
    }
    public static func WHERE_wr2(SELF: eDIMENSION_CURVE_DIRECTED_CALLOUT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDRAUGHTING_CALLOUT.self)
      let _TEMP2 = _TEMP1?.CONTENTS
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 >= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
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
  ENTITY dimension_curve_directed_callout
    SUBTYPE OF ( draughting_callout );
    WHERE
      wr1: ( SIZEOF( QUERY ( d_c <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSION_CURVE'  IN TYPEOF( d_c ) ) ) ) <= 2 );
      wr2: ( SIZEOF( SELF\draughting_callout.contents ) >= 2 );
  END_ENTITY; -- dimension_curve_directed_callout (line:12436 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDIMENSION_CURVE_DIRECTED_CALLOUT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _dimension_curve_directed_callout.self
    }
    public let partialEntity: _dimension_curve_directed_callout

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eDRAUGHTING_CALLOUT: eDRAUGHTING_CALLOUT 	// [3]
    public var super_eDIMENSION_CURVE_DIRECTED_CALLOUT: eDIMENSION_CURVE_DIRECTED_CALLOUT { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eLINEAR_DIMENSION: eLINEAR_DIMENSION? {	// [5]
      return self.complexEntity.entityReference(eLINEAR_DIMENSION.self)
    }

    public var sub_eRADIUS_DIMENSION: eRADIUS_DIMENSION? {	// [6]
      return self.complexEntity.entityReference(eRADIUS_DIMENSION.self)
    }

    public var sub_eCURVE_DIMENSION: eCURVE_DIMENSION? {	// [7]
      return self.complexEntity.entityReference(eCURVE_DIMENSION.self)
    }

    public var sub_eDIAMETER_DIMENSION: eDIAMETER_DIMENSION? {	// [8]
      return self.complexEntity.entityReference(eDIAMETER_DIMENSION.self)
    }

    public var sub_eANGULAR_DIMENSION: eANGULAR_DIMENSION? {	// [9]
      return self.complexEntity.entityReference(eANGULAR_DIMENSION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eDRAUGHTING_CALLOUT`` )
    public var CONTENTS: SDAI.SET<sDRAUGHTING_CALLOUT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eDRAUGHTING_CALLOUT.partialEntity._contents )
      }
      set(newValue) {
        let partial = super_eDRAUGHTING_CALLOUT.partialEntity
        partial._contents = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_dimension_curve_directed_callout.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eDRAUGHTING_CALLOUT.self) else { return nil }
      self.super_eDRAUGHTING_CALLOUT = super3

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
      result[prefix2 + " .WHERE_wr1"] = _dimension_curve_directed_callout.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _dimension_curve_directed_callout.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DIMENSION_CURVE_DIRECTED_CALLOUT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDRAUGHTING_CALLOUT.self)
      entityDef.add(supertype: eDIMENSION_CURVE_DIRECTED_CALLOUT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTENTS", keyPath: \eDIMENSION_CURVE_DIRECTED_CALLOUT.CONTENTS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDIMENSION_CURVE_DIRECTED_CALLOUT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eDIMENSION_CURVE_DIRECTED_CALLOUT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

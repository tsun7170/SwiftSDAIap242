/* file: cartesian_transformation_operator_2d.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY cartesian_transformation_operator_2d
    SUBTYPE OF ( cartesian_transformation_operator );
    DERIVE
      u  : LIST [2 : 2] OF direction := base_axis( 2, SELF\cartesian_transformation_operator.axis1, SELF\
             cartesian_transformation_operator.axis2, ? );
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 2 );
  END_ENTITY; -- cartesian_transformation_operator_2d (line:8868 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	functionally_defined_transformation
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT


  SUPER- ENTITY(4)	cartesian_transformation_operator
    ATTR:  axis1,	TYPE: OPTIONAL direction -- EXPLICIT

    ATTR:  axis2,	TYPE: OPTIONAL direction -- EXPLICIT

    ATTR:  local_origin,	TYPE: cartesian_point -- EXPLICIT

    ATTR:  scale,	TYPE: OPTIONAL REAL -- EXPLICIT

    ATTR:  scl,	TYPE: REAL -- DERIVED
      := NVL( scale, 1 )


  ENTITY(SELF)	cartesian_transformation_operator_2d
    ATTR:  u,	TYPE: LIST [2 : 2] OF direction -- DERIVED
      := base_axis( 2, SELF\cartesian_transformation_operator.axis1, SELF\cartesian_transformation_operator.
        axis2, ? )


*/


//MARK: - Partial Entity
  public final class _cartesian_transformation_operator_2d : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCARTESIAN_TRANSFORMATION_OPERATOR_2D.self
    }

    //ATTRIBUTES
    /// DERIVE ATTRIBUTE
    internal func _u__getter(SELF: eCARTESIAN_TRANSFORMATION_OPERATOR_2D) -> (SDAI.LIST<eDIRECTION>/*[2:2]*/ )?  {

      let _TEMP1 = SELF.GROUP_REF(eCARTESIAN_TRANSFORMATION_OPERATOR.self)
      let _TEMP2 = _TEMP1?.AXIS1
      let _TEMP3 = SELF.GROUP_REF(eCARTESIAN_TRANSFORMATION_OPERATOR.self)
      let _TEMP4 = _TEMP3?.AXIS2
      let _TEMP5 = BASE_AXIS(DIM: SDAI.INTEGER(2), 
                             AXIS1: _TEMP2, 
                             AXIS2: _TEMP4, 
                             AXIS3: (nil as eDIRECTION?))
      return SDAI.LIST<eDIRECTION>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(2), 
        /*SDAI.LIST<eDIRECTION>[2:3] */_TEMP5)
    }

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
    public static func WHERE_wr1(SELF: eCARTESIAN_TRANSFORMATION_OPERATOR_2D?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eGEOMETRIC_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.DIM
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      return _TEMP3
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
  ENTITY cartesian_transformation_operator_2d
    SUBTYPE OF ( cartesian_transformation_operator );
    DERIVE
      u  : LIST [2 : 2] OF direction := base_axis( 2, SELF\cartesian_transformation_operator.axis1, SELF\
             cartesian_transformation_operator.axis2, ? );
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 2 );
  END_ENTITY; -- cartesian_transformation_operator_2d (line:8868 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCARTESIAN_TRANSFORMATION_OPERATOR_2D : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _cartesian_transformation_operator_2d.self
    }
    public let partialEntity: _cartesian_transformation_operator_2d

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eFUNCTIONALLY_DEFINED_TRANSFORMATION: eFUNCTIONALLY_DEFINED_TRANSFORMATION 	// [3]
    public let super_eCARTESIAN_TRANSFORMATION_OPERATOR: eCARTESIAN_TRANSFORMATION_OPERATOR 	// [4]
    public var super_eCARTESIAN_TRANSFORMATION_OPERATOR_2D: eCARTESIAN_TRANSFORMATION_OPERATOR_2D { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // NAME: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eFUNCTIONALLY_DEFINED_TRANSFORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eFUNCTIONALLY_DEFINED_TRANSFORMATION.partialEntity._description
      }
      set(newValue) {
        let partial = super_eFUNCTIONALLY_DEFINED_TRANSFORMATION.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCARTESIAN_TRANSFORMATION_OPERATOR`` )
    public var SCALE: SDAI.REAL?  {
      get {
        return super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity._scale
      }
      set(newValue) {
        let partial = super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity
        partial._scale = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eCARTESIAN_TRANSFORMATION_OPERATOR_2D`` )
    public var U: (SDAI.LIST<eDIRECTION>/*[2:2]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"U") {
          return cached.value as! (SDAI.LIST<eDIRECTION>/*[2:2]*/ )? 
        }
        let origin = self
        let value = origin.partialEntity._u__getter(SELF: origin)
        updateCache(derivedAttributeName:"U", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCARTESIAN_TRANSFORMATION_OPERATOR`` )
    public var LOCAL_ORIGIN: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity._local_origin )
      }
      set(newValue) {
        let partial = super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity
        partial._local_origin = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eCARTESIAN_TRANSFORMATION_OPERATOR`` )
    public var SCL: SDAI.REAL?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SCL") {
          return cached.value as! SDAI.REAL? 
        }
        let origin = super_eCARTESIAN_TRANSFORMATION_OPERATOR
        let value = SDAI.REAL(origin.partialEntity._scl__getter(SELF: origin))
        updateCache(derivedAttributeName:"SCL", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCARTESIAN_TRANSFORMATION_OPERATOR`` )
    public var AXIS2: eDIRECTION?  {
      get {
        return super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity._axis2
      }
      set(newValue) {
        let partial = super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity
        partial._axis2 = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCARTESIAN_TRANSFORMATION_OPERATOR`` )
    public var AXIS1: eDIRECTION?  {
      get {
        return super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity._axis1
      }
      set(newValue) {
        let partial = super_eCARTESIAN_TRANSFORMATION_OPERATOR.partialEntity
        partial._axis1 = newValue
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
      guard let partial = complexEntity?.partialEntityInstance(_cartesian_transformation_operator_2d.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eFUNCTIONALLY_DEFINED_TRANSFORMATION.self) else { return nil }
      self.super_eFUNCTIONALLY_DEFINED_TRANSFORMATION = super3

      guard let super4 = complexEntity?.entityReference(eCARTESIAN_TRANSFORMATION_OPERATOR.self) else { return nil }
      self.super_eCARTESIAN_TRANSFORMATION_OPERATOR = super4

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
      result[prefix2 + " .WHERE_wr1"] = _cartesian_transformation_operator_2d.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CARTESIAN_TRANSFORMATION_OPERATOR_2D", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eFUNCTIONALLY_DEFINED_TRANSFORMATION.self)
      entityDef.add(supertype: eCARTESIAN_TRANSFORMATION_OPERATOR.self)
      entityDef.add(supertype: eCARTESIAN_TRANSFORMATION_OPERATOR_2D.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SCALE", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.SCALE, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "U", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.U, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOCAL_ORIGIN", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.LOCAL_ORIGIN, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SCL", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.SCL, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "AXIS2", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.AXIS2, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AXIS1", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.AXIS1, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \eCARTESIAN_TRANSFORMATION_OPERATOR_2D.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

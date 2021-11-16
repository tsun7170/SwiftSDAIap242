/* file: su_parameters.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY su_parameters
    SUBTYPE OF ( geometric_representation_item );
      a      : length_measure;
      alpha  : plane_angle_measure;
      b      : length_measure;
      beta   : plane_angle_measure;
      c      : length_measure;
      gamma  : plane_angle_measure;
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 3 );
  END_ENTITY; -- su_parameters (line:31023 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	su_parameters
    ATTR:  a,	TYPE: length_measure -- EXPLICIT

    ATTR:  alpha,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  b,	TYPE: length_measure -- EXPLICIT

    ATTR:  beta,	TYPE: plane_angle_measure -- EXPLICIT

    ATTR:  c,	TYPE: length_measure -- EXPLICIT

    ATTR:  gamma,	TYPE: plane_angle_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _su_parameters : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSU_PARAMETERS.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _a: tLENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _alpha: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _b: tLENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _beta: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _c: tLENGTH_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _gamma: tPLANE_ANGLE_MEASURE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sRIGID_PLACEMENT.typeName)) // -> Self
      members.insert(SDAI.STRING(sKINEMATIC_LINK_REPRESENTATION_ITEMS.typeName)) // -> sRIGID_PLACEMENT
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._a.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._alpha.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._b.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._beta.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._c.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._gamma.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._a.value.isValueEqualOptionally(to: rhs._a.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._alpha.value.isValueEqualOptionally(to: rhs._alpha.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._b.value.isValueEqualOptionally(to: rhs._b.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._beta.value.isValueEqualOptionally(to: rhs._beta.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._c.value.isValueEqualOptionally(to: rhs._c.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._gamma.value.isValueEqualOptionally(to: rhs._gamma.value, visited: &comppairs)	{
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
      if let comp = self._a.value.isValueEqualOptionally(to: rhs._a.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._alpha.value.isValueEqualOptionally(to: rhs._alpha.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._b.value.isValueEqualOptionally(to: rhs._b.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._beta.value.isValueEqualOptionally(to: rhs._beta.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._c.value.isValueEqualOptionally(to: rhs._c.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._gamma.value.isValueEqualOptionally(to: rhs._gamma.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSU_PARAMETERS?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eGEOMETRIC_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.DIM
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(A: tLENGTH_MEASURE, ALPHA: tPLANE_ANGLE_MEASURE, B: tLENGTH_MEASURE, 
                BETA: tPLANE_ANGLE_MEASURE, C: tLENGTH_MEASURE, GAMMA: tPLANE_ANGLE_MEASURE) {
      self._a = A
      self._alpha = ALPHA
      self._b = B
      self._beta = BETA
      self._c = C
      self._gamma = GAMMA
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 6
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLENGTH_MEASURE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tLENGTH_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: tLENGTH_MEASURE.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p5) = exchangeStructure.recoverRequiredParameter(as: tPLANE_ANGLE_MEASURE.self, from: parameters[5])
      else { exchangeStructure.add(errorContext: "while recovering parameter #5 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( A: p0, ALPHA: p1, B: p2, BETA: p3, C: p4, GAMMA: p5 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY su_parameters
    SUBTYPE OF ( geometric_representation_item );
      a      : length_measure;
      alpha  : plane_angle_measure;
      b      : length_measure;
      beta   : plane_angle_measure;
      c      : length_measure;
      gamma  : plane_angle_measure;
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 3 );
  END_ENTITY; -- su_parameters (line:31023 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSU_PARAMETERS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _su_parameters.self
    }
    public let partialEntity: _su_parameters

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public var super_eSU_PARAMETERS: eSU_PARAMETERS { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSU_PARAMETERS`` )
    public var A: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._a )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._a = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSU_PARAMETERS`` )
    public var B: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._b )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._b = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSU_PARAMETERS`` )
    public var C: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._c )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._c = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSU_PARAMETERS`` )
    public var GAMMA: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._gamma )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._gamma = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSU_PARAMETERS`` )
    public var ALPHA: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._alpha )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._alpha = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSU_PARAMETERS`` )
    public var BETA: tPLANE_ANGLE_MEASURE {
      get {
        return SDAI.UNWRAP( self.partialEntity._beta )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._beta = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_su_parameters.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

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
      result[prefix2 + " .WHERE_wr1"] = _su_parameters.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SU_PARAMETERS", type: self, explicitAttributeCount: 6)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSU_PARAMETERS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "A", keyPath: \eSU_PARAMETERS.A, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "B", keyPath: \eSU_PARAMETERS.B, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "C", keyPath: \eSU_PARAMETERS.C, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "GAMMA", keyPath: \eSU_PARAMETERS.GAMMA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ALPHA", keyPath: \eSU_PARAMETERS.ALPHA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BETA", keyPath: \eSU_PARAMETERS.BETA, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eSU_PARAMETERS.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSU_PARAMETERS.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: trimmed_curve.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY trimmed_curve
    SUBTYPE OF ( bounded_curve );
      basis_curve            : curve;
      trim_1                 : SET [1 : 2] OF trimming_select;
      trim_2                 : SET [1 : 2] OF trimming_select;
      sense_agreement        : BOOLEAN;
      master_representation  : trimming_preference;
    WHERE
      wr1: ( ( HIINDEX( trim_1 ) = 1 ) OR ( TYPEOF( trim_1[1] ) <> TYPEOF( trim_1[2] ) ) );
      wr2: ( ( HIINDEX( trim_2 ) = 1 ) OR ( TYPEOF( trim_2[1] ) <> TYPEOF( trim_2[2] ) ) );
  END_ENTITY; -- trimmed_curve (line:32953 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	curve
    (no local attributes)

  SUPER- ENTITY(4)	bounded_curve
    (no local attributes)

  ENTITY(SELF)	trimmed_curve
    ATTR:  basis_curve,	TYPE: curve -- EXPLICIT

    ATTR:  trim_1,	TYPE: SET [1 : 2] OF trimming_select -- EXPLICIT

    ATTR:  trim_2,	TYPE: SET [1 : 2] OF trimming_select -- EXPLICIT

    ATTR:  sense_agreement,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  master_representation,	TYPE: trimming_preference -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _trimmed_curve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTRIMMED_CURVE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _basis_curve: eCURVE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _trim_1: SDAI.SET<sTRIMMING_SELECT>/*[1:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _trim_2: SDAI.SET<sTRIMMING_SELECT>/*[1:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _sense_agreement: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _master_representation: nTRIMMING_PREFERENCE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPLANAR_CURVE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sSKETCH_BASIS_SELECT.typeName)) // -> sPLANAR_CURVE_SELECT
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._basis_curve.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._trim_1.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._trim_2.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._sense_agreement.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._master_representation.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._basis_curve.value.isValueEqualOptionally(to: rhs._basis_curve.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._trim_1.value.isValueEqualOptionally(to: rhs._trim_1.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._trim_2.value.isValueEqualOptionally(to: rhs._trim_2.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._sense_agreement.value.isValueEqualOptionally(to: rhs._sense_agreement.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._master_representation.value.isValueEqualOptionally(to: rhs._master_representation.value, visited: &comppairs)	{
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
      if let comp = self._basis_curve.value.isValueEqualOptionally(to: rhs._basis_curve.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._trim_1.value.isValueEqualOptionally(to: rhs._trim_1.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._trim_2.value.isValueEqualOptionally(to: rhs._trim_2.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._sense_agreement.value.isValueEqualOptionally(to: rhs._sense_agreement.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._master_representation.value.isValueEqualOptionally(to: rhs._master_representation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eTRIMMED_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.HIINDEX(SELF.TRIM_1)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 = SELF.TRIM_1[1]
      let _TEMP4 = SDAI.TYPEOF(_TEMP3)
      let _TEMP5 = SELF.TRIM_1[2]
      let _TEMP6 = SDAI.TYPEOF(_TEMP5)
      let _TEMP7 = SDAI.FORCE_OPTIONAL(_TEMP4) .!=. SDAI.FORCE_OPTIONAL(_TEMP6)
      let _TEMP8 = _TEMP2 || _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr2(SELF: eTRIMMED_CURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.HIINDEX(SELF.TRIM_2)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 = SELF.TRIM_2[1]
      let _TEMP4 = SDAI.TYPEOF(_TEMP3)
      let _TEMP5 = SELF.TRIM_2[2]
      let _TEMP6 = SDAI.TYPEOF(_TEMP5)
      let _TEMP7 = SDAI.FORCE_OPTIONAL(_TEMP4) .!=. SDAI.FORCE_OPTIONAL(_TEMP6)
      let _TEMP8 = _TEMP2 || _TEMP7
      return _TEMP8
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASIS_CURVE: eCURVE, TRIM_1: SDAI.SET<sTRIMMING_SELECT>/*[1:2]*/ , 
                TRIM_2: SDAI.SET<sTRIMMING_SELECT>/*[1:2]*/ , SENSE_AGREEMENT: SDAI.BOOLEAN, 
                MASTER_REPRESENTATION: nTRIMMING_PREFERENCE) {
      self._basis_curve = BASIS_CURVE
      self._trim_1 = TRIM_1
      self._trim_2 = TRIM_2
      self._sense_agreement = SENSE_AGREEMENT
      self._master_representation = MASTER_REPRESENTATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 5
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCURVE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<sTRIMMING_SELECT>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<sTRIMMING_SELECT>.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: nTRIMMING_PREFERENCE.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASIS_CURVE: p0, TRIM_1: p1, TRIM_2: p2, SENSE_AGREEMENT: p3, MASTER_REPRESENTATION: p4 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY trimmed_curve
    SUBTYPE OF ( bounded_curve );
      basis_curve            : curve;
      trim_1                 : SET [1 : 2] OF trimming_select;
      trim_2                 : SET [1 : 2] OF trimming_select;
      sense_agreement        : BOOLEAN;
      master_representation  : trimming_preference;
    WHERE
      wr1: ( ( HIINDEX( trim_1 ) = 1 ) OR ( TYPEOF( trim_1[1] ) <> TYPEOF( trim_1[2] ) ) );
      wr2: ( ( HIINDEX( trim_2 ) = 1 ) OR ( TYPEOF( trim_2[1] ) <> TYPEOF( trim_2[2] ) ) );
  END_ENTITY; -- trimmed_curve (line:32953 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTRIMMED_CURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _trimmed_curve.self
    }
    public let partialEntity: _trimmed_curve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public let super_eBOUNDED_CURVE: eBOUNDED_CURVE 	// [4]
    public var super_eTRIMMED_CURVE: eTRIMMED_CURVE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTRIMMED_CURVE`` )
    public var BASIS_CURVE: eCURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._basis_curve )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._basis_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTRIMMED_CURVE`` )
    public var TRIM_1: SDAI.SET<sTRIMMING_SELECT>/*[1:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._trim_1 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._trim_1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTRIMMED_CURVE`` )
    public var TRIM_2: SDAI.SET<sTRIMMING_SELECT>/*[1:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._trim_2 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._trim_2 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTRIMMED_CURVE`` )
    public var SENSE_AGREEMENT: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._sense_agreement )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._sense_agreement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eTRIMMED_CURVE`` )
    public var MASTER_REPRESENTATION: nTRIMMING_PREFERENCE {
      get {
        return SDAI.UNWRAP( self.partialEntity._master_representation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._master_representation = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_trimmed_curve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

      guard let super4 = complexEntity?.entityReference(eBOUNDED_CURVE.self) else { return nil }
      self.super_eBOUNDED_CURVE = super4

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
      result[prefix2 + " .WHERE_wr1"] = _trimmed_curve.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _trimmed_curve.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TRIMMED_CURVE", type: self, explicitAttributeCount: 5)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: eBOUNDED_CURVE.self)
      entityDef.add(supertype: eTRIMMED_CURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "BASIS_CURVE", keyPath: \eTRIMMED_CURVE.BASIS_CURVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRIM_1", keyPath: \eTRIMMED_CURVE.TRIM_1, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRIM_2", keyPath: \eTRIMMED_CURVE.TRIM_2, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SENSE_AGREEMENT", keyPath: \eTRIMMED_CURVE.SENSE_AGREEMENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MASTER_REPRESENTATION", keyPath: \eTRIMMED_CURVE.MASTER_REPRESENTATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eTRIMMED_CURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eTRIMMED_CURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: pcurve.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY pcurve
    SUBTYPE OF ( curve );
      basis_surface       : surface;
      reference_to_curve  : definitional_representation;
    WHERE
      wr1: ( SIZEOF( reference_to_curve\representation.items ) = 1 );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE' IN TYPEOF( reference_to_curve\
               representation.items[1] ) );
      wr3: ( reference_to_curve\representation.items[1]\geometric_representation_item.dim = 2 );
  END_ENTITY; -- pcurve (line:24297 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	pcurve
    ATTR:  basis_surface,	TYPE: surface -- EXPLICIT

    ATTR:  reference_to_curve,	TYPE: definitional_representation -- EXPLICIT


  SUB- ENTITY(5)	bounded_pcurve
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _pcurve : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePCURVE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _basis_surface: eSURFACE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _reference_to_curve: eDEFINITIONAL_REPRESENTATION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sPCURVE_OR_SURFACE.typeName)) // -> Self
      members.insert(SDAI.STRING(sCURVE_ON_SURFACE.typeName)) // -> Self
      members.insert(SDAI.STRING(sPLANAR_CURVE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sSKETCH_BASIS_SELECT.typeName)) // -> sPLANAR_CURVE_SELECT
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._basis_surface.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._reference_to_curve.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._basis_surface.value.isValueEqualOptionally(to: rhs._basis_surface.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._reference_to_curve.value.isValueEqualOptionally(to: rhs._reference_to_curve.value, visited: &comppairs)	{
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
      if let comp = self._basis_surface.value.isValueEqualOptionally(to: rhs._basis_surface.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._reference_to_curve.value.isValueEqualOptionally(to: rhs._reference_to_curve.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePCURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REFERENCE_TO_CURVE.GROUP_REF(eREPRESENTATION.self)
      let _TEMP2 = _TEMP1?.ITEMS
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: ePCURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.REFERENCE_TO_CURVE.GROUP_REF(eREPRESENTATION.self)?.ITEMS[1], 
        IS: eCURVE.self)
      return _TEMP1
    }
    public static func WHERE_wr3(SELF: ePCURVE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REFERENCE_TO_CURVE.GROUP_REF(eREPRESENTATION.self)
      let _TEMP2 = _TEMP1?.ITEMS
      let _TEMP3 = _TEMP2?[1]
      let _TEMP4 = _TEMP3?.GROUP_REF(eGEOMETRIC_REPRESENTATION_ITEM.self)
      let _TEMP5 = _TEMP4?.DIM
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASIS_SURFACE: eSURFACE, REFERENCE_TO_CURVE: eDEFINITIONAL_REPRESENTATION) {
      self._basis_surface = BASIS_SURFACE
      self._reference_to_curve = REFERENCE_TO_CURVE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eSURFACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        eDEFINITIONAL_REPRESENTATION.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASIS_SURFACE: p0, REFERENCE_TO_CURVE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY pcurve
    SUBTYPE OF ( curve );
      basis_surface       : surface;
      reference_to_curve  : definitional_representation;
    WHERE
      wr1: ( SIZEOF( reference_to_curve\representation.items ) = 1 );
      wr2: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.CURVE' IN TYPEOF( reference_to_curve\
               representation.items[1] ) );
      wr3: ( reference_to_curve\representation.items[1]\geometric_representation_item.dim = 2 );
  END_ENTITY; -- pcurve (line:24297 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePCURVE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _pcurve.self
    }
    public let partialEntity: _pcurve

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eCURVE: eCURVE 	// [3]
    public var super_ePCURVE: ePCURVE { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eBOUNDED_PCURVE: eBOUNDED_PCURVE? {	// [5]
      return self.complexEntity.entityReference(eBOUNDED_PCURVE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePCURVE`` )
    public var REFERENCE_TO_CURVE: eDEFINITIONAL_REPRESENTATION {
      get {
        return SDAI.UNWRAP( self.partialEntity._reference_to_curve )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._reference_to_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePCURVE`` )
    public var BASIS_SURFACE: eSURFACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._basis_surface )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._basis_surface = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_pcurve.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eCURVE.self) else { return nil }
      self.super_eCURVE = super3

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
      result[prefix2 + " .WHERE_wr1"] = _pcurve.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _pcurve.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _pcurve.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PCURVE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCURVE.self)
      entityDef.add(supertype: ePCURVE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REFERENCE_TO_CURVE", keyPath: \ePCURVE.REFERENCE_TO_CURVE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASIS_SURFACE", keyPath: \ePCURVE.BASIS_SURFACE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePCURVE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePCURVE.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

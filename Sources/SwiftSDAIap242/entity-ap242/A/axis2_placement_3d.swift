/* file: axis2_placement_3d.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY axis2_placement_3d
    SUBTYPE OF ( placement );
      axis           : OPTIONAL direction;
      ref_direction  : OPTIONAL direction;
    DERIVE
      p  : LIST [3 : 3] OF direction := build_axes( axis, ref_direction );
    WHERE
      wr1: ( SELF\placement.location.dim = 3 );
      wr2: ( ( NOT EXISTS( axis ) ) OR ( axis.dim = 3 ) );
      wr3: ( ( NOT EXISTS( ref_direction ) ) OR ( ref_direction.dim = 3 ) );
      wr4: ( ( NOT EXISTS( axis ) ) OR ( NOT EXISTS( ref_direction ) ) OR ( cross_product( axis, 
               ref_direction ).magnitude > 0 ) );
  END_ENTITY; -- axis2_placement_3d (line:7673 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	placement
    ATTR:  location,	TYPE: cartesian_point -- EXPLICIT


  ENTITY(SELF)	axis2_placement_3d
    ATTR:  axis,	TYPE: OPTIONAL direction -- EXPLICIT

    ATTR:  ref_direction,	TYPE: OPTIONAL direction -- EXPLICIT

    ATTR:  p,	TYPE: LIST [3 : 3] OF direction -- DERIVED
      := build_axes( axis, ref_direction )


*/


//MARK: - Partial Entity
  public final class _axis2_placement_3d : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAXIS2_PLACEMENT_3D.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _axis: eDIRECTION?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _ref_direction: eDIRECTION?  // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _p__getter(SELF: eAXIS2_PLACEMENT_3D) -> (SDAI.LIST<eDIRECTION>/*[3:3]*/ )?  {

      let _TEMP1 = BUILD_AXES(AXIS: SELF.AXIS, 
                              REF_DIRECTION: SELF.REF_DIRECTION)
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sANGLE_DIRECTION_REFERENCE_WITH_A2P3D_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ECDQ_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sLOCATION_OF_EXTREME_VALUE_SELECT.typeName)) // -> sINSPECTED_ECDQ_ELEMENT_SELECT
      members.insert(SDAI.STRING(sRIGID_PLACEMENT.typeName)) // -> Self
      members.insert(SDAI.STRING(sKINEMATIC_LINK_REPRESENTATION_ITEMS.typeName)) // -> sRIGID_PLACEMENT
      members.insert(SDAI.STRING(sORIENTATION_BASIS_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_SHAPE_ELEMENT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sAXIS2_PLACEMENT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_SELECT.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sTEXT_STRING_REPRESENTATION_ITEM.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_GEOMETRIC_PRESENTATION_AREA_ITEMS.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_SHADED_PRESENTATION_AREA_ITEMS.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sDRAUGHTING_SYMBOL_REPRESENTATION_ITEM.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_GEOMETRIC_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sMECHANICAL_DESIGN_SHADED_PRESENTATION_REPRESENTATION_ITEMS.typeName)) // -> sAXIS2_PLACEMENT
      members.insert(SDAI.STRING(sPOINT_PLACEMENT_SHAPE_REPRESENTATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sINSPECTED_ELEMENT_SELECT.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._axis?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._ref_direction?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._axis?.value.isValueEqualOptionally(to: rhs._axis?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._ref_direction?.value.isValueEqualOptionally(to: rhs._ref_direction?.value, visited: &comppairs)	{
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
      if let comp = self._axis?.value.isValueEqualOptionally(to: rhs._axis?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._ref_direction?.value.isValueEqualOptionally(to: rhs._ref_direction?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eAXIS2_PLACEMENT_3D?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(ePLACEMENT.self)
      let _TEMP2 = _TEMP1?.LOCATION
      let _TEMP3 = _TEMP2?.DIM
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: eAXIS2_PLACEMENT_3D?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.AXIS)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SELF.AXIS?.DIM
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      let _TEMP5 = _TEMP2 || _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr3(SELF: eAXIS2_PLACEMENT_3D?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.REF_DIRECTION)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SELF.REF_DIRECTION?.DIM
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      let _TEMP5 = _TEMP2 || _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr4(SELF: eAXIS2_PLACEMENT_3D?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.EXISTS(SELF.AXIS)
      let _TEMP2 =  !_TEMP1
      let _TEMP3 = SDAI.EXISTS(SELF.REF_DIRECTION)
      let _TEMP4 =  !_TEMP3
      let _TEMP5 = _TEMP2 || _TEMP4
      let _TEMP6 = CROSS_PRODUCT(ARG1: SELF.AXIS, 
                                 ARG2: SELF.REF_DIRECTION)
      let _TEMP7 = _TEMP6?.MAGNITUDE
      let _TEMP8 = _TEMP7 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP9 = _TEMP5 || _TEMP8
      return _TEMP9
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(AXIS: eDIRECTION? , REF_DIRECTION: eDIRECTION? ) {
      self._axis = AXIS
      self._ref_direction = REF_DIRECTION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOptionalParameter(as: eDIRECTION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: eDIRECTION.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( AXIS: p0, REF_DIRECTION: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY axis2_placement_3d
    SUBTYPE OF ( placement );
      axis           : OPTIONAL direction;
      ref_direction  : OPTIONAL direction;
    DERIVE
      p  : LIST [3 : 3] OF direction := build_axes( axis, ref_direction );
    WHERE
      wr1: ( SELF\placement.location.dim = 3 );
      wr2: ( ( NOT EXISTS( axis ) ) OR ( axis.dim = 3 ) );
      wr3: ( ( NOT EXISTS( ref_direction ) ) OR ( ref_direction.dim = 3 ) );
      wr4: ( ( NOT EXISTS( axis ) ) OR ( NOT EXISTS( ref_direction ) ) OR ( cross_product( axis, 
               ref_direction ).magnitude > 0 ) );
  END_ENTITY; -- axis2_placement_3d (line:7673 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAXIS2_PLACEMENT_3D : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _axis2_placement_3d.self
    }
    public let partialEntity: _axis2_placement_3d

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_ePLACEMENT: ePLACEMENT 	// [3]
    public var super_eAXIS2_PLACEMENT_3D: eAXIS2_PLACEMENT_3D { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eAXIS2_PLACEMENT_3D`` )
    public var P: (SDAI.LIST<eDIRECTION>/*[3:3]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"P") {
          return cached.value as! (SDAI.LIST<eDIRECTION>/*[3:3]*/ )? 
        }
        let origin = self
        let value = origin.partialEntity._p__getter(SELF: origin)
        updateCache(derivedAttributeName:"P", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAXIS2_PLACEMENT_3D`` )
    public var AXIS: eDIRECTION?  {
      get {
        return self.partialEntity._axis
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._axis = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAXIS2_PLACEMENT_3D`` )
    public var REF_DIRECTION: eDIRECTION?  {
      get {
        return self.partialEntity._ref_direction
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._ref_direction = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePLACEMENT`` )
    public var LOCATION: eCARTESIAN_POINT {
      get {
        return SDAI.UNWRAP( super_ePLACEMENT.partialEntity._location )
      }
      set(newValue) {
        let partial = super_ePLACEMENT.partialEntity
        partial._location = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_axis2_placement_3d.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePLACEMENT.self) else { return nil }
      self.super_ePLACEMENT = super3

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
      result[prefix2 + " .WHERE_wr1"] = _axis2_placement_3d.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _axis2_placement_3d.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _axis2_placement_3d.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _axis2_placement_3d.WHERE_wr4(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "AXIS2_PLACEMENT_3D", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePLACEMENT.self)
      entityDef.add(supertype: eAXIS2_PLACEMENT_3D.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "P", keyPath: \eAXIS2_PLACEMENT_3D.P, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AXIS", keyPath: \eAXIS2_PLACEMENT_3D.AXIS, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REF_DIRECTION", keyPath: \eAXIS2_PLACEMENT_3D.REF_DIRECTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOCATION", keyPath: \eAXIS2_PLACEMENT_3D.LOCATION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eAXIS2_PLACEMENT_3D.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eAXIS2_PLACEMENT_3D.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

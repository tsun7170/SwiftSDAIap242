/* file: reparametrised_composite_curve_segment.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY reparametrised_composite_curve_segment
    SUBTYPE OF ( composite_curve_segment );
      param_length  : parameter_value;
    WHERE
      wr1: ( param_length > 0 );
  END_ENTITY; -- reparametrised_composite_curve_segment (line:27379 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  SUPER- ENTITY(2)	composite_curve_segment
    ATTR:  transition,	TYPE: transition_code -- EXPLICIT

    ATTR:  same_sense,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  parent_curve,	TYPE: curve -- EXPLICIT

    ATTR:  using_curves,	TYPE: BAG [1 : ?] OF composite_curve -- INVERSE
      FOR segments;


  ENTITY(SELF)	reparametrised_composite_curve_segment
    ATTR:  param_length,	TYPE: parameter_value -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _reparametrised_composite_curve_segment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _param_length: tPARAMETER_VALUE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._param_length.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._param_length.value.isValueEqualOptionally(to: rhs._param_length.value, visited: &comppairs)	{
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
      if let comp = self._param_length.value.isValueEqualOptionally(to: rhs._param_length.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.PARAM_LENGTH) > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PARAM_LENGTH: tPARAMETER_VALUE) {
      self._param_length = PARAM_LENGTH
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPARAMETER_VALUE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PARAM_LENGTH: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY reparametrised_composite_curve_segment
    SUBTYPE OF ( composite_curve_segment );
      param_length  : parameter_value;
    WHERE
      wr1: ( param_length > 0 );
  END_ENTITY; -- reparametrised_composite_curve_segment (line:27379 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _reparametrised_composite_curve_segment.self
    }
    public let partialEntity: _reparametrised_composite_curve_segment

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public let super_eCOMPOSITE_CURVE_SEGMENT: eCOMPOSITE_CURVE_SEGMENT 	// [2]
    public var super_eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT: eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE_SEGMENT`` )
    public var TRANSITION: nTRANSITION_CODE {
      get {
        return SDAI.UNWRAP( super_eCOMPOSITE_CURVE_SEGMENT.partialEntity._transition )
      }
      set(newValue) {
        let partial = super_eCOMPOSITE_CURVE_SEGMENT.partialEntity
        partial._transition = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eCOMPOSITE_CURVE .SEGMENTS
    /// - origin: SUPER( ``eCOMPOSITE_CURVE_SEGMENT`` )
    public var USING_CURVES: SDAI.BAG<eCOMPOSITE_CURVE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eCOMPOSITE_CURVE_SEGMENT.partialEntity._using_curves )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE_SEGMENT`` )
    public var PARENT_CURVE: eCURVE {
      get {
        return SDAI.UNWRAP( super_eCOMPOSITE_CURVE_SEGMENT.partialEntity._parent_curve )
      }
      set(newValue) {
        let partial = super_eCOMPOSITE_CURVE_SEGMENT.partialEntity
        partial._parent_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT`` )
    public var PARAM_LENGTH: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( self.partialEntity._param_length )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._param_length = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOMPOSITE_CURVE_SEGMENT`` )
    public var SAME_SENSE: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( super_eCOMPOSITE_CURVE_SEGMENT.partialEntity._same_sense )
      }
      set(newValue) {
        let partial = super_eCOMPOSITE_CURVE_SEGMENT.partialEntity
        partial._same_sense = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_reparametrised_composite_curve_segment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eCOMPOSITE_CURVE_SEGMENT.self) else { return nil }
      self.super_eCOMPOSITE_CURVE_SEGMENT = super2

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
      result[prefix2 + " .WHERE_wr1"] = _reparametrised_composite_curve_segment.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REPARAMETRISED_COMPOSITE_CURVE_SEGMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eCOMPOSITE_CURVE_SEGMENT.self)
      entityDef.add(supertype: eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "USERS", keyPath: \eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "TRANSITION", keyPath: \eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.TRANSITION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "USING_CURVES", keyPath: \eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.USING_CURVES, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARENT_CURVE", keyPath: \eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.PARENT_CURVE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAM_LENGTH", keyPath: \eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.PARAM_LENGTH, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SAME_SENSE", keyPath: \eREPARAMETRISED_COMPOSITE_CURVE_SEGMENT.SAME_SENSE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

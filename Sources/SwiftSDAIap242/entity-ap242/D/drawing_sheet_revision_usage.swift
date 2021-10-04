/* file: drawing_sheet_revision_usage.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY drawing_sheet_revision_usage
    SUBTYPE OF ( area_in_set );
      sheet_number  : identifier;
    UNIQUE
      ur1 : sheet_number, SELF\area_in_set.in_set;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAWING_SHEET_REVISION' IN TYPEOF( SELF\
               area_in_set.area ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAWING_REVISION' 
               IN TYPEOF( SELF\area_in_set.in_set ) ) );
  END_ENTITY; -- drawing_sheet_revision_usage (line:13235 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	area_in_set
    ATTR:  area,	TYPE: presentation_area -- EXPLICIT

    ATTR:  in_set,	TYPE: presentation_set -- EXPLICIT
      -- observed by
        ENTITY(1): presentation_set,	ATTR: areas,	TYPE: SET [1 : ?] OF area_in_set


  ENTITY(SELF)	drawing_sheet_revision_usage
    ATTR:  sheet_number,	TYPE: identifier -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _drawing_sheet_revision_usage : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDRAWING_SHEET_REVISION_USAGE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _sheet_number: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._sheet_number.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._sheet_number.value.isValueEqualOptionally(to: rhs._sheet_number.value, visited: &comppairs)	{
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
      if let comp = self._sheet_number.value.isValueEqualOptionally(to: rhs._sheet_number.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDRAWING_SHEET_REVISION_USAGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eAREA_IN_SET.self)?.AREA, IS: eDRAWING_SHEET_REVISION.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.GROUP_REF(eAREA_IN_SET.self)?.IN_SET, IS: eDRAWING_REVISION.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      return _TEMP3
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eDRAWING_SHEET_REVISION_USAGE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      let attr1 = SELF.SHEET_NUMBER
      attributes.append( AnyHashable(attr1) )
      guard let attr2 = SELF.GROUP_REF(eAREA_IN_SET.self)?.IN_SET else { return nil }
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SHEET_NUMBER: tIDENTIFIER) {
      self._sheet_number = SHEET_NUMBER
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SHEET_NUMBER: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY drawing_sheet_revision_usage
    SUBTYPE OF ( area_in_set );
      sheet_number  : identifier;
    UNIQUE
      ur1 : sheet_number, SELF\area_in_set.in_set;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAWING_SHEET_REVISION' IN TYPEOF( SELF\
               area_in_set.area ) ) AND ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DRAWING_REVISION' 
               IN TYPEOF( SELF\area_in_set.in_set ) ) );
  END_ENTITY; -- drawing_sheet_revision_usage (line:13235 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDRAWING_SHEET_REVISION_USAGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _drawing_sheet_revision_usage.self
    }
    public let partialEntity: _drawing_sheet_revision_usage

    //MARK: SUPERTYPES
    public let super_eAREA_IN_SET: eAREA_IN_SET 	// [1]
    public var super_eDRAWING_SHEET_REVISION_USAGE: eDRAWING_SHEET_REVISION_USAGE { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDRAWING_SHEET_REVISION_USAGE`` )
    public var SHEET_NUMBER: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._sheet_number )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._sheet_number = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUPER( ``eAREA_IN_SET`` )
    public var IN_SET: ePRESENTATION_SET {
      get {
        return SDAI.UNWRAP( super_eAREA_IN_SET.partialEntity._in_set )
      }
      set(newValue) {
        let partial = super_eAREA_IN_SET.partialEntity
        partial._in_set = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eAREA_IN_SET`` )
    public var AREA: ePRESENTATION_AREA {
      get {
        return SDAI.UNWRAP( super_eAREA_IN_SET.partialEntity._area )
      }
      set(newValue) {
        let partial = super_eAREA_IN_SET.partialEntity
        partial._area = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_drawing_sheet_revision_usage.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eAREA_IN_SET.self) else { return nil }
      self.super_eAREA_IN_SET = super1

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
      result[prefix2 + " .WHERE_wr1"] = _drawing_sheet_revision_usage.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DRAWING_SHEET_REVISION_USAGE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAREA_IN_SET.self)
      entityDef.add(supertype: eDRAWING_SHEET_REVISION_USAGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SHEET_NUMBER", keyPath: \eDRAWING_SHEET_REVISION_USAGE.SHEET_NUMBER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "IN_SET", keyPath: \eDRAWING_SHEET_REVISION_USAGE.IN_SET, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AREA", keyPath: \eDRAWING_SHEET_REVISION_USAGE.AREA, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _drawing_sheet_revision_usage.UNIQUE_ur1)

      return entityDef
    }

  }
}

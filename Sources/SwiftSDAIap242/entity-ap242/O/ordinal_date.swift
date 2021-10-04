/* file: ordinal_date.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY ordinal_date
    SUBTYPE OF ( date );
      day_component  : day_in_year_number;
    WHERE
      wr1: ( ( ( NOT leap_year( SELF.year_component ) ) AND ( 1 <= day_component ) AND ( day_component <= 365 ) ) 
               OR ( leap_year( SELF.year_component ) AND ( 1 <= day_component ) AND ( day_component <= 366 ) ) );
  END_ENTITY; -- ordinal_date (line:22639 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	date
    ATTR:  year_component,	TYPE: year_number -- EXPLICIT


  ENTITY(SELF)	ordinal_date
    ATTR:  day_component,	TYPE: day_in_year_number -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _ordinal_date : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eORDINAL_DATE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _day_component: tDAY_IN_YEAR_NUMBER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._day_component.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._day_component.value.isValueEqualOptionally(to: rhs._day_component.value, visited: &comppairs)	{
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
      if let comp = self._day_component.value.isValueEqualOptionally(to: rhs._day_component.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eORDINAL_DATE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.YEAR_COMPONENT
      let _TEMP2 = LEAP_YEAR(_TEMP1)
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1)) <= SDAI.FORCE_OPTIONAL(SELF.DAY_COMPONENT)
      let _TEMP5 = SDAI.FORCE_OPTIONAL(SELF.DAY_COMPONENT) <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(365))
      let _TEMP6 = _TEMP4 && _TEMP5
      let _TEMP7 = _TEMP3 && _TEMP6
      let _TEMP8 = SELF.YEAR_COMPONENT
      let _TEMP9 = LEAP_YEAR(_TEMP8)
      let _TEMP10 = SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1)) <= SDAI.FORCE_OPTIONAL(SELF.DAY_COMPONENT)
      let _TEMP11 = SDAI.FORCE_OPTIONAL(SELF.DAY_COMPONENT) <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(366))
      let _TEMP12 = _TEMP10 && _TEMP11
      let _TEMP13 = _TEMP9 && _TEMP12
      let _TEMP14 = _TEMP7 || _TEMP13
      return _TEMP14
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DAY_COMPONENT: tDAY_IN_YEAR_NUMBER) {
      self._day_component = DAY_COMPONENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tDAY_IN_YEAR_NUMBER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DAY_COMPONENT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY ordinal_date
    SUBTYPE OF ( date );
      day_component  : day_in_year_number;
    WHERE
      wr1: ( ( ( NOT leap_year( SELF.year_component ) ) AND ( 1 <= day_component ) AND ( day_component <= 365 ) ) 
               OR ( leap_year( SELF.year_component ) AND ( 1 <= day_component ) AND ( day_component <= 366 ) ) );
  END_ENTITY; -- ordinal_date (line:22639 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eORDINAL_DATE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _ordinal_date.self
    }
    public let partialEntity: _ordinal_date

    //MARK: SUPERTYPES
    public let super_eDATE: eDATE 	// [1]
    public var super_eORDINAL_DATE: eORDINAL_DATE { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eORDINAL_DATE`` )
    public var DAY_COMPONENT: tDAY_IN_YEAR_NUMBER {
      get {
        return SDAI.UNWRAP( self.partialEntity._day_component )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._day_component = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATE`` )
    public var YEAR_COMPONENT: tYEAR_NUMBER {
      get {
        return SDAI.UNWRAP( super_eDATE.partialEntity._year_component )
      }
      set(newValue) {
        let partial = super_eDATE.partialEntity
        partial._year_component = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_ordinal_date.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDATE.self) else { return nil }
      self.super_eDATE = super1

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
      result[prefix2 + " .WHERE_wr1"] = _ordinal_date.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ORDINAL_DATE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATE.self)
      entityDef.add(supertype: eORDINAL_DATE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DAY_COMPONENT", keyPath: \eORDINAL_DATE.DAY_COMPONENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "YEAR_COMPONENT", keyPath: \eORDINAL_DATE.YEAR_COMPONENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

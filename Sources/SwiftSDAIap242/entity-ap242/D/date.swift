/* file: date.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY date
    SUPERTYPE OF ( 
        ONEOF ( 
            calendar_date, 
            ordinal_date, 
            week_of_year_and_day_date, 
            year_month ) );
      year_component  : year_number;
  END_ENTITY; -- date (line:11624 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	date
    ATTR:  year_component,	TYPE: year_number -- EXPLICIT


  SUB- ENTITY(2)	year_month
    ATTR:  month_component,	TYPE: month_in_year_number -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(3)	week_of_year_and_day_date
    ATTR:  week_component,	TYPE: week_in_year_number -- EXPLICIT

    ATTR:  day_component,	TYPE: OPTIONAL day_in_week_number -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(4)	calendar_date
    ATTR:  day_component,	TYPE: day_in_month_number -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  month_component,	TYPE: month_in_year_number -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(5)	date_representation_item
    (no local attributes)

  SUB- ENTITY(6)	ordinal_date
    ATTR:  day_component,	TYPE: day_in_year_number -- EXPLICIT	(AMBIGUOUS/MASKED)


*/


//MARK: - Partial Entity
  public final class _date : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _year_component: tYEAR_NUMBER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_TIME_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_TIME_OR_EVENT_OCCURRENCE.typeName)) // -> sDATE_TIME_SELECT
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._year_component.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._year_component.value.isValueEqualOptionally(to: rhs._year_component.value, visited: &comppairs)	{
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
      if let comp = self._year_component.value.isValueEqualOptionally(to: rhs._year_component.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(YEAR_COMPONENT: tYEAR_NUMBER) {
      self._year_component = YEAR_COMPONENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tYEAR_NUMBER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( YEAR_COMPONENT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY date
    SUPERTYPE OF ( 
        ONEOF ( 
            calendar_date, 
            ordinal_date, 
            week_of_year_and_day_date, 
            year_month ) );
      year_component  : year_number;
  END_ENTITY; -- date (line:11624 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _date.self
    }
    public let partialEntity: _date

    //MARK: SUPERTYPES
    public var super_eDATE: eDATE { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eYEAR_MONTH: eYEAR_MONTH? {	// [2]
      return self.complexEntity.entityReference(eYEAR_MONTH.self)
    }

    public var sub_eWEEK_OF_YEAR_AND_DAY_DATE: eWEEK_OF_YEAR_AND_DAY_DATE? {	// [3]
      return self.complexEntity.entityReference(eWEEK_OF_YEAR_AND_DAY_DATE.self)
    }

    public var sub_eCALENDAR_DATE: eCALENDAR_DATE? {	// [4]
      return self.complexEntity.entityReference(eCALENDAR_DATE.self)
    }

    public var sub_eDATE_REPRESENTATION_ITEM: eDATE_REPRESENTATION_ITEM? {	// [5]
      return self.complexEntity.entityReference(eDATE_REPRESENTATION_ITEM.self)
    }

    public var sub_eORDINAL_DATE: eORDINAL_DATE? {	// [6]
      return self.complexEntity.entityReference(eORDINAL_DATE.self)
    }


    //MARK: ATTRIBUTES
    // MONTH_COMPONENT: (2 AMBIGUOUS REFs)

    // DAY_COMPONENT: (3 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eWEEK_OF_YEAR_AND_DAY_DATE`` )
    public var WEEK_COMPONENT: tWEEK_IN_YEAR_NUMBER?  {
      get {
        return sub_eWEEK_OF_YEAR_AND_DAY_DATE?.partialEntity._week_component
      }
      set(newValue) {
        guard let partial = sub_eWEEK_OF_YEAR_AND_DAY_DATE?.super_eWEEK_OF_YEAR_AND_DAY_DATE.partialEntity
          else { return }
        partial._week_component = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDATE`` )
    public var YEAR_COMPONENT: tYEAR_NUMBER {
      get {
        return SDAI.UNWRAP( self.partialEntity._year_component )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._year_component = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_date.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_date) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "WEEK_COMPONENT", keyPath: \eDATE.WEEK_COMPONENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "YEAR_COMPONENT", keyPath: \eDATE.YEAR_COMPONENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

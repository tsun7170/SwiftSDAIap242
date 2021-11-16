/* file: description_text_assignment.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY description_text_assignment
    ABSTRACT SUPERTYPE;
      description  : description_text;
  END_ENTITY; -- description_text_assignment (line:11966 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	description_text_assignment
    ATTR:  description,	TYPE: description_text -- EXPLICIT


  SUB- ENTITY(2)	applied_description_text_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF description_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _description_text_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDESCRIPTION_TEXT_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: eDESCRIPTION_TEXT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs)	{
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
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(DESCRIPTION: eDESCRIPTION_TEXT) {
      self._description = DESCRIPTION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eDESCRIPTION_TEXT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( DESCRIPTION: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY description_text_assignment
    ABSTRACT SUPERTYPE;
      description  : description_text;
  END_ENTITY; -- description_text_assignment (line:11966 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDESCRIPTION_TEXT_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _description_text_assignment.self
    }
    public let partialEntity: _description_text_assignment

    //MARK: SUPERTYPES
    public var super_eDESCRIPTION_TEXT_ASSIGNMENT: eDESCRIPTION_TEXT_ASSIGNMENT { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT: eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT? {	// [2]
      return self.complexEntity.entityReference(eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDESCRIPTION_TEXT_ASSIGNMENT`` )
    public var DESCRIPTION: eDESCRIPTION_TEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._description )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT`` )
    public var ITEMS: (SDAI.SET<sDESCRIPTION_ITEM>/*[1:nil]*/ )?  {
      get {
        return sub_eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT?.partialEntity._items
      }
      set(newValue) {
        guard let partial = sub_eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT?.super_eAPPLIED_DESCRIPTION_TEXT_ASSIGNMENT
          .partialEntity else { return }
        partial._items = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_description_text_assignment.self) else { return nil }
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
    public convenience init?(_ partial:_description_text_assignment) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DESCRIPTION_TEXT_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDESCRIPTION_TEXT_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eDESCRIPTION_TEXT_ASSIGNMENT.DESCRIPTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eDESCRIPTION_TEXT_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

/* file: atomic_formula.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY atomic_formula
    SUBTYPE OF ( compound_representation_item );
  END_ENTITY; -- atomic_formula (line:7560 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	compound_representation_item
    ATTR:  item_element,	TYPE: compound_item_definition -- EXPLICIT
      -- possibly overriden by
          ENTITY: primitive_2d_with_inner_boundary,	TYPE: compound_inner_area_boundary
          ENTITY: row_representation_item,	TYPE: list_representation_item
          ENTITY: point_and_vector,	TYPE: point_and_vector_members
          ENTITY: point_path,	TYPE: point_path_members
          ENTITY: point_array,	TYPE: point_array_members
          ENTITY: location_in_aggregate_representation_item,	TYPE: location_in_aggregate_item


  ENTITY(SELF)	atomic_formula
    (no local attributes)

  SUB- ENTITY(4)	ground_fact
    (no local attributes)

  SUB- ENTITY(5)	rule_condition
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _atomic_formula : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eATOMIC_FORMULA.self
    }

    //ATTRIBUTES
    // (no local attributes)

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
  ENTITY atomic_formula
    SUBTYPE OF ( compound_representation_item );
  END_ENTITY; -- atomic_formula (line:7560 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eATOMIC_FORMULA : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _atomic_formula.self
    }
    public let partialEntity: _atomic_formula

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eCOMPOUND_REPRESENTATION_ITEM: eCOMPOUND_REPRESENTATION_ITEM 	// [2]
    public var super_eATOMIC_FORMULA: eATOMIC_FORMULA { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eGROUND_FACT: eGROUND_FACT? {	// [4]
      return self.complexEntity.entityReference(eGROUND_FACT.self)
    }

    public var sub_eRULE_CONDITION: eRULE_CONDITION? {	// [5]
      return self.complexEntity.entityReference(eRULE_CONDITION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOMPOUND_REPRESENTATION_ITEM`` )
    public var ITEM_ELEMENT: sCOMPOUND_ITEM_DEFINITION {
      get {
        return SDAI.UNWRAP( super_eCOMPOUND_REPRESENTATION_ITEM.partialEntity._item_element )
      }
      set(newValue) {
        let partial = super_eCOMPOUND_REPRESENTATION_ITEM.partialEntity
        partial._item_element = SDAI.UNWRAP(newValue)
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_atomic_formula.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eCOMPOUND_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eCOMPOUND_REPRESENTATION_ITEM = super2

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ATOMIC_FORMULA", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCOMPOUND_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eATOMIC_FORMULA.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM_ELEMENT", keyPath: \eATOMIC_FORMULA.ITEM_ELEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eATOMIC_FORMULA.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: characterized_class.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY characterized_class
    SUBTYPE OF ( characterized_object, class );
  END_ENTITY; -- characterized_class (line:9232 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)	(AMBIGUOUS/MASKED)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  SUPER- ENTITY(2)	group
    ATTR:  name,	TYPE: label -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  SUPER- ENTITY(3)	class
    (no local attributes)

  ENTITY(SELF)	characterized_class
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _characterized_class : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCHARACTERIZED_CLASS.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
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
  ENTITY characterized_class
    SUBTYPE OF ( characterized_object, class );
  END_ENTITY; -- characterized_class (line:9232 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCHARACTERIZED_CLASS : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _characterized_class.self
    }
    public let partialEntity: _characterized_class

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eGROUP: eGROUP 	// [2]
    public let super_eCLASS: eCLASS 	// [3]
    public var super_eCHARACTERIZED_CLASS: eCHARACTERIZED_CLASS { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    // DESCRIPTION: (2 AMBIGUOUS REFs)

    // NAME: (2 AMBIGUOUS REFs)

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGROUP`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eGROUP
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_characterized_class.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eGROUP.self) else { return nil }
      self.super_eGROUP = super2

      guard let super3 = complexEntity?.entityReference(eCLASS.self) else { return nil }
      self.super_eCLASS = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CHARACTERIZED_CLASS", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eGROUP.self)
      entityDef.add(supertype: eCLASS.self)
      entityDef.add(supertype: eCHARACTERIZED_CLASS.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ID", keyPath: \eCHARACTERIZED_CLASS.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

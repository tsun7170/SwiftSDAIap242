/* file: model_geometric_view.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY model_geometric_view
    SUBTYPE OF ( characterized_item_within_representation );
      SELF\characterized_item_within_representation.rep : draughting_model;
      SELF\characterized_item_within_representation.item : camera_model;
  END_ENTITY; -- model_geometric_view (line:21565 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	characterized_object
    ATTR:  name,	TYPE: label -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: label	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: label	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: label	(as DERIVED)

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: shape_feature_definition_element_relationship,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_fit_relationship,	TYPE: text	(as DERIVED)
          ENTITY: characterized_representation,	TYPE: text	(as DERIVED)
          ENTITY: shape_feature_definition_relationship,	TYPE: text	(as DERIVED)


  SUPER- ENTITY(2)	characterized_item_within_representation
    ATTR:  item,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: model_geometric_view,	TYPE: camera_model

    ATTR:  rep,	TYPE: representation -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: model_geometric_view,	TYPE: draughting_model


  ENTITY(SELF)	model_geometric_view
    REDCR: rep,	TYPE: draughting_model -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_item_within_representation

    REDCR: item,	TYPE: camera_model -- EXPLICIT
      -- OVERRIDING ENTITY: characterized_item_within_representation


  SUB- ENTITY(4)	default_model_geometric_view
    REDCR: product_definitional,	TYPE: LOGICAL -- DERIVED (DYNAMIC)
      := FALSE
      -- OVERRIDING ENTITY: shape_aspect


*/


//MARK: - Partial Entity
  public final class _model_geometric_view : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMODEL_GEOMETRIC_VIEW.self
    }

    //ATTRIBUTES
    /* override var _rep: eDRAUGHTING_MODEL	//EXPLICIT REDEFINITION(eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION) */

    /* override var _item: eCAMERA_MODEL	//EXPLICIT REDEFINITION(eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION) */

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
  ENTITY model_geometric_view
    SUBTYPE OF ( characterized_item_within_representation );
      SELF\characterized_item_within_representation.rep : draughting_model;
      SELF\characterized_item_within_representation.item : camera_model;
  END_ENTITY; -- model_geometric_view (line:21565 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMODEL_GEOMETRIC_VIEW : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _model_geometric_view.self
    }
    public let partialEntity: _model_geometric_view

    //MARK: SUPERTYPES
    public let super_eCHARACTERIZED_OBJECT: eCHARACTERIZED_OBJECT 	// [1]
    public let super_eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION: eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION 	// [2]
    public var super_eMODEL_GEOMETRIC_VIEW: eMODEL_GEOMETRIC_VIEW { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eDEFAULT_MODEL_GEOMETRIC_VIEW: eDEFAULT_MODEL_GEOMETRIC_VIEW? {	// [4]
      return self.complexEntity.entityReference(eDEFAULT_MODEL_GEOMETRIC_VIEW.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SUB( ``eDEFAULT_MODEL_GEOMETRIC_VIEW`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      get {
        if let cached = cachedValue(derivedAttributeName:"PRODUCT_DEFINITIONAL") {
          return cached.value as! SDAI.LOGICAL
        }
        guard let origin = sub_eDEFAULT_MODEL_GEOMETRIC_VIEW else { return nil }
        let value = SDAI.LOGICAL( SDAI.LOGICAL(
          origin.partialEntity._product_definitional__getter(SELF: origin)) )
        updateCache(derivedAttributeName:"PRODUCT_DEFINITIONAL", value:value)
        return value
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let resolved = _characterized_object._description__provider(complex: self.complexEntity) {
          let value = resolved._description__getter(complex: self.complexEntity)
          return value
        }
        else {
          return super_eCHARACTERIZED_OBJECT.partialEntity._description
        }
      }
      set(newValue) {
        if let _ = _characterized_object._description__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eMODEL_GEOMETRIC_VIEW`` )
    public var ITEM: eCAMERA_MODEL {
      get {
        return SDAI.UNWRAP( eCAMERA_MODEL( super_eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION.partialEntity
          ._item ) )
      }
      set(newValue) {
        let partial = super_eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION.partialEntity
        partial._item = SDAI.UNWRAP(
          eREPRESENTATION_ITEM(newValue))
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eMODEL_GEOMETRIC_VIEW`` )
    public var REP: eDRAUGHTING_MODEL {
      get {
        return SDAI.UNWRAP( eDRAUGHTING_MODEL( super_eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION.partialEntity
          ._rep ) )
      }
      set(newValue) {
        let partial = super_eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION.partialEntity
        partial._rep = SDAI.UNWRAP(eREPRESENTATION(newValue))
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eCHARACTERIZED_OBJECT`` )
    public var NAME: tLABEL {
      get {
        if let resolved = _characterized_object._name__provider(complex: self.complexEntity) {
          let value = resolved._name__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eCHARACTERIZED_OBJECT.partialEntity._name )
        }
      }
      set(newValue) {
        if let _ = _characterized_object._name__provider(complex: self.complexEntity) { return }

        let partial = super_eCHARACTERIZED_OBJECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_model_geometric_view.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCHARACTERIZED_OBJECT.self) else { return nil }
      self.super_eCHARACTERIZED_OBJECT = super1

      guard let super2 = complexEntity?.entityReference(eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION.self) else { return nil }
      self.super_eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MODEL_GEOMETRIC_VIEW", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCHARACTERIZED_OBJECT.self)
      entityDef.add(supertype: eCHARACTERIZED_ITEM_WITHIN_REPRESENTATION.self)
      entityDef.add(supertype: eMODEL_GEOMETRIC_VIEW.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eMODEL_GEOMETRIC_VIEW.PRODUCT_DEFINITIONAL, 
        kind: .derivedRedeclaring, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eMODEL_GEOMETRIC_VIEW.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ITEM", keyPath: \eMODEL_GEOMETRIC_VIEW.ITEM, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP", keyPath: \eMODEL_GEOMETRIC_VIEW.REP, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eMODEL_GEOMETRIC_VIEW.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: tessellated_item.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY tessellated_item
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            coordinates_list, 
            tessellated_solid, 
            tessellated_shell, 
            tessellated_wire, 
            tessellated_geometric_set, 
            tessellated_curve_set, 
            tessellated_point_set, 
            tessellated_surface_set, 
            tessellated_structured_item ) )
    SUBTYPE OF ( geometric_representation_item );
    WHERE
      wr1: ( SIZEOF( QUERY ( using_rep <* using_representations( SELF ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TESSELLATED_SHAPE_REPRESENTATION'  IN 
               TYPEOF( using_rep ) ) ) ) ) = 0 );
  END_ENTITY; -- tessellated_item (line:32052 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	tessellated_item
    (no local attributes)

  SUB- ENTITY(4)	coordinates_list
    ATTR:  npoints,	TYPE: INTEGER -- EXPLICIT

    ATTR:  position_coords,	TYPE: LIST [1 : ?] OF LIST [3 : 3] OF REAL -- EXPLICIT


  SUB- ENTITY(5)	tessellated_solid
    ATTR:  items,	TYPE: SET [1 : ?] OF tessellated_structured_item -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  geometric_link,	TYPE: OPTIONAL manifold_solid_brep -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(6)	tessellated_shell
    ATTR:  items,	TYPE: SET [1 : ?] OF tessellated_structured_item -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  topological_link,	TYPE: OPTIONAL connected_face_set -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(7)	tessellated_wire
    ATTR:  items,	TYPE: SET [1 : ?] OF tessellated_edge_or_vertex -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  geometric_model_link,	TYPE: OPTIONAL path_or_composite_curve -- EXPLICIT


  SUB- ENTITY(8)	tessellated_geometric_set
    ATTR:  children,	TYPE: SET [1 : ?] OF tessellated_item -- EXPLICIT


  SUB- ENTITY(9)	tessellated_curve_set
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  line_strips,	TYPE: LIST [1 : ?] OF LIST [2 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(10)	tessellated_point_set
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  point_list,	TYPE: LIST [1 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(11)	complex_triangulated_surface_set
    ATTR:  pnindex,	TYPE: LIST [0 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangle_strips,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangle_fans,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(12)	triangulated_surface_set
    ATTR:  pnindex,	TYPE: LIST [0 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangles,	TYPE: LIST [1 : ?] OF LIST [3 : 3] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(13)	tessellated_surface_set
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  pnmax,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  normals,	TYPE: LIST [0 : ?] OF LIST [3 : 3] OF REAL -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(14)	tessellated_vertex
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  topological_link,	TYPE: OPTIONAL vertex_point -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  point_index,	TYPE: INTEGER -- EXPLICIT


  SUB- ENTITY(15)	tessellated_connecting_edge
    ATTR:  smooth,	TYPE: LOGICAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face1,	TYPE: tessellated_face -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face2,	TYPE: tessellated_face -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  line_strip_face1,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT

    ATTR:  line_strip_face2,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(16)	cubic_tessellated_connecting_edge
    ATTR:  smooth,	TYPE: LOGICAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face1,	TYPE: cubic_bezier_triangulated_face -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  face2,	TYPE: cubic_bezier_triangulated_face -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(17)	cubic_bezier_tessellated_edge
    REDCR: line_strip,	TYPE: LIST [4 : ?] OF INTEGER -- EXPLICIT
      -- OVERRIDING ENTITY: tessellated_edge


  SUB- ENTITY(18)	tessellated_edge
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  geometric_link,	TYPE: OPTIONAL edge_or_curve -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  line_strip,	TYPE: LIST [2 : ?] OF INTEGER -- EXPLICIT
      -- possibly overriden by
          ENTITY: cubic_bezier_tessellated_edge,	TYPE: LIST [4 : ?] OF INTEGER


  SUB- ENTITY(19)	triangulated_face
    ATTR:  pnindex,	TYPE: LIST [0 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangles,	TYPE: LIST [1 : ?] OF LIST [3 : 3] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(20)	complex_triangulated_face
    ATTR:  pnindex,	TYPE: LIST [0 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangle_strips,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  triangle_fans,	TYPE: LIST [0 : ?] OF LIST [3 : ?] OF INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(21)	cubic_bezier_triangulated_face
    ATTR:  ctriangles,	TYPE: LIST [1 : ?] OF LIST [10 : 10] OF INTEGER -- EXPLICIT


  SUB- ENTITY(22)	tessellated_face
    ATTR:  coordinates,	TYPE: coordinates_list -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  pnmax,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  normals,	TYPE: LIST [0 : ?] OF LIST [3 : 3] OF REAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  geometric_link,	TYPE: OPTIONAL face_or_surface -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(23)	tessellated_structured_item
    (no local attributes)

  SUB- ENTITY(24)	repositioned_tessellated_item
    ATTR:  location,	TYPE: axis2_placement_3d -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _tessellated_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eTESSELLATED_ITEM.self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eTESSELLATED_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*eTESSELLATED_ITEM*/SELF))
      let _TEMP2 = _TEMP1?.QUERY{ USING_REP in 

          let _TEMP1 = SDAI.TYPEOF(USING_REP, IS: eTESSELLATED_SHAPE_REPRESENTATION.self)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
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
  ENTITY tessellated_item
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            coordinates_list, 
            tessellated_solid, 
            tessellated_shell, 
            tessellated_wire, 
            tessellated_geometric_set, 
            tessellated_curve_set, 
            tessellated_point_set, 
            tessellated_surface_set, 
            tessellated_structured_item ) )
    SUBTYPE OF ( geometric_representation_item );
    WHERE
      wr1: ( SIZEOF( QUERY ( using_rep <* using_representations( SELF ) | ( NOT ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.TESSELLATED_SHAPE_REPRESENTATION'  IN 
               TYPEOF( using_rep ) ) ) ) ) = 0 );
  END_ENTITY; -- tessellated_item (line:32052 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eTESSELLATED_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _tessellated_item.self
    }
    public let partialEntity: _tessellated_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public var super_eTESSELLATED_ITEM: eTESSELLATED_ITEM { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eCOORDINATES_LIST: eCOORDINATES_LIST? {	// [4]
      return self.complexEntity.entityReference(eCOORDINATES_LIST.self)
    }

    public var sub_eTESSELLATED_SOLID: eTESSELLATED_SOLID? {	// [5]
      return self.complexEntity.entityReference(eTESSELLATED_SOLID.self)
    }

    public var sub_eTESSELLATED_SHELL: eTESSELLATED_SHELL? {	// [6]
      return self.complexEntity.entityReference(eTESSELLATED_SHELL.self)
    }

    public var sub_eTESSELLATED_WIRE: eTESSELLATED_WIRE? {	// [7]
      return self.complexEntity.entityReference(eTESSELLATED_WIRE.self)
    }

    public var sub_eTESSELLATED_GEOMETRIC_SET: eTESSELLATED_GEOMETRIC_SET? {	// [8]
      return self.complexEntity.entityReference(eTESSELLATED_GEOMETRIC_SET.self)
    }

    public var sub_eTESSELLATED_CURVE_SET: eTESSELLATED_CURVE_SET? {	// [9]
      return self.complexEntity.entityReference(eTESSELLATED_CURVE_SET.self)
    }

    public var sub_eTESSELLATED_POINT_SET: eTESSELLATED_POINT_SET? {	// [10]
      return self.complexEntity.entityReference(eTESSELLATED_POINT_SET.self)
    }

    public var sub_eCOMPLEX_TRIANGULATED_SURFACE_SET: eCOMPLEX_TRIANGULATED_SURFACE_SET? {	// [11]
      return self.complexEntity.entityReference(eCOMPLEX_TRIANGULATED_SURFACE_SET.self)
    }

    public var sub_eTRIANGULATED_SURFACE_SET: eTRIANGULATED_SURFACE_SET? {	// [12]
      return self.complexEntity.entityReference(eTRIANGULATED_SURFACE_SET.self)
    }

    public var sub_eTESSELLATED_SURFACE_SET: eTESSELLATED_SURFACE_SET? {	// [13]
      return self.complexEntity.entityReference(eTESSELLATED_SURFACE_SET.self)
    }

    public var sub_eTESSELLATED_VERTEX: eTESSELLATED_VERTEX? {	// [14]
      return self.complexEntity.entityReference(eTESSELLATED_VERTEX.self)
    }

    public var sub_eTESSELLATED_CONNECTING_EDGE: eTESSELLATED_CONNECTING_EDGE? {	// [15]
      return self.complexEntity.entityReference(eTESSELLATED_CONNECTING_EDGE.self)
    }

    public var sub_eCUBIC_TESSELLATED_CONNECTING_EDGE: eCUBIC_TESSELLATED_CONNECTING_EDGE? {	// [16]
      return self.complexEntity.entityReference(eCUBIC_TESSELLATED_CONNECTING_EDGE.self)
    }

    public var sub_eCUBIC_BEZIER_TESSELLATED_EDGE: eCUBIC_BEZIER_TESSELLATED_EDGE? {	// [17]
      return self.complexEntity.entityReference(eCUBIC_BEZIER_TESSELLATED_EDGE.self)
    }

    public var sub_eTESSELLATED_EDGE: eTESSELLATED_EDGE? {	// [18]
      return self.complexEntity.entityReference(eTESSELLATED_EDGE.self)
    }

    public var sub_eTRIANGULATED_FACE: eTRIANGULATED_FACE? {	// [19]
      return self.complexEntity.entityReference(eTRIANGULATED_FACE.self)
    }

    public var sub_eCOMPLEX_TRIANGULATED_FACE: eCOMPLEX_TRIANGULATED_FACE? {	// [20]
      return self.complexEntity.entityReference(eCOMPLEX_TRIANGULATED_FACE.self)
    }

    public var sub_eCUBIC_BEZIER_TRIANGULATED_FACE: eCUBIC_BEZIER_TRIANGULATED_FACE? {	// [21]
      return self.complexEntity.entityReference(eCUBIC_BEZIER_TRIANGULATED_FACE.self)
    }

    public var sub_eTESSELLATED_FACE: eTESSELLATED_FACE? {	// [22]
      return self.complexEntity.entityReference(eTESSELLATED_FACE.self)
    }

    public var sub_eTESSELLATED_STRUCTURED_ITEM: eTESSELLATED_STRUCTURED_ITEM? {	// [23]
      return self.complexEntity.entityReference(eTESSELLATED_STRUCTURED_ITEM.self)
    }

    public var sub_eREPOSITIONED_TESSELLATED_ITEM: eREPOSITIONED_TESSELLATED_ITEM? {	// [24]
      return self.complexEntity.entityReference(eREPOSITIONED_TESSELLATED_ITEM.self)
    }


    //MARK: ATTRIBUTES
    // FACE1: (2 AMBIGUOUS REFs)

    // FACE2: (2 AMBIGUOUS REFs)

    // NORMALS: (2 AMBIGUOUS REFs)

    // GEOMETRIC_LINK: (3 AMBIGUOUS REFs)

    // TOPOLOGICAL_LINK: (2 AMBIGUOUS REFs)

    // ITEMS: (3 AMBIGUOUS REFs)

    // COORDINATES: (6 AMBIGUOUS REFs)

    // TRIANGLE_STRIPS: (2 AMBIGUOUS REFs)

    // TRIANGLES: (2 AMBIGUOUS REFs)

    // PNINDEX: (4 AMBIGUOUS REFs)

    // PNMAX: (2 AMBIGUOUS REFs)

    // SMOOTH: (2 AMBIGUOUS REFs)

    // TRIANGLE_FANS: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCUBIC_BEZIER_TRIANGULATED_FACE`` )
    public var CTRIANGLES: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[10:10]*/ >/*[1:nil]*/ )?  {
      get {
        return sub_eCUBIC_BEZIER_TRIANGULATED_FACE?.partialEntity._ctriangles
      }
      set(newValue) {
        guard let partial = sub_eCUBIC_BEZIER_TRIANGULATED_FACE?.super_eCUBIC_BEZIER_TRIANGULATED_FACE
          .partialEntity else { return }
        partial._ctriangles = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_POINT_SET`` )
    public var POINT_LIST: (SDAI.LIST<SDAI.INTEGER>/*[1:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_POINT_SET?.partialEntity._point_list
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_POINT_SET?.super_eTESSELLATED_POINT_SET.partialEntity
          else { return }
        partial._point_list = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_EDGE`` )
    public var LINE_STRIP: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_EDGE?.partialEntity._line_strip
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_EDGE?.super_eTESSELLATED_EDGE.partialEntity else { return }
        partial._line_strip = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_CONNECTING_EDGE`` )
    public var LINE_STRIP_FACE2: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_CONNECTING_EDGE?.partialEntity._line_strip_face2
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_CONNECTING_EDGE?.super_eTESSELLATED_CONNECTING_EDGE
          .partialEntity else { return }
        partial._line_strip_face2 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_WIRE`` )
    public var GEOMETRIC_MODEL_LINK: sPATH_OR_COMPOSITE_CURVE?  {
      get {
        return sub_eTESSELLATED_WIRE?.partialEntity._geometric_model_link
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_WIRE?.super_eTESSELLATED_WIRE.partialEntity else { return }
        partial._geometric_model_link = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_CONNECTING_EDGE`` )
    public var LINE_STRIP_FACE1: (SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_CONNECTING_EDGE?.partialEntity._line_strip_face1
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_CONNECTING_EDGE?.super_eTESSELLATED_CONNECTING_EDGE
          .partialEntity else { return }
        partial._line_strip_face1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOORDINATES_LIST`` )
    public var NPOINTS: SDAI.INTEGER?  {
      get {
        return sub_eCOORDINATES_LIST?.partialEntity._npoints
      }
      set(newValue) {
        guard let partial = sub_eCOORDINATES_LIST?.super_eCOORDINATES_LIST.partialEntity else { return }
        partial._npoints = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOORDINATES_LIST`` )
    public var POSITION_COORDS: (SDAI.LIST<SDAI.LIST<SDAI.REAL>/*[3:3]*/ >/*[1:nil]*/ )?  {
      get {
        return sub_eCOORDINATES_LIST?.partialEntity._position_coords
      }
      set(newValue) {
        guard let partial = sub_eCOORDINATES_LIST?.super_eCOORDINATES_LIST.partialEntity else { return }
        partial._position_coords = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_VERTEX`` )
    public var POINT_INDEX: SDAI.INTEGER?  {
      get {
        return sub_eTESSELLATED_VERTEX?.partialEntity._point_index
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_VERTEX?.super_eTESSELLATED_VERTEX.partialEntity else { return }
        partial._point_index = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREPOSITIONED_TESSELLATED_ITEM`` )
    public var LOCATION: eAXIS2_PLACEMENT_3D?  {
      get {
        return sub_eREPOSITIONED_TESSELLATED_ITEM?.partialEntity._location
      }
      set(newValue) {
        guard let partial = sub_eREPOSITIONED_TESSELLATED_ITEM?.super_eREPOSITIONED_TESSELLATED_ITEM
          .partialEntity else { return }
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_GEOMETRIC_SET`` )
    public var CHILDREN: (SDAI.SET<eTESSELLATED_ITEM>/*[1:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_GEOMETRIC_SET?.partialEntity._children
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_GEOMETRIC_SET?.super_eTESSELLATED_GEOMETRIC_SET.partialEntity
          else { return }
        partial._children = SDAI.UNWRAP(newValue)
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

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTESSELLATED_CURVE_SET`` )
    public var LINE_STRIPS: (SDAI.LIST<SDAI.LIST<SDAI.INTEGER>/*[2:nil]*/ >/*[1:nil]*/ )?  {
      get {
        return sub_eTESSELLATED_CURVE_SET?.partialEntity._line_strips
      }
      set(newValue) {
        guard let partial = sub_eTESSELLATED_CURVE_SET?.super_eTESSELLATED_CURVE_SET.partialEntity
          else { return }
        partial._line_strips = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_tessellated_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

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
      result[prefix2 + " .WHERE_wr1"] = _tessellated_item.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "TESSELLATED_ITEM", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTESSELLATED_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CTRIANGLES", keyPath: \eTESSELLATED_ITEM.CTRIANGLES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POINT_LIST", keyPath: \eTESSELLATED_ITEM.POINT_LIST, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINE_STRIP", keyPath: \eTESSELLATED_ITEM.LINE_STRIP, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINE_STRIP_FACE2", keyPath: \eTESSELLATED_ITEM.LINE_STRIP_FACE2, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "GEOMETRIC_MODEL_LINK", keyPath: \eTESSELLATED_ITEM.GEOMETRIC_MODEL_LINK, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LINE_STRIP_FACE1", keyPath: \eTESSELLATED_ITEM.LINE_STRIP_FACE1, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NPOINTS", keyPath: \eTESSELLATED_ITEM.NPOINTS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POSITION_COORDS", keyPath: \eTESSELLATED_ITEM.POSITION_COORDS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "POINT_INDEX", keyPath: \eTESSELLATED_ITEM.POINT_INDEX, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOCATION", keyPath: \eTESSELLATED_ITEM.LOCATION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eTESSELLATED_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CHILDREN", keyPath: \eTESSELLATED_ITEM.CHILDREN, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIM", keyPath: \eTESSELLATED_ITEM.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LINE_STRIPS", keyPath: \eTESSELLATED_ITEM.LINE_STRIPS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

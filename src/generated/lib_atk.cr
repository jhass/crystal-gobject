require "./lib_g_lib"
require "./lib_g_object"

@[Link("atk-1.0")]
lib LibAtk

  ###########################################
  ##    Interfaces
  ###########################################

  struct Action # interface
    parent : LibGObject::TypeInterface
    do_action : -> Void
    get_n_actions : -> Void
    get_description : -> Void
    get_name : -> Void
    get_keybinding : -> Void
    set_description : -> Void
    get_localized_name : -> Void
    # Virtual function do_action
    # Virtual function get_description
    # Virtual function get_keybinding
    # Virtual function get_localized_name
    # Virtual function get_n_actions
    # Virtual function get_name
    # Virtual function set_description
  end
  fun action_do_action = atk_action_do_action(this : Action*, i : Int32) : Bool
  fun action_get_description = atk_action_get_description(this : Action*, i : Int32) : UInt8*
  fun action_get_keybinding = atk_action_get_keybinding(this : Action*, i : Int32) : UInt8*
  fun action_get_localized_name = atk_action_get_localized_name(this : Action*, i : Int32) : UInt8*
  fun action_get_n_actions = atk_action_get_n_actions(this : Action*) : Int32
  fun action_get_name = atk_action_get_name(this : Action*, i : Int32) : UInt8*
  fun action_set_description = atk_action_set_description(this : Action*, i : Int32, desc : UInt8*) : Bool

  struct Component # interface
    parent : LibGObject::TypeInterface
    add_focus_handler : Void*
    contains : -> Void
    ref_accessible_at_point : -> Void
    get_extents : -> Void
    get_position : -> Void
    get_size : -> Void
    grab_focus : -> Void
    remove_focus_handler : -> Void
    set_extents : -> Void
    set_position : -> Void
    set_size : -> Void
    get_layer : -> Void
    get_mdi_zorder : -> Void
    bounds_changed : -> Void
    get_alpha : -> Void
    scroll_to : -> Void
    scroll_to_point : -> Void
    # Signal bounds-changed
    # Virtual function bounds_changed
    # Virtual function contains
    # Virtual function get_alpha
    # Virtual function get_extents
    # Virtual function get_layer
    # Virtual function get_mdi_zorder
    # Virtual function get_position
    # Virtual function get_size
    # Virtual function grab_focus
    # Virtual function ref_accessible_at_point
    # Virtual function remove_focus_handler
    # Virtual function scroll_to
    # Virtual function scroll_to_point
    # Virtual function set_extents
    # Virtual function set_position
    # Virtual function set_size
  end
  fun component_contains = atk_component_contains(this : Component*, x : Int32, y : Int32, coord_type : LibAtk::CoordType) : Bool
  fun component_get_alpha = atk_component_get_alpha(this : Component*) : Float64
  fun component_get_extents = atk_component_get_extents(this : Component*, x : Int32*, y : Int32*, width : Int32*, height : Int32*, coord_type : LibAtk::CoordType) : Void
  fun component_get_layer = atk_component_get_layer(this : Component*) : LibAtk::Layer
  fun component_get_mdi_zorder = atk_component_get_mdi_zorder(this : Component*) : Int32
  fun component_get_position = atk_component_get_position(this : Component*, x : Int32*, y : Int32*, coord_type : LibAtk::CoordType) : Void
  fun component_get_size = atk_component_get_size(this : Component*, width : Int32*, height : Int32*) : Void
  fun component_grab_focus = atk_component_grab_focus(this : Component*) : Bool
  fun component_ref_accessible_at_point = atk_component_ref_accessible_at_point(this : Component*, x : Int32, y : Int32, coord_type : LibAtk::CoordType) : LibAtk::Object*
  fun component_remove_focus_handler = atk_component_remove_focus_handler(this : Component*, handler_id : UInt32) : Void
  fun component_scroll_to = atk_component_scroll_to(this : Component*, type : LibAtk::ScrollType) : Bool
  fun component_scroll_to_point = atk_component_scroll_to_point(this : Component*, coords : LibAtk::CoordType, x : Int32, y : Int32) : Bool
  fun component_set_extents = atk_component_set_extents(this : Component*, x : Int32, y : Int32, width : Int32, height : Int32, coord_type : LibAtk::CoordType) : Bool
  fun component_set_position = atk_component_set_position(this : Component*, x : Int32, y : Int32, coord_type : LibAtk::CoordType) : Bool
  fun component_set_size = atk_component_set_size(this : Component*, width : Int32, height : Int32) : Bool

  struct Document # interface
    parent : LibGObject::TypeInterface
    get_document_type : -> Void
    get_document : -> Void
    get_document_locale : -> Void
    get_document_attributes : -> Void
    get_document_attribute_value : -> Void
    set_document_attribute : -> Void
    get_current_page_number : -> Void
    get_page_count : -> Void
    # Signal load-complete
    # Signal load-stopped
    # Signal page-changed
    # Signal reload
    # Virtual function get_current_page_number
    # Virtual function get_document
    # Virtual function get_document_attribute_value
    # Virtual function get_document_attributes
    # Virtual function get_document_locale
    # Virtual function get_document_type
    # Virtual function get_page_count
    # Virtual function set_document_attribute
  end
  fun document_get_attribute_value = atk_document_get_attribute_value(this : Document*, attribute_name : UInt8*) : UInt8*
  fun document_get_attributes = atk_document_get_attributes(this : Document*) : Void**
  fun document_get_current_page_number = atk_document_get_current_page_number(this : Document*) : Int32
  fun document_get_document = atk_document_get_document(this : Document*) : Void*
  fun document_get_document_type = atk_document_get_document_type(this : Document*) : UInt8*
  fun document_get_locale = atk_document_get_locale(this : Document*) : UInt8*
  fun document_get_page_count = atk_document_get_page_count(this : Document*) : Int32
  fun document_set_attribute_value = atk_document_set_attribute_value(this : Document*, attribute_name : UInt8*, attribute_value : UInt8*) : Bool

  struct EditableText # interface
    parent_interface : LibGObject::TypeInterface
    set_run_attributes : -> Void
    set_text_contents : -> Void
    insert_text : -> Void
    copy_text : -> Void
    cut_text : -> Void
    delete_text : -> Void
    paste_text : -> Void
    # Virtual function copy_text
    # Virtual function cut_text
    # Virtual function delete_text
    # Virtual function insert_text
    # Virtual function paste_text
    # Virtual function set_run_attributes
    # Virtual function set_text_contents
  end
  fun editable_text_copy_text = atk_editable_text_copy_text(this : EditableText*, start_pos : Int32, end_pos : Int32) : Void
  fun editable_text_cut_text = atk_editable_text_cut_text(this : EditableText*, start_pos : Int32, end_pos : Int32) : Void
  fun editable_text_delete_text = atk_editable_text_delete_text(this : EditableText*, start_pos : Int32, end_pos : Int32) : Void
  fun editable_text_insert_text = atk_editable_text_insert_text(this : EditableText*, string : UInt8*, length : Int32, position : Int32*) : Void
  fun editable_text_paste_text = atk_editable_text_paste_text(this : EditableText*, position : Int32) : Void
  fun editable_text_set_run_attributes = atk_editable_text_set_run_attributes(this : EditableText*, attrib_set : Void**, start_offset : Int32, end_offset : Int32) : Bool
  fun editable_text_set_text_contents = atk_editable_text_set_text_contents(this : EditableText*, string : UInt8*) : Void

  struct HyperlinkImpl # interface
    parent : LibGObject::TypeInterface
    get_hyperlink : -> Void
    # Virtual function get_hyperlink
  end
  fun hyperlink_impl_get_hyperlink = atk_hyperlink_impl_get_hyperlink(this : HyperlinkImpl*) : LibAtk::Hyperlink*

  struct Hypertext # interface
    parent : LibGObject::TypeInterface
    get_link : -> Void
    get_n_links : -> Void
    get_link_index : -> Void
    link_selected : -> Void
    # Signal link-selected
    # Virtual function get_link
    # Virtual function get_link_index
    # Virtual function get_n_links
    # Virtual function link_selected
  end
  fun hypertext_get_link = atk_hypertext_get_link(this : Hypertext*, link_index : Int32) : LibAtk::Hyperlink*
  fun hypertext_get_link_index = atk_hypertext_get_link_index(this : Hypertext*, char_index : Int32) : Int32
  fun hypertext_get_n_links = atk_hypertext_get_n_links(this : Hypertext*) : Int32

  struct Image # interface
    parent : LibGObject::TypeInterface
    get_image_position : -> Void
    get_image_description : -> Void
    get_image_size : -> Void
    set_image_description : -> Void
    get_image_locale : -> Void
    # Virtual function get_image_description
    # Virtual function get_image_locale
    # Virtual function get_image_position
    # Virtual function get_image_size
    # Virtual function set_image_description
  end
  fun image_get_image_description = atk_image_get_image_description(this : Image*) : UInt8*
  fun image_get_image_locale = atk_image_get_image_locale(this : Image*) : UInt8*
  fun image_get_image_position = atk_image_get_image_position(this : Image*, x : Int32*, y : Int32*, coord_type : LibAtk::CoordType) : Void
  fun image_get_image_size = atk_image_get_image_size(this : Image*, width : Int32*, height : Int32*) : Void
  fun image_set_image_description = atk_image_set_image_description(this : Image*, description : UInt8*) : Bool

  struct ImplementorIface # interface
    _data : UInt8[0]
  end

  struct Selection # interface
    parent : LibGObject::TypeInterface
    add_selection : -> Void
    clear_selection : -> Void
    ref_selection : -> Void
    get_selection_count : -> Void
    is_child_selected : -> Void
    remove_selection : -> Void
    select_all_selection : -> Void
    selection_changed : -> Void
    # Signal selection-changed
    # Virtual function add_selection
    # Virtual function clear_selection
    # Virtual function get_selection_count
    # Virtual function is_child_selected
    # Virtual function ref_selection
    # Virtual function remove_selection
    # Virtual function select_all_selection
    # Virtual function selection_changed
  end
  fun selection_add_selection = atk_selection_add_selection(this : Selection*, i : Int32) : Bool
  fun selection_clear_selection = atk_selection_clear_selection(this : Selection*) : Bool
  fun selection_get_selection_count = atk_selection_get_selection_count(this : Selection*) : Int32
  fun selection_is_child_selected = atk_selection_is_child_selected(this : Selection*, i : Int32) : Bool
  fun selection_ref_selection = atk_selection_ref_selection(this : Selection*, i : Int32) : LibAtk::Object*
  fun selection_remove_selection = atk_selection_remove_selection(this : Selection*, i : Int32) : Bool
  fun selection_select_all_selection = atk_selection_select_all_selection(this : Selection*) : Bool

  struct StreamableContent # interface
    parent : LibGObject::TypeInterface
    get_n_mime_types : -> Void
    get_mime_type : -> Void
    get_stream : -> Void
    get_uri : -> Void
    pad1 : LibAtk::Function
    pad2 : LibAtk::Function
    pad3 : LibAtk::Function
    # Virtual function get_mime_type
    # Virtual function get_n_mime_types
    # Virtual function get_stream
    # Virtual function get_uri
  end
  fun streamable_content_get_mime_type = atk_streamable_content_get_mime_type(this : StreamableContent*, i : Int32) : UInt8*
  fun streamable_content_get_n_mime_types = atk_streamable_content_get_n_mime_types(this : StreamableContent*) : Int32
  fun streamable_content_get_stream = atk_streamable_content_get_stream(this : StreamableContent*, mime_type : UInt8*) : LibGLib::IOChannel*
  fun streamable_content_get_uri = atk_streamable_content_get_uri(this : StreamableContent*, mime_type : UInt8*) : UInt8*

  struct Table # interface
    parent : LibGObject::TypeInterface
    ref_at : -> Void
    get_index_at : -> Void
    get_column_at_index : -> Void
    get_row_at_index : -> Void
    get_n_columns : -> Void
    get_n_rows : -> Void
    get_column_extent_at : -> Void
    get_row_extent_at : -> Void
    get_caption : -> Void
    get_column_description : -> Void
    get_column_header : -> Void
    get_row_description : -> Void
    get_row_header : -> Void
    get_summary : -> Void
    set_caption : -> Void
    set_column_description : -> Void
    set_column_header : -> Void
    set_row_description : -> Void
    set_row_header : -> Void
    set_summary : -> Void
    get_selected_columns : -> Void
    get_selected_rows : -> Void
    is_column_selected : -> Void
    is_row_selected : -> Void
    is_selected : -> Void
    add_row_selection : -> Void
    remove_row_selection : -> Void
    add_column_selection : -> Void
    remove_column_selection : -> Void
    row_inserted : -> Void
    column_inserted : -> Void
    row_deleted : -> Void
    column_deleted : -> Void
    row_reordered : -> Void
    column_reordered : -> Void
    model_changed : -> Void
    # Signal column-deleted
    # Signal column-inserted
    # Signal column-reordered
    # Signal model-changed
    # Signal row-deleted
    # Signal row-inserted
    # Signal row-reordered
    # Virtual function add_column_selection
    # Virtual function add_row_selection
    # Virtual function column_deleted
    # Virtual function column_inserted
    # Virtual function column_reordered
    # Virtual function get_caption
    # Virtual function get_column_at_index
    # Virtual function get_column_description
    # Virtual function get_column_extent_at
    # Virtual function get_column_header
    # Virtual function get_index_at
    # Virtual function get_n_columns
    # Virtual function get_n_rows
    # Virtual function get_row_at_index
    # Virtual function get_row_description
    # Virtual function get_row_extent_at
    # Virtual function get_row_header
    # Virtual function get_selected_columns
    # Virtual function get_selected_rows
    # Virtual function get_summary
    # Virtual function is_column_selected
    # Virtual function is_row_selected
    # Virtual function is_selected
    # Virtual function model_changed
    # Virtual function ref_at
    # Virtual function remove_column_selection
    # Virtual function remove_row_selection
    # Virtual function row_deleted
    # Virtual function row_inserted
    # Virtual function row_reordered
    # Virtual function set_caption
    # Virtual function set_column_description
    # Virtual function set_column_header
    # Virtual function set_row_description
    # Virtual function set_row_header
    # Virtual function set_summary
  end
  fun table_add_column_selection = atk_table_add_column_selection(this : Table*, column : Int32) : Bool
  fun table_add_row_selection = atk_table_add_row_selection(this : Table*, row : Int32) : Bool
  fun table_get_caption = atk_table_get_caption(this : Table*) : LibAtk::Object*
  fun table_get_column_at_index = atk_table_get_column_at_index(this : Table*, index : Int32) : Int32
  fun table_get_column_description = atk_table_get_column_description(this : Table*, column : Int32) : UInt8*
  fun table_get_column_extent_at = atk_table_get_column_extent_at(this : Table*, row : Int32, column : Int32) : Int32
  fun table_get_column_header = atk_table_get_column_header(this : Table*, column : Int32) : LibAtk::Object*
  fun table_get_index_at = atk_table_get_index_at(this : Table*, row : Int32, column : Int32) : Int32
  fun table_get_n_columns = atk_table_get_n_columns(this : Table*) : Int32
  fun table_get_n_rows = atk_table_get_n_rows(this : Table*) : Int32
  fun table_get_row_at_index = atk_table_get_row_at_index(this : Table*, index : Int32) : Int32
  fun table_get_row_description = atk_table_get_row_description(this : Table*, row : Int32) : UInt8*
  fun table_get_row_extent_at = atk_table_get_row_extent_at(this : Table*, row : Int32, column : Int32) : Int32
  fun table_get_row_header = atk_table_get_row_header(this : Table*, row : Int32) : LibAtk::Object*
  fun table_get_selected_columns = atk_table_get_selected_columns(this : Table*, selected : Int32*) : Int32
  fun table_get_selected_rows = atk_table_get_selected_rows(this : Table*, selected : Int32*) : Int32
  fun table_get_summary = atk_table_get_summary(this : Table*) : LibAtk::Object*
  fun table_is_column_selected = atk_table_is_column_selected(this : Table*, column : Int32) : Bool
  fun table_is_row_selected = atk_table_is_row_selected(this : Table*, row : Int32) : Bool
  fun table_is_selected = atk_table_is_selected(this : Table*, row : Int32, column : Int32) : Bool
  fun table_ref_at = atk_table_ref_at(this : Table*, row : Int32, column : Int32) : LibAtk::Object*
  fun table_remove_column_selection = atk_table_remove_column_selection(this : Table*, column : Int32) : Bool
  fun table_remove_row_selection = atk_table_remove_row_selection(this : Table*, row : Int32) : Bool
  fun table_set_caption = atk_table_set_caption(this : Table*, caption : LibAtk::Object*) : Void
  fun table_set_column_description = atk_table_set_column_description(this : Table*, column : Int32, description : UInt8*) : Void
  fun table_set_column_header = atk_table_set_column_header(this : Table*, column : Int32, header : LibAtk::Object*) : Void
  fun table_set_row_description = atk_table_set_row_description(this : Table*, row : Int32, description : UInt8*) : Void
  fun table_set_row_header = atk_table_set_row_header(this : Table*, row : Int32, header : LibAtk::Object*) : Void
  fun table_set_summary = atk_table_set_summary(this : Table*, accessible : LibAtk::Object*) : Void

  struct TableCell # interface
    parent : LibGObject::TypeInterface
    get_column_span : -> Void
    get_column_header_cells : -> Void
    get_position : -> Void
    get_row_span : -> Void
    get_row_header_cells : -> Void
    get_row_column_span : -> Void
    get_table : -> Void
  # Requires Object
    # Virtual function get_column_header_cells
    # Virtual function get_column_span
    # Virtual function get_position
    # Virtual function get_row_column_span
    # Virtual function get_row_header_cells
    # Virtual function get_row_span
    # Virtual function get_table
  end
  fun table_cell_get_column_header_cells = atk_table_cell_get_column_header_cells(this : TableCell*) : Void*
  fun table_cell_get_column_span = atk_table_cell_get_column_span(this : TableCell*) : Int32
  fun table_cell_get_position = atk_table_cell_get_position(this : TableCell*, row : Int32*, column : Int32*) : Bool
  fun table_cell_get_row_column_span = atk_table_cell_get_row_column_span(this : TableCell*, row : Int32*, column : Int32*, row_span : Int32*, column_span : Int32*) : Bool
  fun table_cell_get_row_header_cells = atk_table_cell_get_row_header_cells(this : TableCell*) : Void*
  fun table_cell_get_row_span = atk_table_cell_get_row_span(this : TableCell*) : Int32
  fun table_cell_get_table = atk_table_cell_get_table(this : TableCell*) : LibAtk::Object*

  struct Text # interface
    parent : LibGObject::TypeInterface
    get_text : -> Void
    get_text_after_offset : -> Void
    get_text_at_offset : -> Void
    get_character_at_offset : -> Void
    get_text_before_offset : -> Void
    get_caret_offset : -> Void
    get_run_attributes : -> Void
    get_default_attributes : -> Void
    get_character_extents : -> Void
    get_character_count : -> Void
    get_offset_at_point : -> Void
    get_n_selections : -> Void
    get_selection : -> Void
    add_selection : -> Void
    remove_selection : -> Void
    set_selection : -> Void
    set_caret_offset : -> Void
    text_changed : -> Void
    text_caret_moved : -> Void
    text_selection_changed : -> Void
    text_attributes_changed : -> Void
    get_range_extents : -> Void
    get_bounded_ranges : -> Void
    get_string_at_offset : -> Void
    # Signal text-attributes-changed
    # Signal text-caret-moved
    # Signal text-changed
    # Signal text-insert
    # Signal text-remove
    # Signal text-selection-changed
    # Virtual function add_selection
    # Virtual function get_bounded_ranges
    # Virtual function get_caret_offset
    # Virtual function get_character_at_offset
    # Virtual function get_character_count
    # Virtual function get_character_extents
    # Virtual function get_default_attributes
    # Virtual function get_n_selections
    # Virtual function get_offset_at_point
    # Virtual function get_range_extents
    # Virtual function get_run_attributes
    # Virtual function get_selection
    # Virtual function get_string_at_offset
    # Virtual function get_text
    # Virtual function get_text_after_offset
    # Virtual function get_text_at_offset
    # Virtual function get_text_before_offset
    # Virtual function remove_selection
    # Virtual function set_caret_offset
    # Virtual function set_selection
    # Virtual function text_attributes_changed
    # Virtual function text_caret_moved
    # Virtual function text_changed
    # Virtual function text_selection_changed
  end
  fun text_free_ranges = atk_text_free_ranges(ranges : LibAtk::TextRange**) : Void
  fun text_add_selection = atk_text_add_selection(this : Text*, start_offset : Int32, end_offset : Int32) : Bool
  fun text_get_bounded_ranges = atk_text_get_bounded_ranges(this : Text*, rect : LibAtk::TextRectangle*, coord_type : LibAtk::CoordType, x_clip_type : LibAtk::TextClipType, y_clip_type : LibAtk::TextClipType) : LibAtk::TextRange**
  fun text_get_caret_offset = atk_text_get_caret_offset(this : Text*) : Int32
  fun text_get_character_at_offset = atk_text_get_character_at_offset(this : Text*, offset : Int32) : UInt8
  fun text_get_character_count = atk_text_get_character_count(this : Text*) : Int32
  fun text_get_character_extents = atk_text_get_character_extents(this : Text*, offset : Int32, x : Int32*, y : Int32*, width : Int32*, height : Int32*, coords : LibAtk::CoordType) : Void
  fun text_get_default_attributes = atk_text_get_default_attributes(this : Text*) : Void**
  fun text_get_n_selections = atk_text_get_n_selections(this : Text*) : Int32
  fun text_get_offset_at_point = atk_text_get_offset_at_point(this : Text*, x : Int32, y : Int32, coords : LibAtk::CoordType) : Int32
  fun text_get_range_extents = atk_text_get_range_extents(this : Text*, start_offset : Int32, end_offset : Int32, coord_type : LibAtk::CoordType, rect : LibAtk::TextRectangle*) : Void
  fun text_get_run_attributes = atk_text_get_run_attributes(this : Text*, offset : Int32, start_offset : Int32*, end_offset : Int32*) : Void**
  fun text_get_selection = atk_text_get_selection(this : Text*, selection_num : Int32, start_offset : Int32*, end_offset : Int32*) : UInt8*
  fun text_get_string_at_offset = atk_text_get_string_at_offset(this : Text*, offset : Int32, granularity : LibAtk::TextGranularity, start_offset : Int32*, end_offset : Int32*) : UInt8*
  fun text_get_text = atk_text_get_text(this : Text*, start_offset : Int32, end_offset : Int32) : UInt8*
  fun text_get_text_after_offset = atk_text_get_text_after_offset(this : Text*, offset : Int32, boundary_type : LibAtk::TextBoundary, start_offset : Int32*, end_offset : Int32*) : UInt8*
  fun text_get_text_at_offset = atk_text_get_text_at_offset(this : Text*, offset : Int32, boundary_type : LibAtk::TextBoundary, start_offset : Int32*, end_offset : Int32*) : UInt8*
  fun text_get_text_before_offset = atk_text_get_text_before_offset(this : Text*, offset : Int32, boundary_type : LibAtk::TextBoundary, start_offset : Int32*, end_offset : Int32*) : UInt8*
  fun text_remove_selection = atk_text_remove_selection(this : Text*, selection_num : Int32) : Bool
  fun text_set_caret_offset = atk_text_set_caret_offset(this : Text*, offset : Int32) : Bool
  fun text_set_selection = atk_text_set_selection(this : Text*, selection_num : Int32, start_offset : Int32, end_offset : Int32) : Bool

  struct Value # interface
    parent : LibGObject::TypeInterface
    get_current_value : -> Void
    get_maximum_value : -> Void
    get_minimum_value : -> Void
    set_current_value : -> Void
    get_minimum_increment : -> Void
    get_value_and_text : -> Void
    get_range : -> Void
    get_increment : -> Void
    get_sub_ranges : -> Void
    set_value : -> Void
    # Signal value-changed
    # Virtual function get_current_value
    # Virtual function get_increment
    # Virtual function get_maximum_value
    # Virtual function get_minimum_increment
    # Virtual function get_minimum_value
    # Virtual function get_range
    # Virtual function get_sub_ranges
    # Virtual function get_value_and_text
    # Virtual function set_current_value
    # Virtual function set_value
  end
  fun value_get_current_value = atk_value_get_current_value(this : Value*, value : LibGObject::Value*) : Void
  fun value_get_increment = atk_value_get_increment(this : Value*) : Float64
  fun value_get_maximum_value = atk_value_get_maximum_value(this : Value*, value : LibGObject::Value*) : Void
  fun value_get_minimum_increment = atk_value_get_minimum_increment(this : Value*, value : LibGObject::Value*) : Void
  fun value_get_minimum_value = atk_value_get_minimum_value(this : Value*, value : LibGObject::Value*) : Void
  fun value_get_range = atk_value_get_range(this : Value*) : LibAtk::Range*
  fun value_get_sub_ranges = atk_value_get_sub_ranges(this : Value*) : Void**
  fun value_get_value_and_text = atk_value_get_value_and_text(this : Value*, value : Float64*, text : UInt8**) : Void
  fun value_set_current_value = atk_value_set_current_value(this : Value*, value : LibGObject::Value*) : Bool
  fun value_set_value = atk_value_set_value(this : Value*, new_value : Float64) : Void

  struct Window # interface
    parent : LibGObject::TypeInterface
  # Requires Object
    # Signal activate
    # Signal create
    # Signal deactivate
    # Signal destroy
    # Signal maximize
    # Signal minimize
    # Signal move
    # Signal resize
    # Signal restore
  end


  ###########################################
  ##    Structs
  ###########################################

  struct Attribute # struct
    name : UInt8*
    value : UInt8*
  end
  fun attribute_set_free = atk_attribute_set_free(attrib_set : Void**) : Void

  struct Implementor # struct
    _data : UInt8[0]
  end
  fun implementor_ref_accessible = atk_implementor_ref_accessible(this : Implementor*) : LibAtk::Object*

  struct KeyEventStruct # struct
    type : Int32
    state : UInt32
    keyval : UInt32
    length : Int32
    string : UInt8*
    keycode : UInt16
    timestamp : UInt32
  end

  struct PropertyValues # struct
    property_name : UInt8*
    old_value : LibGObject::Value
    new_value : LibGObject::Value
  end

  struct Range # struct
    _data : UInt8[0]
  end
  fun range_new = atk_range_new(lower_limit : Float64, upper_limit : Float64, description : UInt8*) : LibAtk::Range*
  fun range_copy = atk_range_copy(this : Range*) : LibAtk::Range*
  fun range_free = atk_range_free(this : Range*) : Void
  fun range_get_description = atk_range_get_description(this : Range*) : UInt8*
  fun range_get_lower_limit = atk_range_get_lower_limit(this : Range*) : Float64
  fun range_get_upper_limit = atk_range_get_upper_limit(this : Range*) : Float64

  struct Rectangle # struct
    x : Int32
    y : Int32
    width : Int32
    height : Int32
  end

  struct TextRange # struct
    bounds : LibAtk::TextRectangle
    start_offset : Int32
    end_offset : Int32
    content : UInt8*
  end

  struct TextRectangle # struct
    x : Int32
    y : Int32
    width : Int32
    height : Int32
  end


  ###########################################
  ##    Constants
  ###########################################

  BINARY_AGE = 23010 # : Int32
  INTERFACE_AGE = 1 # : Int32
  MAJOR_VERSION = 2 # : Int32
  MICRO_VERSION = 0 # : Int32
  MINOR_VERSION = 30 # : Int32
  VERSION_MIN_REQUIRED = 2 # : Int32

  ###########################################
  ##    Enums
  ###########################################

  enum CoordType : UInt32
    ZERO_NONE = 0
    SCREEN = 0
    WINDOW = 1
    PARENT = 2
  end

  enum KeyEventType : UInt32
    ZERO_NONE = 0
    PRESS = 0
    RELEASE = 1
    LAST_DEFINED = 2
  end

  enum Layer : UInt32
    ZERO_NONE = 0
    INVALID = 0
    BACKGROUND = 1
    CANVAS = 2
    WIDGET = 3
    MDI = 4
    POPUP = 5
    OVERLAY = 6
    WINDOW = 7
  end

  enum RelationType : UInt32
    ZERO_NONE = 0
    NULL = 0
    CONTROLLED_BY = 1
    CONTROLLER_FOR = 2
    LABEL_FOR = 3
    LABELLED_BY = 4
    MEMBER_OF = 5
    NODE_CHILD_OF = 6
    FLOWS_TO = 7
    FLOWS_FROM = 8
    SUBWINDOW_OF = 9
    EMBEDS = 10
    EMBEDDED_BY = 11
    POPUP_FOR = 12
    PARENT_WINDOW_OF = 13
    DESCRIBED_BY = 14
    DESCRIPTION_FOR = 15
    NODE_PARENT_OF = 16
    DETAILS = 17
    DETAILS_FOR = 18
    ERROR_MESSAGE = 19
    ERROR_FOR = 20
    LAST_DEFINED = 21
  end
  fun relation_type_for_name = atk_relation_type_for_name(name : UInt8*) : LibAtk::RelationType
  fun relation_type_get_name = atk_relation_type_get_name(type : LibAtk::RelationType) : UInt8*
  fun relation_type_register = atk_relation_type_register(name : UInt8*) : LibAtk::RelationType

  enum Role : UInt32
    ZERO_NONE = 0
    INVALID = 0
    ACCELERATOR_LABEL = 1
    ALERT = 2
    ANIMATION = 3
    ARROW = 4
    CALENDAR = 5
    CANVAS = 6
    CHECK_BOX = 7
    CHECK_MENU_ITEM = 8
    COLOR_CHOOSER = 9
    COLUMN_HEADER = 10
    COMBO_BOX = 11
    DATE_EDITOR = 12
    DESKTOP_ICON = 13
    DESKTOP_FRAME = 14
    DIAL = 15
    DIALOG = 16
    DIRECTORY_PANE = 17
    DRAWING_AREA = 18
    FILE_CHOOSER = 19
    FILLER = 20
    FONT_CHOOSER = 21
    FRAME = 22
    GLASS_PANE = 23
    HTML_CONTAINER = 24
    ICON = 25
    IMAGE = 26
    INTERNAL_FRAME = 27
    LABEL = 28
    LAYERED_PANE = 29
    LIST = 30
    LIST_ITEM = 31
    MENU = 32
    MENU_BAR = 33
    MENU_ITEM = 34
    OPTION_PANE = 35
    PAGE_TAB = 36
    PAGE_TAB_LIST = 37
    PANEL = 38
    PASSWORD_TEXT = 39
    POPUP_MENU = 40
    PROGRESS_BAR = 41
    PUSH_BUTTON = 42
    RADIO_BUTTON = 43
    RADIO_MENU_ITEM = 44
    ROOT_PANE = 45
    ROW_HEADER = 46
    SCROLL_BAR = 47
    SCROLL_PANE = 48
    SEPARATOR = 49
    SLIDER = 50
    SPLIT_PANE = 51
    SPIN_BUTTON = 52
    STATUSBAR = 53
    TABLE = 54
    TABLE_CELL = 55
    TABLE_COLUMN_HEADER = 56
    TABLE_ROW_HEADER = 57
    TEAR_OFF_MENU_ITEM = 58
    TERMINAL = 59
    TEXT = 60
    TOGGLE_BUTTON = 61
    TOOL_BAR = 62
    TOOL_TIP = 63
    TREE = 64
    TREE_TABLE = 65
    UNKNOWN = 66
    VIEWPORT = 67
    WINDOW = 68
    HEADER = 69
    FOOTER = 70
    PARAGRAPH = 71
    RULER = 72
    APPLICATION = 73
    AUTOCOMPLETE = 74
    EDIT_BAR = 75
    EMBEDDED = 76
    ENTRY = 77
    CHART = 78
    CAPTION = 79
    DOCUMENT_FRAME = 80
    HEADING = 81
    PAGE = 82
    SECTION = 83
    REDUNDANT_OBJECT = 84
    FORM = 85
    LINK = 86
    INPUT_METHOD_WINDOW = 87
    TABLE_ROW = 88
    TREE_ITEM = 89
    DOCUMENT_SPREADSHEET = 90
    DOCUMENT_PRESENTATION = 91
    DOCUMENT_TEXT = 92
    DOCUMENT_WEB = 93
    DOCUMENT_EMAIL = 94
    COMMENT = 95
    LIST_BOX = 96
    GROUPING = 97
    IMAGE_MAP = 98
    NOTIFICATION = 99
    INFO_BAR = 100
    LEVEL_BAR = 101
    TITLE_BAR = 102
    BLOCK_QUOTE = 103
    AUDIO = 104
    VIDEO = 105
    DEFINITION = 106
    ARTICLE = 107
    LANDMARK = 108
    LOG = 109
    MARQUEE = 110
    MATH = 111
    RATING = 112
    TIMER = 113
    DESCRIPTION_LIST = 114
    DESCRIPTION_TERM = 115
    DESCRIPTION_VALUE = 116
    STATIC = 117
    MATH_FRACTION = 118
    MATH_ROOT = 119
    SUBSCRIPT = 120
    SUPERSCRIPT = 121
    FOOTNOTE = 122
    LAST_DEFINED = 123
  end
  fun role_for_name = atk_role_for_name(name : UInt8*) : LibAtk::Role
  fun role_get_localized_name = atk_role_get_localized_name(role : LibAtk::Role) : UInt8*
  fun role_get_name = atk_role_get_name(role : LibAtk::Role) : UInt8*
  fun role_register = atk_role_register(name : UInt8*) : LibAtk::Role

  enum ScrollType : UInt32
    ZERO_NONE = 0
    TOP_LEFT = 0
    BOTTOM_RIGHT = 1
    TOP_EDGE = 2
    BOTTOM_EDGE = 3
    LEFT_EDGE = 4
    RIGHT_EDGE = 5
    ANYWHERE = 6
  end

  enum StateType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    ACTIVE = 1
    ARMED = 2
    BUSY = 3
    CHECKED = 4
    DEFUNCT = 5
    EDITABLE = 6
    ENABLED = 7
    EXPANDABLE = 8
    EXPANDED = 9
    FOCUSABLE = 10
    FOCUSED = 11
    HORIZONTAL = 12
    ICONIFIED = 13
    MODAL = 14
    MULTI_LINE = 15
    MULTISELECTABLE = 16
    OPAQUE = 17
    PRESSED = 18
    RESIZABLE = 19
    SELECTABLE = 20
    SELECTED = 21
    SENSITIVE = 22
    SHOWING = 23
    SINGLE_LINE = 24
    STALE = 25
    TRANSIENT = 26
    VERTICAL = 27
    VISIBLE = 28
    MANAGES_DESCENDANTS = 29
    INDETERMINATE = 30
    TRUNCATED = 31
    REQUIRED = 32
    INVALID_ENTRY = 33
    SUPPORTS_AUTOCOMPLETION = 34
    SELECTABLE_TEXT = 35
    DEFAULT = 36
    ANIMATED = 37
    VISITED = 38
    CHECKABLE = 39
    HAS_POPUP = 40
    HAS_TOOLTIP = 41
    READ_ONLY = 42
    LAST_DEFINED = 43
  end
  fun state_type_for_name = atk_state_type_for_name(name : UInt8*) : LibAtk::StateType
  fun state_type_get_name = atk_state_type_get_name(type : LibAtk::StateType) : UInt8*
  fun state_type_register = atk_state_type_register(name : UInt8*) : LibAtk::StateType

  enum TextAttribute : UInt32
    ZERO_NONE = 0
    INVALID = 0
    LEFT_MARGIN = 1
    RIGHT_MARGIN = 2
    INDENT = 3
    INVISIBLE = 4
    EDITABLE = 5
    PIXELS_ABOVE_LINES = 6
    PIXELS_BELOW_LINES = 7
    PIXELS_INSIDE_WRAP = 8
    BG_FULL_HEIGHT = 9
    RISE = 10
    UNDERLINE = 11
    STRIKETHROUGH = 12
    SIZE = 13
    SCALE = 14
    WEIGHT = 15
    LANGUAGE = 16
    FAMILY_NAME = 17
    BG_COLOR = 18
    FG_COLOR = 19
    BG_STIPPLE = 20
    FG_STIPPLE = 21
    WRAP_MODE = 22
    DIRECTION = 23
    JUSTIFICATION = 24
    STRETCH = 25
    VARIANT = 26
    STYLE = 27
    LAST_DEFINED = 28
  end
  fun text_attribute_for_name = atk_text_attribute_for_name(name : UInt8*) : LibAtk::TextAttribute
  fun text_attribute_get_name = atk_text_attribute_get_name(attr : LibAtk::TextAttribute) : UInt8*
  fun text_attribute_get_value = atk_text_attribute_get_value(attr : LibAtk::TextAttribute, index : Int32) : UInt8*
  fun text_attribute_register = atk_text_attribute_register(name : UInt8*) : LibAtk::TextAttribute

  enum TextBoundary : UInt32
    ZERO_NONE = 0
    CHAR = 0
    WORD_START = 1
    WORD_END = 2
    SENTENCE_START = 3
    SENTENCE_END = 4
    LINE_START = 5
    LINE_END = 6
  end

  enum TextClipType : UInt32
    ZERO_NONE = 0
    NONE = 0
    MIN = 1
    MAX = 2
    BOTH = 3
  end

  enum TextGranularity : UInt32
    ZERO_NONE = 0
    CHAR = 0
    WORD = 1
    SENTENCE = 2
    LINE = 3
    PARAGRAPH = 4
  end

  enum ValueType : UInt32
    ZERO_NONE = 0
    VERY_WEAK = 0
    WEAK = 1
    ACCEPTABLE = 2
    STRONG = 3
    VERY_STRONG = 4
    VERY_LOW = 5
    LOW = 6
    MEDIUM = 7
    HIGH = 8
    VERY_HIGH = 9
    VERY_BAD = 10
    BAD = 11
    GOOD = 12
    VERY_GOOD = 13
    BEST = 14
    LAST_DEFINED = 15
  end
  fun value_type_get_localized_name = atk_value_type_get_localized_name(value_type : LibAtk::ValueType) : UInt8*
  fun value_type_get_name = atk_value_type_get_name(value_type : LibAtk::ValueType) : UInt8*


  ###########################################
  ##    Objects
  ###########################################

  struct GObjectAccessible # object
    parent : LibAtk::Object*
  end
  fun g_object_accessible_for_object = atk_gobject_accessible_for_object(obj : LibGObject::Object*) : LibAtk::Object*
  fun g_object_accessible_get_object = atk_gobject_accessible_get_object(this : GObjectAccessible*) : LibGObject::Object*

  struct Hyperlink # object
    parent : LibGObject::Object*
    # Signal link-activated
    # Virtual function get_end_index
    # Virtual function get_n_anchors
    # Virtual function get_object
    # Virtual function get_start_index
    # Virtual function get_uri
    # Virtual function is_selected_link
    # Virtual function is_valid
    # Virtual function link_activated
    # Virtual function link_state
    # Property end_index : Int32
    # Property number_of_anchors : Int32
    # Property selected_link : Bool
    # Property start_index : Int32
  end
  fun hyperlink_get_end_index = atk_hyperlink_get_end_index(this : Hyperlink*) : Int32
  fun hyperlink_get_n_anchors = atk_hyperlink_get_n_anchors(this : Hyperlink*) : Int32
  fun hyperlink_get_object = atk_hyperlink_get_object(this : Hyperlink*, i : Int32) : LibAtk::Object*
  fun hyperlink_get_start_index = atk_hyperlink_get_start_index(this : Hyperlink*) : Int32
  fun hyperlink_get_uri = atk_hyperlink_get_uri(this : Hyperlink*, i : Int32) : UInt8*
  fun hyperlink_is_inline = atk_hyperlink_is_inline(this : Hyperlink*) : Bool
  fun hyperlink_is_selected_link = atk_hyperlink_is_selected_link(this : Hyperlink*) : Bool
  fun hyperlink_is_valid = atk_hyperlink_is_valid(this : Hyperlink*) : Bool

  struct Misc # object
    parent : LibGObject::Object*
    # Virtual function threads_enter
    # Virtual function threads_leave
  end
  fun misc_get_instance = atk_misc_get_instance() : LibAtk::Misc*
  fun misc_threads_enter = atk_misc_threads_enter(this : Misc*) : Void
  fun misc_threads_leave = atk_misc_threads_leave(this : Misc*) : Void

  struct NoOpObject # object
    parent : LibAtk::Object*
  end
  fun no_op_object_new = atk_no_op_object_new(obj : LibGObject::Object*) : LibAtk::Object*

  struct NoOpObjectFactory # object
    parent : LibAtk::ObjectFactory*
  end
  fun no_op_object_factory_new = atk_no_op_object_factory_new() : LibAtk::ObjectFactory*

  struct Object # object
    parent : LibGObject::Object*
    description : UInt8*
    name : UInt8*
    accessible_parent : LibAtk::Object*
    role : LibAtk::Role
    relation_set : LibAtk::RelationSet*
    layer : LibAtk::Layer
    # Signal active-descendant-changed
    # Signal children-changed
    # Signal focus-event
    # Signal property-change
    # Signal state-change
    # Signal visible-data-changed
    # Virtual function active_descendant_changed
    # Virtual function children_changed
    # Virtual function focus_event
    # Virtual function get_attributes
    # Virtual function get_description
    # Virtual function get_index_in_parent
    # Virtual function get_layer
    # Virtual function get_mdi_zorder
    # Virtual function get_n_children
    # Virtual function get_name
    # Virtual function get_object_locale
    # Virtual function get_parent
    # Virtual function get_role
    # Virtual function initialize
    # Virtual function property_change
    # Virtual function ref_relation_set
    # Virtual function ref_state_set
    # Virtual function remove_property_change_handler
    # Virtual function set_description
    # Virtual function set_name
    # Virtual function set_parent
    # Virtual function set_role
    # Virtual function state_change
    # Virtual function visible_data_changed
    # Property accessible_component_layer : Int32
    # Property accessible_component_mdi_zorder : Int32
    # Property accessible_description : UInt8*
    # Property accessible_hypertext_nlinks : Int32
    # Property accessible_name : UInt8*
    # Property accessible_parent : LibAtk::Object*
    # Property accessible_role : LibAtk::Role
    # Property accessible_table_caption : UInt8*
    # Property accessible_table_caption_object : LibAtk::Object*
    # Property accessible_table_column_description : UInt8*
    # Property accessible_table_column_header : LibAtk::Object*
    # Property accessible_table_row_description : UInt8*
    # Property accessible_table_row_header : LibAtk::Object*
    # Property accessible_table_summary : LibAtk::Object*
    # Property accessible_value : Float64
  end
  fun object_add_relationship = atk_object_add_relationship(this : Object*, relationship : LibAtk::RelationType, target : LibAtk::Object*) : Bool
  fun object_get_attributes = atk_object_get_attributes(this : Object*) : Void**
  fun object_get_description = atk_object_get_description(this : Object*) : UInt8*
  fun object_get_index_in_parent = atk_object_get_index_in_parent(this : Object*) : Int32
  fun object_get_layer = atk_object_get_layer(this : Object*) : LibAtk::Layer
  fun object_get_mdi_zorder = atk_object_get_mdi_zorder(this : Object*) : Int32
  fun object_get_n_accessible_children = atk_object_get_n_accessible_children(this : Object*) : Int32
  fun object_get_name = atk_object_get_name(this : Object*) : UInt8*
  fun object_get_object_locale = atk_object_get_object_locale(this : Object*) : UInt8*
  fun object_get_parent = atk_object_get_parent(this : Object*) : LibAtk::Object*
  fun object_get_role = atk_object_get_role(this : Object*) : LibAtk::Role
  fun object_init = atk_object_initialize(this : Object*, data : Void*) : Void
  fun object_notify_state_change = atk_object_notify_state_change(this : Object*, state : UInt64, value : Bool) : Void
  fun object_peek_parent = atk_object_peek_parent(this : Object*) : LibAtk::Object*
  fun object_ref_accessible_child = atk_object_ref_accessible_child(this : Object*, i : Int32) : LibAtk::Object*
  fun object_ref_relation_set = atk_object_ref_relation_set(this : Object*) : LibAtk::RelationSet*
  fun object_ref_state_set = atk_object_ref_state_set(this : Object*) : LibAtk::StateSet*
  fun object_remove_property_change_handler = atk_object_remove_property_change_handler(this : Object*, handler_id : UInt32) : Void
  fun object_remove_relationship = atk_object_remove_relationship(this : Object*, relationship : LibAtk::RelationType, target : LibAtk::Object*) : Bool
  fun object_set_description = atk_object_set_description(this : Object*, description : UInt8*) : Void
  fun object_set_name = atk_object_set_name(this : Object*, name : UInt8*) : Void
  fun object_set_parent = atk_object_set_parent(this : Object*, parent : LibAtk::Object*) : Void
  fun object_set_role = atk_object_set_role(this : Object*, role : LibAtk::Role) : Void

  struct ObjectFactory # object
    parent : LibGObject::Object*
    # Virtual function invalidate
  end
  fun object_factory_create_accessible = atk_object_factory_create_accessible(this : ObjectFactory*, obj : LibGObject::Object*) : LibAtk::Object*
  fun object_factory_get_accessible_type = atk_object_factory_get_accessible_type(this : ObjectFactory*) : UInt64
  fun object_factory_invalidate = atk_object_factory_invalidate(this : ObjectFactory*) : Void

  struct Plug # object
    parent : LibAtk::Object*
    # Virtual function get_object_id
  end
  fun plug_new = atk_plug_new() : LibAtk::Object*
  fun plug_get_id = atk_plug_get_id(this : Plug*) : UInt8*

  struct Registry # object
    parent : LibGObject::Object*
    factory_type_registry : Void**
    factory_singleton_cache : Void**
  end
  fun registry_get_factory = atk_registry_get_factory(this : Registry*, type : UInt64) : LibAtk::ObjectFactory*
  fun registry_get_factory_type = atk_registry_get_factory_type(this : Registry*, type : UInt64) : UInt64
  fun registry_set_factory_type = atk_registry_set_factory_type(this : Registry*, type : UInt64, factory_type : UInt64) : Void

  struct Relation # object
    parent : LibGObject::Object*
    target : Void*
    relationship : LibAtk::RelationType
    # Property relation_type : LibAtk::RelationType
    # Property target : LibGObject::ValueArray
  end
  fun relation_new = atk_relation_new(targets : LibAtk::Object**, n_targets : Int32, relationship : LibAtk::RelationType) : LibAtk::Relation*
  fun relation_add_target = atk_relation_add_target(this : Relation*, target : LibAtk::Object*) : Void
  fun relation_get_relation_type = atk_relation_get_relation_type(this : Relation*) : LibAtk::RelationType
  fun relation_get_target = atk_relation_get_target(this : Relation*) : Void*
  fun relation_remove_target = atk_relation_remove_target(this : Relation*, target : LibAtk::Object*) : Bool

  struct RelationSet # object
    parent : LibGObject::Object*
    relations : Void*
  end
  fun relation_set_new = atk_relation_set_new() : LibAtk::RelationSet*
  fun relation_set_add = atk_relation_set_add(this : RelationSet*, relation : LibAtk::Relation*) : Void
  fun relation_set_add_relation_by_type = atk_relation_set_add_relation_by_type(this : RelationSet*, relationship : LibAtk::RelationType, target : LibAtk::Object*) : Void
  fun relation_set_contains = atk_relation_set_contains(this : RelationSet*, relationship : LibAtk::RelationType) : Bool
  fun relation_set_contains_target = atk_relation_set_contains_target(this : RelationSet*, relationship : LibAtk::RelationType, target : LibAtk::Object*) : Bool
  fun relation_set_get_n_relations = atk_relation_set_get_n_relations(this : RelationSet*) : Int32
  fun relation_set_get_relation = atk_relation_set_get_relation(this : RelationSet*, i : Int32) : LibAtk::Relation*
  fun relation_set_get_relation_by_type = atk_relation_set_get_relation_by_type(this : RelationSet*, relationship : LibAtk::RelationType) : LibAtk::Relation*
  fun relation_set_remove = atk_relation_set_remove(this : RelationSet*, relation : LibAtk::Relation*) : Void

  struct Socket # object
    parent : LibAtk::Object*
    embedded_plug_id : UInt8*
    # Virtual function embed
  end
  fun socket_new = atk_socket_new() : LibAtk::Object*
  fun socket_embed = atk_socket_embed(this : Socket*, plug_id : UInt8*) : Void
  fun socket_is_occupied = atk_socket_is_occupied(this : Socket*) : Bool

  struct StateSet # object
    parent : LibGObject::Object*
  end
  fun state_set_new = atk_state_set_new() : LibAtk::StateSet*
  fun state_set_add_state = atk_state_set_add_state(this : StateSet*, type : LibAtk::StateType) : Bool
  fun state_set_add_states = atk_state_set_add_states(this : StateSet*, types : LibAtk::StateType*, n_types : Int32) : Void
  fun state_set_and_sets = atk_state_set_and_sets(this : StateSet*, compare_set : LibAtk::StateSet*) : LibAtk::StateSet*
  fun state_set_clear_states = atk_state_set_clear_states(this : StateSet*) : Void
  fun state_set_contains_state = atk_state_set_contains_state(this : StateSet*, type : LibAtk::StateType) : Bool
  fun state_set_contains_states = atk_state_set_contains_states(this : StateSet*, types : LibAtk::StateType*, n_types : Int32) : Bool
  fun state_set_is_empty = atk_state_set_is_empty(this : StateSet*) : Bool
  fun state_set_or_sets = atk_state_set_or_sets(this : StateSet*, compare_set : LibAtk::StateSet*) : LibAtk::StateSet*
  fun state_set_remove_state = atk_state_set_remove_state(this : StateSet*, type : LibAtk::StateType) : Bool
  fun state_set_xor_sets = atk_state_set_xor_sets(this : StateSet*, compare_set : LibAtk::StateSet*) : LibAtk::StateSet*

  struct Util # object
    parent : LibGObject::Object*
  end


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum HyperlinkStateFlags : UInt32
    ZERO_NONE = 0
    INLINE = 1
  end


  ###########################################
  ##    Functions
  ###########################################

  fun attribute_set_free = atk_attribute_set_free(attrib_set : Void**) : Void
  fun focus_tracker_notify = atk_focus_tracker_notify(object : LibAtk::Object*) : Void
  fun get_binary_age = atk_get_binary_age() : UInt32
  fun get_default_registry = atk_get_default_registry() : LibAtk::Registry*
  fun get_focus_object = atk_get_focus_object() : LibAtk::Object*
  fun get_interface_age = atk_get_interface_age() : UInt32
  fun get_major_version = atk_get_major_version() : UInt32
  fun get_micro_version = atk_get_micro_version() : UInt32
  fun get_minor_version = atk_get_minor_version() : UInt32
  fun get_root = atk_get_root() : LibAtk::Object*
  fun get_toolkit_name = atk_get_toolkit_name() : UInt8*
  fun get_toolkit_version = atk_get_toolkit_version() : UInt8*
  fun get_version = atk_get_version() : UInt8*
  fun relation_type_for_name = atk_relation_type_for_name(name : UInt8*) : LibAtk::RelationType
  fun relation_type_get_name = atk_relation_type_get_name(type : LibAtk::RelationType) : UInt8*
  fun relation_type_register = atk_relation_type_register(name : UInt8*) : LibAtk::RelationType
  fun remove_focus_tracker = atk_remove_focus_tracker(tracker_id : UInt32) : Void
  fun remove_global_event_listener = atk_remove_global_event_listener(listener_id : UInt32) : Void
  fun remove_key_event_listener = atk_remove_key_event_listener(listener_id : UInt32) : Void
  fun role_for_name = atk_role_for_name(name : UInt8*) : LibAtk::Role
  fun role_get_localized_name = atk_role_get_localized_name(role : LibAtk::Role) : UInt8*
  fun role_get_name = atk_role_get_name(role : LibAtk::Role) : UInt8*
  fun role_register = atk_role_register(name : UInt8*) : LibAtk::Role
  fun state_type_for_name = atk_state_type_for_name(name : UInt8*) : LibAtk::StateType
  fun state_type_get_name = atk_state_type_get_name(type : LibAtk::StateType) : UInt8*
  fun state_type_register = atk_state_type_register(name : UInt8*) : LibAtk::StateType
  fun text_attribute_for_name = atk_text_attribute_for_name(name : UInt8*) : LibAtk::TextAttribute
  fun text_attribute_get_name = atk_text_attribute_get_name(attr : LibAtk::TextAttribute) : UInt8*
  fun text_attribute_get_value = atk_text_attribute_get_value(attr : LibAtk::TextAttribute, index : Int32) : UInt8*
  fun text_attribute_register = atk_text_attribute_register(name : UInt8*) : LibAtk::TextAttribute
  fun text_free_ranges = atk_text_free_ranges(ranges : LibAtk::TextRange**) : Void
  fun value_type_get_localized_name = atk_value_type_get_localized_name(value_type : LibAtk::ValueType) : UInt8*
  fun value_type_get_name = atk_value_type_get_name(value_type : LibAtk::ValueType) : UInt8*

  ###########################################
  ##    Callbacks
  ###########################################

 alias EventListener = LibAtk::Object* -> Void
 alias EventListenerInit =  -> Void
 alias FocusHandler = LibAtk::Object*, Bool -> Void
 alias Function = Void* -> Bool
 alias KeySnoopFunc = LibAtk::KeyEventStruct*, Void* -> Int32
 alias PropertyChangeHandler = LibAtk::Object*, LibAtk::PropertyValues* -> Void
end


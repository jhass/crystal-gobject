require "./lib_cairo"
require "./lib_g_lib"
require "./lib_g_object"

@[Link("pango-1.0")]
lib LibPango

  ###########################################
  ##    Constants
  ###########################################

  ANALYSIS_FLAG_CENTERED_BASELINE = 1 # : Int32
  ANALYSIS_FLAG_IS_ELLIPSIS = 2 # : Int32
  ATTR_INDEX_FROM_TEXT_BEGINNING = 0 # : Int32
  ENGINE_TYPE_LANG = "PangoEngineLang" # : UInt8*
  ENGINE_TYPE_SHAPE = "PangoEngineShape" # : UInt8*
  GLYPH_EMPTY = 268435455 # : UInt32
  GLYPH_INVALID_INPUT = 4294967295 # : UInt32
  GLYPH_UNKNOWN_FLAG = 268435456 # : UInt32
  RENDER_TYPE_NONE = "PangoRenderNone" # : UInt8*
  SCALE = 1024 # : Int32
  UNKNOWN_GLYPH_HEIGHT = 14 # : Int32
  UNKNOWN_GLYPH_WIDTH = 10 # : Int32
  VERSION_MIN_REQUIRED = 2 # : Int32

  ###########################################
  ##    Enums
  ###########################################

  enum Alignment : UInt32
    ZERO_NONE = 0
    LEFT = 0
    CENTER = 1
    RIGHT = 2
  end

  enum AttrType : UInt32
    ZERO_NONE = 0
    INVALID = 0
    LANGUAGE = 1
    FAMILY = 2
    STYLE = 3
    WEIGHT = 4
    VARIANT = 5
    STRETCH = 6
    SIZE = 7
    FONT_DESC = 8
    FOREGROUND = 9
    BACKGROUND = 10
    UNDERLINE = 11
    STRIKETHROUGH = 12
    RISE = 13
    SHAPE = 14
    SCALE = 15
    FALLBACK = 16
    LETTER_SPACING = 17
    UNDERLINE_COLOR = 18
    STRIKETHROUGH_COLOR = 19
    ABSOLUTE_SIZE = 20
    GRAVITY = 21
    GRAVITY_HINT = 22
    FONT_FEATURES = 23
    FOREGROUND_ALPHA = 24
    BACKGROUND_ALPHA = 25
  end
  fun attr_type_get_name = pango_attr_type_get_name(type : LibPango::AttrType) : UInt8*
  fun attr_type_register = pango_attr_type_register(name : UInt8*) : LibPango::AttrType

  enum BidiType : UInt32
    ZERO_NONE = 0
    L = 0
    LRE = 1
    LRO = 2
    R = 3
    AL = 4
    RLE = 5
    RLO = 6
    PDF = 7
    EN = 8
    ES = 9
    ET = 10
    AN = 11
    CS = 12
    NSM = 13
    BN = 14
    B = 15
    S = 16
    WS = 17
    ON = 18
  end
  fun bidi_type_for_unichar = pango_bidi_type_for_unichar(ch : UInt8) : LibPango::BidiType

  enum CoverageLevel : UInt32
    ZERO_NONE = 0
    NONE = 0
    FALLBACK = 1
    APPROXIMATE = 2
    EXACT = 3
  end

  enum Direction : UInt32
    ZERO_NONE = 0
    LTR = 0
    RTL = 1
    TTB_LTR = 2
    TTB_RTL = 3
    WEAK_LTR = 4
    WEAK_RTL = 5
    NEUTRAL = 6
  end

  enum EllipsizeMode : UInt32
    ZERO_NONE = 0
    NONE = 0
    START = 1
    MIDDLE = 2
    END = 3
  end

  enum Gravity : UInt32
    ZERO_NONE = 0
    SOUTH = 0
    EAST = 1
    NORTH = 2
    WEST = 3
    AUTO = 4
  end
  fun gravity_get_for_matrix = pango_gravity_get_for_matrix(matrix : LibPango::Matrix*) : LibPango::Gravity
  fun gravity_get_for_script = pango_gravity_get_for_script(script : LibPango::Script, base_gravity : LibPango::Gravity, hint : LibPango::GravityHint) : LibPango::Gravity
  fun gravity_get_for_script_and_width = pango_gravity_get_for_script_and_width(script : LibPango::Script, wide : Bool, base_gravity : LibPango::Gravity, hint : LibPango::GravityHint) : LibPango::Gravity
  fun gravity_to_rotation = pango_gravity_to_rotation(gravity : LibPango::Gravity) : Float64

  enum GravityHint : UInt32
    ZERO_NONE = 0
    NATURAL = 0
    STRONG = 1
    LINE = 2
  end

  enum RenderPart : UInt32
    ZERO_NONE = 0
    FOREGROUND = 0
    BACKGROUND = 1
    UNDERLINE = 2
    STRIKETHROUGH = 3
  end

  enum Script : Int32
    ZERO_NONE = 0
    INVALID_CODE = -1
    COMMON = 0
    INHERITED = 1
    ARABIC = 2
    ARMENIAN = 3
    BENGALI = 4
    BOPOMOFO = 5
    CHEROKEE = 6
    COPTIC = 7
    CYRILLIC = 8
    DESERET = 9
    DEVANAGARI = 10
    ETHIOPIC = 11
    GEORGIAN = 12
    GOTHIC = 13
    GREEK = 14
    GUJARATI = 15
    GURMUKHI = 16
    HAN = 17
    HANGUL = 18
    HEBREW = 19
    HIRAGANA = 20
    KANNADA = 21
    KATAKANA = 22
    KHMER = 23
    LAO = 24
    LATIN = 25
    MALAYALAM = 26
    MONGOLIAN = 27
    MYANMAR = 28
    OGHAM = 29
    OLD_ITALIC = 30
    ORIYA = 31
    RUNIC = 32
    SINHALA = 33
    SYRIAC = 34
    TAMIL = 35
    TELUGU = 36
    THAANA = 37
    THAI = 38
    TIBETAN = 39
    CANADIAN_ABORIGINAL = 40
    YI = 41
    TAGALOG = 42
    HANUNOO = 43
    BUHID = 44
    TAGBANWA = 45
    BRAILLE = 46
    CYPRIOT = 47
    LIMBU = 48
    OSMANYA = 49
    SHAVIAN = 50
    LINEAR_B = 51
    TAI_LE = 52
    UGARITIC = 53
    NEW_TAI_LUE = 54
    BUGINESE = 55
    GLAGOLITIC = 56
    TIFINAGH = 57
    SYLOTI_NAGRI = 58
    OLD_PERSIAN = 59
    KHAROSHTHI = 60
    UNKNOWN = 61
    BALINESE = 62
    CUNEIFORM = 63
    PHOENICIAN = 64
    PHAGS_PA = 65
    NKO = 66
    KAYAH_LI = 67
    LEPCHA = 68
    REJANG = 69
    SUNDANESE = 70
    SAURASHTRA = 71
    CHAM = 72
    OL_CHIKI = 73
    VAI = 74
    CARIAN = 75
    LYCIAN = 76
    LYDIAN = 77
    BATAK = 78
    BRAHMI = 79
    MANDAIC = 80
    CHAKMA = 81
    MEROITIC_CURSIVE = 82
    MEROITIC_HIEROGLYPHS = 83
    MIAO = 84
    SHARADA = 85
    SORA_SOMPENG = 86
    TAKRI = 87
    BASSA_VAH = 88
    CAUCASIAN_ALBANIAN = 89
    DUPLOYAN = 90
    ELBASAN = 91
    GRANTHA = 92
    KHOJKI = 93
    KHUDAWADI = 94
    LINEAR_A = 95
    MAHAJANI = 96
    MANICHAEAN = 97
    MENDE_KIKAKUI = 98
    MODI = 99
    MRO = 100
    NABATAEAN = 101
    OLD_NORTH_ARABIAN = 102
    OLD_PERMIC = 103
    PAHAWH_HMONG = 104
    PALMYRENE = 105
    PAU_CIN_HAU = 106
    PSALTER_PAHLAVI = 107
    SIDDHAM = 108
    TIRHUTA = 109
    WARANG_CITI = 110
    AHOM = 111
    ANATOLIAN_HIEROGLYPHS = 112
    HATRAN = 113
    MULTANI = 114
    OLD_HUNGARIAN = 115
    SIGNWRITING = 116
  end
  fun script_for_unichar = pango_script_for_unichar(ch : UInt8) : LibPango::Script
  fun script_get_sample_language = pango_script_get_sample_language(script : LibPango::Script) : LibPango::Language*

  enum Stretch : UInt32
    ZERO_NONE = 0
    ULTRA_CONDENSED = 0
    EXTRA_CONDENSED = 1
    CONDENSED = 2
    SEMI_CONDENSED = 3
    NORMAL = 4
    SEMI_EXPANDED = 5
    EXPANDED = 6
    EXTRA_EXPANDED = 7
    ULTRA_EXPANDED = 8
  end

  enum Style : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    OBLIQUE = 1
    ITALIC = 2
  end

  enum TabAlign : UInt32
    ZERO_NONE = 0
    LEFT = 0
  end

  enum Underline : UInt32
    ZERO_NONE = 0
    NONE = 0
    SINGLE = 1
    DOUBLE = 2
    LOW = 3
    ERROR = 4
  end

  enum Variant : UInt32
    ZERO_NONE = 0
    NORMAL = 0
    SMALL_CAPS = 1
  end

  enum Weight : UInt32
    ZERO_NONE = 0
    THIN = 100
    ULTRALIGHT = 200
    LIGHT = 300
    SEMILIGHT = 350
    BOOK = 380
    NORMAL = 400
    MEDIUM = 500
    SEMIBOLD = 600
    BOLD = 700
    ULTRABOLD = 800
    HEAVY = 900
    ULTRAHEAVY = 1000
  end

  enum WrapMode : UInt32
    ZERO_NONE = 0
    WORD = 0
    CHAR = 1
    WORD_CHAR = 2
  end


  ###########################################
  ##    Structs
  ###########################################

  struct Analysis # struct
    shape_engine : LibPango::EngineShape*
    lang_engine : LibPango::EngineLang*
    font : LibPango::Font*
    level : UInt8
    gravity : UInt8
    flags : UInt8
    script : UInt8
    language : LibPango::Language*
    extra_attrs : Void**
  end

  struct AttrClass # struct
    type : LibPango::AttrType
    copy : Void*
    destroy : -> Void
    equal : -> Void
  end

  struct AttrColor # struct
    attr : LibPango::Attribute
    color : LibPango::Color
  end

  struct AttrFloat # struct
    attr : LibPango::Attribute
    value : Float64
  end

  struct AttrFontDesc # struct
    attr : LibPango::Attribute
    desc : LibPango::FontDescription*
  end

  struct AttrFontFeatures # struct
    attr : LibPango::Attribute
    features : UInt8*
  end

  struct AttrInt # struct
    attr : LibPango::Attribute
    value : Int32
  end

  struct AttrIterator # struct
    _data : UInt8[0]
  end
  fun attr_iterator_destroy = pango_attr_iterator_destroy(this : AttrIterator*) : Void
  fun attr_iterator_get_attrs = pango_attr_iterator_get_attrs(this : AttrIterator*) : Void**
  fun attr_iterator_get_font = pango_attr_iterator_get_font(this : AttrIterator*, desc : LibPango::FontDescription*, language : LibPango::Language*, extra_attrs : Void**) : Void
  fun attr_iterator_next = pango_attr_iterator_next(this : AttrIterator*) : Bool
  fun attr_iterator_range = pango_attr_iterator_range(this : AttrIterator*, start : Int32*, end : Int32*) : Void

  struct AttrLanguage # struct
    attr : LibPango::Attribute
    value : LibPango::Language*
  end

  struct AttrList # struct
    _data : UInt8[0]
  end
  fun attr_list_new = pango_attr_list_new() : LibPango::AttrList*
  fun attr_list_change = pango_attr_list_change(this : AttrList*, attr : LibPango::Attribute*) : Void
  fun attr_list_copy = pango_attr_list_copy(this : AttrList*) : LibPango::AttrList*
  fun attr_list_filter = pango_attr_list_filter(this : AttrList*, func : LibPango::AttrFilterFunc, data : Void*) : LibPango::AttrList*
  fun attr_list_insert = pango_attr_list_insert(this : AttrList*, attr : LibPango::Attribute*) : Void
  fun attr_list_insert_before = pango_attr_list_insert_before(this : AttrList*, attr : LibPango::Attribute*) : Void
  fun attr_list_ref = pango_attr_list_ref(this : AttrList*) : LibPango::AttrList*
  fun attr_list_splice = pango_attr_list_splice(this : AttrList*, other : LibPango::AttrList*, pos : Int32, len : Int32) : Void
  fun attr_list_unref = pango_attr_list_unref(this : AttrList*) : Void

  struct AttrShape # struct
    attr : LibPango::Attribute
    ink_rect : LibPango::Rectangle
    logical_rect : LibPango::Rectangle
    data : Void*
    copy_func : LibPango::AttrDataCopyFunc
    destroy_func : LibGLib::DestroyNotify
  end

  struct AttrSize # struct
    attr : LibPango::Attribute
    size : Int32
    absolute : UInt32
  end

  struct AttrString # struct
    attr : LibPango::Attribute
    value : UInt8*
  end

  struct Attribute # struct
    klass : LibPango::AttrClass*
    start_index : UInt32
    end_index : UInt32
  end
  fun attribute_destroy = pango_attribute_destroy(this : Attribute*) : Void
  fun attribute_equal = pango_attribute_equal(this : Attribute*, attr2 : LibPango::Attribute*) : Bool
  fun attribute_init = pango_attribute_init(this : Attribute*, klass : LibPango::AttrClass*) : Void

  struct Color # struct
    red : UInt16
    green : UInt16
    blue : UInt16
  end
  fun color_copy = pango_color_copy(this : Color*) : LibPango::Color*
  fun color_free = pango_color_free(this : Color*) : Void
  fun color_parse = pango_color_parse(this : Color*, spec : UInt8*) : Bool
  fun color_to_string = pango_color_to_string(this : Color*) : UInt8*

  struct Coverage # struct
    _data : UInt8[0]
  end
  fun coverage_get = pango_coverage_get(this : Coverage*, index : Int32) : LibPango::CoverageLevel
  fun coverage_max = pango_coverage_max(this : Coverage*, other : LibPango::Coverage*) : Void
  fun coverage_set = pango_coverage_set(this : Coverage*, index : Int32, level : LibPango::CoverageLevel) : Void
  fun coverage_to_bytes = pango_coverage_to_bytes(this : Coverage*, bytes : UInt8**, n_bytes : Int32*) : Void
  fun coverage_unref = pango_coverage_unref(this : Coverage*) : Void

  struct EngineInfo # struct
    id : UInt8*
    engine_type : UInt8*
    render_type : UInt8*
    scripts : LibPango::EngineScriptInfo*
    n_scripts : Int32
  end

  struct EngineScriptInfo # struct
    script : LibPango::Script
    langs : UInt8*
  end

  struct FontDescription # struct
    _data : UInt8[0]
  end
  fun font_description_new = pango_font_description_new() : LibPango::FontDescription*
  fun font_description_better_match = pango_font_description_better_match(this : FontDescription*, old_match : LibPango::FontDescription*, new_match : LibPango::FontDescription*) : Bool
  fun font_description_copy = pango_font_description_copy(this : FontDescription*) : LibPango::FontDescription*
  fun font_description_copy_static = pango_font_description_copy_static(this : FontDescription*) : LibPango::FontDescription*
  fun font_description_equal = pango_font_description_equal(this : FontDescription*, desc2 : LibPango::FontDescription*) : Bool
  fun font_description_free = pango_font_description_free(this : FontDescription*) : Void
  fun font_description_get_family = pango_font_description_get_family(this : FontDescription*) : UInt8*
  fun font_description_get_gravity = pango_font_description_get_gravity(this : FontDescription*) : LibPango::Gravity
  fun font_description_get_set_fields = pango_font_description_get_set_fields(this : FontDescription*) : LibPango::FontMask
  fun font_description_get_size = pango_font_description_get_size(this : FontDescription*) : Int32
  fun font_description_get_size_is_absolute = pango_font_description_get_size_is_absolute(this : FontDescription*) : Bool
  fun font_description_get_stretch = pango_font_description_get_stretch(this : FontDescription*) : LibPango::Stretch
  fun font_description_get_style = pango_font_description_get_style(this : FontDescription*) : LibPango::Style
  fun font_description_get_variant = pango_font_description_get_variant(this : FontDescription*) : LibPango::Variant
  fun font_description_get_weight = pango_font_description_get_weight(this : FontDescription*) : LibPango::Weight
  fun font_description_hash = pango_font_description_hash(this : FontDescription*) : UInt32
  fun font_description_merge = pango_font_description_merge(this : FontDescription*, desc_to_merge : LibPango::FontDescription*, replace_existing : Bool) : Void
  fun font_description_merge_static = pango_font_description_merge_static(this : FontDescription*, desc_to_merge : LibPango::FontDescription*, replace_existing : Bool) : Void
  fun font_description_set_absolute_size = pango_font_description_set_absolute_size(this : FontDescription*, size : Float64) : Void
  fun font_description_set_family = pango_font_description_set_family(this : FontDescription*, family : UInt8*) : Void
  fun font_description_set_family_static = pango_font_description_set_family_static(this : FontDescription*, family : UInt8*) : Void
  fun font_description_set_gravity = pango_font_description_set_gravity(this : FontDescription*, gravity : LibPango::Gravity) : Void
  fun font_description_set_size = pango_font_description_set_size(this : FontDescription*, size : Int32) : Void
  fun font_description_set_stretch = pango_font_description_set_stretch(this : FontDescription*, stretch : LibPango::Stretch) : Void
  fun font_description_set_style = pango_font_description_set_style(this : FontDescription*, style : LibPango::Style) : Void
  fun font_description_set_variant = pango_font_description_set_variant(this : FontDescription*, variant : LibPango::Variant) : Void
  fun font_description_set_weight = pango_font_description_set_weight(this : FontDescription*, weight : LibPango::Weight) : Void
  fun font_description_to_filename = pango_font_description_to_filename(this : FontDescription*) : UInt8*
  fun font_description_to_string = pango_font_description_to_string(this : FontDescription*) : UInt8*
  fun font_description_unset_fields = pango_font_description_unset_fields(this : FontDescription*, to_unset : LibPango::FontMask) : Void
  fun font_description_from_string = pango_font_description_from_string(str : UInt8*) : LibPango::FontDescription*

  struct FontMetrics # struct
    ref_count : UInt32
    ascent : Int32
    descent : Int32
    approximate_char_width : Int32
    approximate_digit_width : Int32
    underline_position : Int32
    underline_thickness : Int32
    strikethrough_position : Int32
    strikethrough_thickness : Int32
  end
  fun font_metrics_new = pango_font_metrics_new() : LibPango::FontMetrics*
  fun font_metrics_get_approximate_char_width = pango_font_metrics_get_approximate_char_width(this : FontMetrics*) : Int32
  fun font_metrics_get_approximate_digit_width = pango_font_metrics_get_approximate_digit_width(this : FontMetrics*) : Int32
  fun font_metrics_get_ascent = pango_font_metrics_get_ascent(this : FontMetrics*) : Int32
  fun font_metrics_get_descent = pango_font_metrics_get_descent(this : FontMetrics*) : Int32
  fun font_metrics_get_strikethrough_position = pango_font_metrics_get_strikethrough_position(this : FontMetrics*) : Int32
  fun font_metrics_get_strikethrough_thickness = pango_font_metrics_get_strikethrough_thickness(this : FontMetrics*) : Int32
  fun font_metrics_get_underline_position = pango_font_metrics_get_underline_position(this : FontMetrics*) : Int32
  fun font_metrics_get_underline_thickness = pango_font_metrics_get_underline_thickness(this : FontMetrics*) : Int32
  fun font_metrics_ref = pango_font_metrics_ref(this : FontMetrics*) : LibPango::FontMetrics*
  fun font_metrics_unref = pango_font_metrics_unref(this : FontMetrics*) : Void

  struct GlyphGeometry # struct
    width : Int32
    x_offset : Int32
    y_offset : Int32
  end

  struct GlyphInfo # struct
    glyph : UInt32
    geometry : LibPango::GlyphGeometry
    attr : LibPango::GlyphVisAttr
  end

  struct GlyphItem # struct
    item : LibPango::Item*
    glyphs : LibPango::GlyphString*
  end
  fun glyph_item_apply_attrs = pango_glyph_item_apply_attrs(this : GlyphItem*, text : UInt8*, list : LibPango::AttrList*) : Void**
  fun glyph_item_copy = pango_glyph_item_copy(this : GlyphItem*) : LibPango::GlyphItem*
  fun glyph_item_free = pango_glyph_item_free(this : GlyphItem*) : Void
  fun glyph_item_get_logical_widths = pango_glyph_item_get_logical_widths(this : GlyphItem*, text : UInt8*, logical_widths : Int32*) : Void
  fun glyph_item_letter_space = pango_glyph_item_letter_space(this : GlyphItem*, text : UInt8*, log_attrs : LibPango::LogAttr*, letter_spacing : Int32) : Void
  fun glyph_item_split = pango_glyph_item_split(this : GlyphItem*, text : UInt8*, split_index : Int32) : LibPango::GlyphItem*

  struct GlyphItemIter # struct
    glyph_item : LibPango::GlyphItem*
    text : UInt8*
    start_glyph : Int32
    start_index : Int32
    start_char : Int32
    end_glyph : Int32
    end_index : Int32
    end_char : Int32
  end
  fun glyph_item_iter_copy = pango_glyph_item_iter_copy(this : GlyphItemIter*) : LibPango::GlyphItemIter*
  fun glyph_item_iter_free = pango_glyph_item_iter_free(this : GlyphItemIter*) : Void
  fun glyph_item_iter_init_end = pango_glyph_item_iter_init_end(this : GlyphItemIter*, glyph_item : LibPango::GlyphItem*, text : UInt8*) : Bool
  fun glyph_item_iter_init_start = pango_glyph_item_iter_init_start(this : GlyphItemIter*, glyph_item : LibPango::GlyphItem*, text : UInt8*) : Bool
  fun glyph_item_iter_next_cluster = pango_glyph_item_iter_next_cluster(this : GlyphItemIter*) : Bool
  fun glyph_item_iter_prev_cluster = pango_glyph_item_iter_prev_cluster(this : GlyphItemIter*) : Bool

  struct GlyphString # struct
    num_glyphs : Int32
    glyphs : LibPango::GlyphInfo*
    log_clusters : Int32*
    space : Int32
  end
  fun glyph_string_new = pango_glyph_string_new() : LibPango::GlyphString*
  fun glyph_string_copy = pango_glyph_string_copy(this : GlyphString*) : LibPango::GlyphString*
  fun glyph_string_extents = pango_glyph_string_extents(this : GlyphString*, font : LibPango::Font*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun glyph_string_extents_range = pango_glyph_string_extents_range(this : GlyphString*, start : Int32, end : Int32, font : LibPango::Font*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun glyph_string_free = pango_glyph_string_free(this : GlyphString*) : Void
  fun glyph_string_get_logical_widths = pango_glyph_string_get_logical_widths(this : GlyphString*, text : UInt8*, length : Int32, embedding_level : Int32, logical_widths : Int32*) : Void
  fun glyph_string_get_width = pango_glyph_string_get_width(this : GlyphString*) : Int32
  fun glyph_string_index_to_x = pango_glyph_string_index_to_x(this : GlyphString*, text : UInt8*, length : Int32, analysis : LibPango::Analysis*, index : Int32, trailing : Bool, x_pos : Int32*) : Void
  fun glyph_string_set_size = pango_glyph_string_set_size(this : GlyphString*, new_len : Int32) : Void
  fun glyph_string_x_to_index = pango_glyph_string_x_to_index(this : GlyphString*, text : UInt8*, length : Int32, analysis : LibPango::Analysis*, x_pos : Int32, index : Int32*, trailing : Int32*) : Void

  struct GlyphVisAttr # struct
    is_cluster_start : UInt32
  end

  struct IncludedModule # struct
    list : -> Void
    init : -> Void
    exit : -> Void
    create : Void*
  end

  struct Item # struct
    offset : Int32
    length : Int32
    num_chars : Int32
    analysis : LibPango::Analysis
  end
  fun item_new = pango_item_new() : LibPango::Item*
  fun item_copy = pango_item_copy(this : Item*) : LibPango::Item*
  fun item_free = pango_item_free(this : Item*) : Void
  fun item_split = pango_item_split(this : Item*, split_index : Int32, split_offset : Int32) : LibPango::Item*

  struct Language # struct
    _data : UInt8[0]
  end
  fun language_get_sample_string = pango_language_get_sample_string(this : Language*) : UInt8*
  fun language_get_scripts = pango_language_get_scripts(this : Language*, num_scripts : Int32*) : LibPango::Script*
  fun language_includes_script = pango_language_includes_script(this : Language*, script : LibPango::Script) : Bool
  fun language_matches = pango_language_matches(this : Language*, range_list : UInt8*) : Bool
  fun language_to_string = pango_language_to_string(this : Language*) : UInt8*
  fun language_from_string = pango_language_from_string(language : UInt8*) : LibPango::Language*
  fun language_get_default = pango_language_get_default() : LibPango::Language*

  struct LayoutIter # struct
    _data : UInt8[0]
  end
  fun layout_iter_at_last_line = pango_layout_iter_at_last_line(this : LayoutIter*) : Bool
  fun layout_iter_copy = pango_layout_iter_copy(this : LayoutIter*) : LibPango::LayoutIter*
  fun layout_iter_free = pango_layout_iter_free(this : LayoutIter*) : Void
  fun layout_iter_get_baseline = pango_layout_iter_get_baseline(this : LayoutIter*) : Int32
  fun layout_iter_get_char_extents = pango_layout_iter_get_char_extents(this : LayoutIter*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_iter_get_cluster_extents = pango_layout_iter_get_cluster_extents(this : LayoutIter*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_iter_get_index = pango_layout_iter_get_index(this : LayoutIter*) : Int32
  fun layout_iter_get_layout = pango_layout_iter_get_layout(this : LayoutIter*) : LibPango::Layout*
  fun layout_iter_get_layout_extents = pango_layout_iter_get_layout_extents(this : LayoutIter*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_iter_get_line = pango_layout_iter_get_line(this : LayoutIter*) : LibPango::LayoutLine*
  fun layout_iter_get_line_extents = pango_layout_iter_get_line_extents(this : LayoutIter*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_iter_get_line_readonly = pango_layout_iter_get_line_readonly(this : LayoutIter*) : LibPango::LayoutLine*
  fun layout_iter_get_line_yrange = pango_layout_iter_get_line_yrange(this : LayoutIter*, y0 : Int32*, y1 : Int32*) : Void
  fun layout_iter_get_run = pango_layout_iter_get_run(this : LayoutIter*) : LibPango::GlyphItem*
  fun layout_iter_get_run_extents = pango_layout_iter_get_run_extents(this : LayoutIter*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_iter_get_run_readonly = pango_layout_iter_get_run_readonly(this : LayoutIter*) : LibPango::GlyphItem*
  fun layout_iter_next_char = pango_layout_iter_next_char(this : LayoutIter*) : Bool
  fun layout_iter_next_cluster = pango_layout_iter_next_cluster(this : LayoutIter*) : Bool
  fun layout_iter_next_line = pango_layout_iter_next_line(this : LayoutIter*) : Bool
  fun layout_iter_next_run = pango_layout_iter_next_run(this : LayoutIter*) : Bool

  struct LayoutLine # struct
    layout : LibPango::Layout*
    start_index : Int32
    length : Int32
    runs : Void**
    is_paragraph_start : UInt32
    resolved_dir : UInt32
  end
  fun layout_line_get_extents = pango_layout_line_get_extents(this : LayoutLine*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_line_get_pixel_extents = pango_layout_line_get_pixel_extents(this : LayoutLine*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_line_get_x_ranges = pango_layout_line_get_x_ranges(this : LayoutLine*, start_index : Int32, end_index : Int32, ranges : Int32**, n_ranges : Int32*) : Void
  fun layout_line_index_to_x = pango_layout_line_index_to_x(this : LayoutLine*, index : Int32, trailing : Bool, x_pos : Int32*) : Void
  fun layout_line_ref = pango_layout_line_ref(this : LayoutLine*) : LibPango::LayoutLine*
  fun layout_line_unref = pango_layout_line_unref(this : LayoutLine*) : Void
  fun layout_line_x_to_index = pango_layout_line_x_to_index(this : LayoutLine*, x_pos : Int32, index : Int32*, trailing : Int32*) : Bool

  struct LogAttr # struct
    is_line_break : UInt32
    is_mandatory_break : UInt32
    is_char_break : UInt32
    is_white : UInt32
    is_cursor_position : UInt32
    is_word_start : UInt32
    is_word_end : UInt32
    is_sentence_boundary : UInt32
    is_sentence_start : UInt32
    is_sentence_end : UInt32
    backspace_deletes_character : UInt32
    is_expandable_space : UInt32
    is_word_boundary : UInt32
  end

  struct Map # struct
    _data : UInt8[0]
  end

  struct MapEntry # struct
    _data : UInt8[0]
  end

  struct Matrix # struct
    xx : Float64
    xy : Float64
    yx : Float64
    yy : Float64
    x0 : Float64
    y0 : Float64
  end
  fun matrix_concat = pango_matrix_concat(this : Matrix*, new_matrix : LibPango::Matrix*) : Void
  fun matrix_copy = pango_matrix_copy(this : Matrix*) : LibPango::Matrix*
  fun matrix_free = pango_matrix_free(this : Matrix*) : Void
  fun matrix_get_font_scale_factor = pango_matrix_get_font_scale_factor(this : Matrix*) : Float64
  fun matrix_get_font_scale_factors = pango_matrix_get_font_scale_factors(this : Matrix*, xscale : Float64*, yscale : Float64*) : Void
  fun matrix_rotate = pango_matrix_rotate(this : Matrix*, degrees : Float64) : Void
  fun matrix_scale = pango_matrix_scale(this : Matrix*, scale_x : Float64, scale_y : Float64) : Void
  fun matrix_transform_distance = pango_matrix_transform_distance(this : Matrix*, dx : Float64*, dy : Float64*) : Void
  fun matrix_transform_pixel_rectangle = pango_matrix_transform_pixel_rectangle(this : Matrix*, rect : LibPango::Rectangle*) : Void
  fun matrix_transform_point = pango_matrix_transform_point(this : Matrix*, x : Float64*, y : Float64*) : Void
  fun matrix_transform_rectangle = pango_matrix_transform_rectangle(this : Matrix*, rect : LibPango::Rectangle*) : Void
  fun matrix_translate = pango_matrix_translate(this : Matrix*, tx : Float64, ty : Float64) : Void

  struct Rectangle # struct
    x : Int32
    y : Int32
    width : Int32
    height : Int32
  end

  struct RendererPrivate # struct
    _data : UInt8[0]
  end

  struct ScriptForLang # struct
    lang : Int8
    scripts : LibPango::Script
  end

  struct ScriptIter # struct
    _data : UInt8[0]
  end
  fun script_iter_free = pango_script_iter_free(this : ScriptIter*) : Void
  fun script_iter_get_range = pango_script_iter_get_range(this : ScriptIter*, start : UInt8**, end : UInt8**, script : LibPango::Script*) : Void
  fun script_iter_next = pango_script_iter_next(this : ScriptIter*) : Bool

  struct TabArray # struct
    _data : UInt8[0]
  end
  fun tab_array_new = pango_tab_array_new(initial_size : Int32, positions_in_pixels : Bool) : LibPango::TabArray*
  fun tab_array_copy = pango_tab_array_copy(this : TabArray*) : LibPango::TabArray*
  fun tab_array_free = pango_tab_array_free(this : TabArray*) : Void
  fun tab_array_get_positions_in_pixels = pango_tab_array_get_positions_in_pixels(this : TabArray*) : Bool
  fun tab_array_get_size = pango_tab_array_get_size(this : TabArray*) : Int32
  fun tab_array_get_tab = pango_tab_array_get_tab(this : TabArray*, tab_index : Int32, alignment : LibPango::TabAlign*, location : Int32*) : Void
  fun tab_array_get_tabs = pango_tab_array_get_tabs(this : TabArray*, alignments : LibPango::TabAlign**, locations : Int32**) : Void
  fun tab_array_resize = pango_tab_array_resize(this : TabArray*, new_size : Int32) : Void
  fun tab_array_set_tab = pango_tab_array_set_tab(this : TabArray*, tab_index : Int32, alignment : LibPango::TabAlign, location : Int32) : Void


  ###########################################
  ##    Objects
  ###########################################

  struct Context # object
    _data : UInt8[0]
  end
  fun context_new = pango_context_new() : LibPango::Context*
  fun context_changed = pango_context_changed(this : Context*) : Void
  fun context_get_base_dir = pango_context_get_base_dir(this : Context*) : LibPango::Direction
  fun context_get_base_gravity = pango_context_get_base_gravity(this : Context*) : LibPango::Gravity
  fun context_get_font_description = pango_context_get_font_description(this : Context*) : LibPango::FontDescription*
  fun context_get_font_map = pango_context_get_font_map(this : Context*) : LibPango::FontMap*
  fun context_get_gravity = pango_context_get_gravity(this : Context*) : LibPango::Gravity
  fun context_get_gravity_hint = pango_context_get_gravity_hint(this : Context*) : LibPango::GravityHint
  fun context_get_language = pango_context_get_language(this : Context*) : LibPango::Language*
  fun context_get_matrix = pango_context_get_matrix(this : Context*) : LibPango::Matrix*
  fun context_get_metrics = pango_context_get_metrics(this : Context*, desc : LibPango::FontDescription*, language : LibPango::Language*) : LibPango::FontMetrics*
  fun context_get_serial = pango_context_get_serial(this : Context*) : UInt32
  fun context_list_families = pango_context_list_families(this : Context*, families : LibPango::FontFamily***, n_families : Int32*) : Void
  fun context_load_font = pango_context_load_font(this : Context*, desc : LibPango::FontDescription*) : LibPango::Font*
  fun context_load_fontset = pango_context_load_fontset(this : Context*, desc : LibPango::FontDescription*, language : LibPango::Language*) : LibPango::Fontset*
  fun context_set_base_dir = pango_context_set_base_dir(this : Context*, direction : LibPango::Direction) : Void
  fun context_set_base_gravity = pango_context_set_base_gravity(this : Context*, gravity : LibPango::Gravity) : Void
  fun context_set_font_description = pango_context_set_font_description(this : Context*, desc : LibPango::FontDescription*) : Void
  fun context_set_font_map = pango_context_set_font_map(this : Context*, font_map : LibPango::FontMap*) : Void
  fun context_set_gravity_hint = pango_context_set_gravity_hint(this : Context*, hint : LibPango::GravityHint) : Void
  fun context_set_language = pango_context_set_language(this : Context*, language : LibPango::Language*) : Void
  fun context_set_matrix = pango_context_set_matrix(this : Context*, matrix : LibPango::Matrix*) : Void

  struct Engine # object
    parent_instance : LibGObject::Object
  end

  struct EngineLang # object
    parent_instance : LibPango::Engine
    # Virtual function script_break
  end

  struct EngineShape # object
    parent_instance : LibPango::Engine
    # Virtual function covers
    # Virtual function script_shape
  end

  struct Font # object
    parent_instance : LibGObject::Object
    # Virtual function describe
    # Virtual function describe_absolute
    # Virtual function get_font_map
    # Virtual function get_glyph_extents
    # Virtual function get_metrics
  end
  fun font_descriptions_free = pango_font_descriptions_free(descs : LibPango::FontDescription**, n_descs : Int32) : Void
  fun font_describe = pango_font_describe(this : Font*) : LibPango::FontDescription*
  fun font_describe_with_absolute_size = pango_font_describe_with_absolute_size(this : Font*) : LibPango::FontDescription*
  fun font_get_font_map = pango_font_get_font_map(this : Font*) : LibPango::FontMap*
  fun font_get_glyph_extents = pango_font_get_glyph_extents(this : Font*, glyph : UInt32, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun font_get_metrics = pango_font_get_metrics(this : Font*, language : LibPango::Language*) : LibPango::FontMetrics*

  struct FontFace # object
    parent_instance : LibGObject::Object
    # Virtual function describe
    # Virtual function get_face_name
    # Virtual function is_synthesized
    # Virtual function list_sizes
  end
  fun font_face_describe = pango_font_face_describe(this : FontFace*) : LibPango::FontDescription*
  fun font_face_get_face_name = pango_font_face_get_face_name(this : FontFace*) : UInt8*
  fun font_face_is_synthesized = pango_font_face_is_synthesized(this : FontFace*) : Bool
  fun font_face_list_sizes = pango_font_face_list_sizes(this : FontFace*, sizes : Int32**, n_sizes : Int32*) : Void

  struct FontFamily # object
    parent_instance : LibGObject::Object
    # Virtual function get_name
    # Virtual function is_monospace
    # Virtual function list_faces
  end
  fun font_family_get_name = pango_font_family_get_name(this : FontFamily*) : UInt8*
  fun font_family_is_monospace = pango_font_family_is_monospace(this : FontFamily*) : Bool
  fun font_family_list_faces = pango_font_family_list_faces(this : FontFamily*, faces : LibPango::FontFace***, n_faces : Int32*) : Void

  struct FontMap # object
    parent_instance : LibGObject::Object
    # Virtual function changed
    # Virtual function get_serial
    # Virtual function list_families
    # Virtual function load_font
    # Virtual function load_fontset
  end
  fun font_map_changed = pango_font_map_changed(this : FontMap*) : Void
  fun font_map_create_context = pango_font_map_create_context(this : FontMap*) : LibPango::Context*
  fun font_map_get_serial = pango_font_map_get_serial(this : FontMap*) : UInt32
  fun font_map_get_shape_engine_type = pango_font_map_get_shape_engine_type(this : FontMap*) : UInt8*
  fun font_map_list_families = pango_font_map_list_families(this : FontMap*, families : LibPango::FontFamily***, n_families : Int32*) : Void
  fun font_map_load_font = pango_font_map_load_font(this : FontMap*, context : LibPango::Context*, desc : LibPango::FontDescription*) : LibPango::Font*
  fun font_map_load_fontset = pango_font_map_load_fontset(this : FontMap*, context : LibPango::Context*, desc : LibPango::FontDescription*, language : LibPango::Language*) : LibPango::Fontset*

  struct Fontset # object
    parent_instance : LibGObject::Object
    # Virtual function foreach
    # Virtual function get_font
    # Virtual function get_language
    # Virtual function get_metrics
  end
  fun fontset_foreach = pango_fontset_foreach(this : Fontset*, func : LibPango::FontsetForeachFunc, data : Void*) : Void
  fun fontset_get_font = pango_fontset_get_font(this : Fontset*, wc : UInt32) : LibPango::Font*
  fun fontset_get_metrics = pango_fontset_get_metrics(this : Fontset*) : LibPango::FontMetrics*

  struct FontsetSimple # object
    _data : UInt8[0]
  end
  fun fontset_simple_new = pango_fontset_simple_new(language : LibPango::Language*) : LibPango::FontsetSimple*
  fun fontset_simple_append = pango_fontset_simple_append(this : FontsetSimple*, font : LibPango::Font*) : Void
  fun fontset_simple_size = pango_fontset_simple_size(this : FontsetSimple*) : Int32

  struct Layout # object
    _data : UInt8[0]
  end
  fun layout_new = pango_layout_new(context : LibPango::Context*) : LibPango::Layout*
  fun layout_context_changed = pango_layout_context_changed(this : Layout*) : Void
  fun layout_copy = pango_layout_copy(this : Layout*) : LibPango::Layout*
  fun layout_get_alignment = pango_layout_get_alignment(this : Layout*) : LibPango::Alignment
  fun layout_get_attributes = pango_layout_get_attributes(this : Layout*) : LibPango::AttrList*
  fun layout_get_auto_dir = pango_layout_get_auto_dir(this : Layout*) : Bool
  fun layout_get_baseline = pango_layout_get_baseline(this : Layout*) : Int32
  fun layout_get_character_count = pango_layout_get_character_count(this : Layout*) : Int32
  fun layout_get_context = pango_layout_get_context(this : Layout*) : LibPango::Context*
  fun layout_get_cursor_pos = pango_layout_get_cursor_pos(this : Layout*, index : Int32, strong_pos : LibPango::Rectangle*, weak_pos : LibPango::Rectangle*) : Void
  fun layout_get_ellipsize = pango_layout_get_ellipsize(this : Layout*) : LibPango::EllipsizeMode
  fun layout_get_extents = pango_layout_get_extents(this : Layout*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_get_font_description = pango_layout_get_font_description(this : Layout*) : LibPango::FontDescription*
  fun layout_get_height = pango_layout_get_height(this : Layout*) : Int32
  fun layout_get_indent = pango_layout_get_indent(this : Layout*) : Int32
  fun layout_get_iter = pango_layout_get_iter(this : Layout*) : LibPango::LayoutIter*
  fun layout_get_justify = pango_layout_get_justify(this : Layout*) : Bool
  fun layout_get_line = pango_layout_get_line(this : Layout*, line : Int32) : LibPango::LayoutLine*
  fun layout_get_line_count = pango_layout_get_line_count(this : Layout*) : Int32
  fun layout_get_line_readonly = pango_layout_get_line_readonly(this : Layout*, line : Int32) : LibPango::LayoutLine*
  fun layout_get_lines = pango_layout_get_lines(this : Layout*) : Void**
  fun layout_get_lines_readonly = pango_layout_get_lines_readonly(this : Layout*) : Void**
  fun layout_get_log_attrs = pango_layout_get_log_attrs(this : Layout*, attrs : LibPango::LogAttr**, n_attrs : Int32*) : Void
  fun layout_get_log_attrs_readonly = pango_layout_get_log_attrs_readonly(this : Layout*, n_attrs : Int32*) : LibPango::LogAttr*
  fun layout_get_pixel_extents = pango_layout_get_pixel_extents(this : Layout*, ink_rect : LibPango::Rectangle*, logical_rect : LibPango::Rectangle*) : Void
  fun layout_get_pixel_size = pango_layout_get_pixel_size(this : Layout*, width : Int32*, height : Int32*) : Void
  fun layout_get_serial = pango_layout_get_serial(this : Layout*) : UInt32
  fun layout_get_single_paragraph_mode = pango_layout_get_single_paragraph_mode(this : Layout*) : Bool
  fun layout_get_size = pango_layout_get_size(this : Layout*, width : Int32*, height : Int32*) : Void
  fun layout_get_spacing = pango_layout_get_spacing(this : Layout*) : Int32
  fun layout_get_tabs = pango_layout_get_tabs(this : Layout*) : LibPango::TabArray*
  fun layout_get_text = pango_layout_get_text(this : Layout*) : UInt8*
  fun layout_get_unknown_glyphs_count = pango_layout_get_unknown_glyphs_count(this : Layout*) : Int32
  fun layout_get_width = pango_layout_get_width(this : Layout*) : Int32
  fun layout_get_wrap = pango_layout_get_wrap(this : Layout*) : LibPango::WrapMode
  fun layout_index_to_line_x = pango_layout_index_to_line_x(this : Layout*, index : Int32, trailing : Bool, line : Int32*, x_pos : Int32*) : Void
  fun layout_index_to_pos = pango_layout_index_to_pos(this : Layout*, index : Int32, pos : LibPango::Rectangle*) : Void
  fun layout_is_ellipsized = pango_layout_is_ellipsized(this : Layout*) : Bool
  fun layout_is_wrapped = pango_layout_is_wrapped(this : Layout*) : Bool
  fun layout_move_cursor_visually = pango_layout_move_cursor_visually(this : Layout*, strong : Bool, old_index : Int32, old_trailing : Int32, direction : Int32, new_index : Int32*, new_trailing : Int32*) : Void
  fun layout_set_alignment = pango_layout_set_alignment(this : Layout*, alignment : LibPango::Alignment) : Void
  fun layout_set_attributes = pango_layout_set_attributes(this : Layout*, attrs : LibPango::AttrList*) : Void
  fun layout_set_auto_dir = pango_layout_set_auto_dir(this : Layout*, auto_dir : Bool) : Void
  fun layout_set_ellipsize = pango_layout_set_ellipsize(this : Layout*, ellipsize : LibPango::EllipsizeMode) : Void
  fun layout_set_font_description = pango_layout_set_font_description(this : Layout*, desc : LibPango::FontDescription*) : Void
  fun layout_set_height = pango_layout_set_height(this : Layout*, height : Int32) : Void
  fun layout_set_indent = pango_layout_set_indent(this : Layout*, indent : Int32) : Void
  fun layout_set_justify = pango_layout_set_justify(this : Layout*, justify : Bool) : Void
  fun layout_set_markup = pango_layout_set_markup(this : Layout*, markup : UInt8*, length : Int32) : Void
  fun layout_set_markup_with_accel = pango_layout_set_markup_with_accel(this : Layout*, markup : UInt8*, length : Int32, accel_marker : UInt8, accel_char : UInt8*) : Void
  fun layout_set_single_paragraph_mode = pango_layout_set_single_paragraph_mode(this : Layout*, setting : Bool) : Void
  fun layout_set_spacing = pango_layout_set_spacing(this : Layout*, spacing : Int32) : Void
  fun layout_set_tabs = pango_layout_set_tabs(this : Layout*, tabs : LibPango::TabArray*) : Void
  fun layout_set_text = pango_layout_set_text(this : Layout*, text : UInt8*, length : Int32) : Void
  fun layout_set_width = pango_layout_set_width(this : Layout*, width : Int32) : Void
  fun layout_set_wrap = pango_layout_set_wrap(this : Layout*, wrap : LibPango::WrapMode) : Void
  fun layout_xy_to_index = pango_layout_xy_to_index(this : Layout*, x : Int32, y : Int32, index : Int32*, trailing : Int32*) : Bool

  struct Renderer # object
    parent_instance : LibGObject::Object
    underline : LibPango::Underline
    strikethrough : Bool
    active_count : Int32
    matrix : LibPango::Matrix*
    priv : LibPango::RendererPrivate*
    # Virtual function begin
    # Virtual function draw_error_underline
    # Virtual function draw_glyph
    # Virtual function draw_glyph_item
    # Virtual function draw_glyphs
    # Virtual function draw_rectangle
    # Virtual function draw_shape
    # Virtual function draw_trapezoid
    # Virtual function end
    # Virtual function part_changed
    # Virtual function prepare_run
  end
  fun renderer_activate = pango_renderer_activate(this : Renderer*) : Void
  fun renderer_deactivate = pango_renderer_deactivate(this : Renderer*) : Void
  fun renderer_draw_error_underline = pango_renderer_draw_error_underline(this : Renderer*, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun renderer_draw_glyph = pango_renderer_draw_glyph(this : Renderer*, font : LibPango::Font*, glyph : UInt32, x : Float64, y : Float64) : Void
  fun renderer_draw_glyph_item = pango_renderer_draw_glyph_item(this : Renderer*, text : UInt8*, glyph_item : LibPango::GlyphItem*, x : Int32, y : Int32) : Void
  fun renderer_draw_glyphs = pango_renderer_draw_glyphs(this : Renderer*, font : LibPango::Font*, glyphs : LibPango::GlyphString*, x : Int32, y : Int32) : Void
  fun renderer_draw_layout = pango_renderer_draw_layout(this : Renderer*, layout : LibPango::Layout*, x : Int32, y : Int32) : Void
  fun renderer_draw_layout_line = pango_renderer_draw_layout_line(this : Renderer*, line : LibPango::LayoutLine*, x : Int32, y : Int32) : Void
  fun renderer_draw_rectangle = pango_renderer_draw_rectangle(this : Renderer*, part : LibPango::RenderPart, x : Int32, y : Int32, width : Int32, height : Int32) : Void
  fun renderer_draw_trapezoid = pango_renderer_draw_trapezoid(this : Renderer*, part : LibPango::RenderPart, y1 : Float64, x11 : Float64, x21 : Float64, y2 : Float64, x12 : Float64, x22 : Float64) : Void
  fun renderer_get_alpha = pango_renderer_get_alpha(this : Renderer*, part : LibPango::RenderPart) : UInt16
  fun renderer_get_color = pango_renderer_get_color(this : Renderer*, part : LibPango::RenderPart) : LibPango::Color*
  fun renderer_get_layout = pango_renderer_get_layout(this : Renderer*) : LibPango::Layout*
  fun renderer_get_layout_line = pango_renderer_get_layout_line(this : Renderer*) : LibPango::LayoutLine*
  fun renderer_get_matrix = pango_renderer_get_matrix(this : Renderer*) : LibPango::Matrix*
  fun renderer_part_changed = pango_renderer_part_changed(this : Renderer*, part : LibPango::RenderPart) : Void
  fun renderer_set_alpha = pango_renderer_set_alpha(this : Renderer*, part : LibPango::RenderPart, alpha : UInt16) : Void
  fun renderer_set_color = pango_renderer_set_color(this : Renderer*, part : LibPango::RenderPart, color : LibPango::Color*) : Void
  fun renderer_set_matrix = pango_renderer_set_matrix(this : Renderer*, matrix : LibPango::Matrix*) : Void


  ###########################################
  ##    Flags
  ###########################################

  @[Flags]
  enum FontMask : UInt32
    ZERO_NONE = 0
    FAMILY = 1
    STYLE = 2
    VARIANT = 4
    WEIGHT = 8
    STRETCH = 16
    SIZE = 32
    GRAVITY = 64
  end


  ###########################################
  ##    Functions
  ###########################################

  fun attr_type_get_name = pango_attr_type_get_name(type : LibPango::AttrType) : UInt8*
  fun attr_type_register = pango_attr_type_register(name : UInt8*) : LibPango::AttrType
  fun bidi_type_for_unichar = pango_bidi_type_for_unichar(ch : UInt8) : LibPango::BidiType
  fun break = pango_break(text : UInt8*, length : Int32, analysis : LibPango::Analysis*, attrs : LibPango::LogAttr*, attrs_len : Int32) : Void
  fun config_key_get = pango_config_key_get(key : UInt8*) : UInt8*
  fun config_key_get_system = pango_config_key_get_system(key : UInt8*) : UInt8*
  fun default_break = pango_default_break(text : UInt8*, length : Int32, analysis : LibPango::Analysis*, attrs : LibPango::LogAttr*, attrs_len : Int32) : Void
  fun extents_to_pixels = pango_extents_to_pixels(inclusive : LibPango::Rectangle*, nearest : LibPango::Rectangle*) : Void
  fun find_base_dir = pango_find_base_dir(text : UInt8*, length : Int32) : LibPango::Direction
  fun find_paragraph_boundary = pango_find_paragraph_boundary(text : UInt8*, length : Int32, paragraph_delimiter_index : Int32*, next_paragraph_start : Int32*) : Void
  fun font_description_from_string = pango_font_description_from_string(str : UInt8*) : LibPango::FontDescription*
  fun get_lib_subdirectory = pango_get_lib_subdirectory() : UInt8*
  fun get_log_attrs = pango_get_log_attrs(text : UInt8*, length : Int32, level : Int32, language : LibPango::Language*, log_attrs : LibPango::LogAttr*, attrs_len : Int32) : Void
  fun get_mirror_char = pango_get_mirror_char(ch : UInt8, mirrored_ch : UInt8*) : Bool
  fun get_sysconf_subdirectory = pango_get_sysconf_subdirectory() : UInt8*
  fun gravity_get_for_matrix = pango_gravity_get_for_matrix(matrix : LibPango::Matrix*) : LibPango::Gravity
  fun gravity_get_for_script = pango_gravity_get_for_script(script : LibPango::Script, base_gravity : LibPango::Gravity, hint : LibPango::GravityHint) : LibPango::Gravity
  fun gravity_get_for_script_and_width = pango_gravity_get_for_script_and_width(script : LibPango::Script, wide : Bool, base_gravity : LibPango::Gravity, hint : LibPango::GravityHint) : LibPango::Gravity
  fun gravity_to_rotation = pango_gravity_to_rotation(gravity : LibPango::Gravity) : Float64
  fun is_zero_width = pango_is_zero_width(ch : UInt8) : Bool
  fun itemize = pango_itemize(context : LibPango::Context*, text : UInt8*, start_index : Int32, length : Int32, attrs : LibPango::AttrList*, cached_iter : LibPango::AttrIterator*) : Void**
  fun itemize_with_base_dir = pango_itemize_with_base_dir(context : LibPango::Context*, base_dir : LibPango::Direction, text : UInt8*, start_index : Int32, length : Int32, attrs : LibPango::AttrList*, cached_iter : LibPango::AttrIterator*) : Void**
  fun language_from_string = pango_language_from_string(language : UInt8*) : LibPango::Language*
  fun language_get_default = pango_language_get_default() : LibPango::Language*
  fun log2vis_get_embedding_levels = pango_log2vis_get_embedding_levels(text : UInt8*, length : Int32, pbase_dir : LibPango::Direction*) : UInt8*
  fun lookup_aliases = pango_lookup_aliases(fontname : UInt8*, families : UInt8***, n_families : Int32*) : Void
  fun markup_parser_finish = pango_markup_parser_finish(context : LibGLib::MarkupParseContext*, attr_list : LibPango::AttrList**, text : UInt8**, accel_char : UInt8*, error : LibGLib::Error**) : Bool
  fun markup_parser_new = pango_markup_parser_new(accel_marker : UInt8) : LibGLib::MarkupParseContext*
  fun module_register = pango_module_register(_module : LibPango::IncludedModule*) : Void
  fun parse_enum = pango_parse_enum(type : UInt64, str : UInt8*, value : Int32*, warn : Bool, possible_values : UInt8**) : Bool
  fun parse_markup = pango_parse_markup(markup_text : UInt8*, length : Int32, accel_marker : UInt8, attr_list : LibPango::AttrList**, text : UInt8**, accel_char : UInt8*, error : LibGLib::Error**) : Bool
  fun parse_stretch = pango_parse_stretch(str : UInt8*, stretch : LibPango::Stretch*, warn : Bool) : Bool
  fun parse_style = pango_parse_style(str : UInt8*, style : LibPango::Style*, warn : Bool) : Bool
  fun parse_variant = pango_parse_variant(str : UInt8*, variant : LibPango::Variant*, warn : Bool) : Bool
  fun parse_weight = pango_parse_weight(str : UInt8*, weight : LibPango::Weight*, warn : Bool) : Bool
  fun quantize_line_geometry = pango_quantize_line_geometry(thickness : Int32*, position : Int32*) : Void
  fun read_line = pango_read_line(stream : Void*, str : LibGLib::String*) : Int32
  fun reorder_items = pango_reorder_items(logical_items : Void**) : Void**
  fun scan_int = pango_scan_int(pos : UInt8**, _out : Int32*) : Bool
  fun scan_string = pango_scan_string(pos : UInt8**, _out : LibGLib::String*) : Bool
  fun scan_word = pango_scan_word(pos : UInt8**, _out : LibGLib::String*) : Bool
  fun script_for_unichar = pango_script_for_unichar(ch : UInt8) : LibPango::Script
  fun script_get_sample_language = pango_script_get_sample_language(script : LibPango::Script) : LibPango::Language*
  fun shape = pango_shape(text : UInt8*, length : Int32, analysis : LibPango::Analysis*, glyphs : LibPango::GlyphString*) : Void
  fun shape_full = pango_shape_full(item_text : UInt8*, item_length : Int32, paragraph_text : UInt8*, paragraph_length : Int32, analysis : LibPango::Analysis*, glyphs : LibPango::GlyphString*) : Void
  fun skip_space = pango_skip_space(pos : UInt8**) : Bool
  fun split_file_list = pango_split_file_list(str : UInt8*) : UInt8**
  fun trim_string = pango_trim_string(str : UInt8*) : UInt8*
  fun unichar_direction = pango_unichar_direction(ch : UInt8) : LibPango::Direction
  fun units_from_double = pango_units_from_double(d : Float64) : Int32
  fun units_to_double = pango_units_to_double(i : Int32) : Float64
  fun version = pango_version() : Int32
  fun version_check = pango_version_check(required_major : Int32, required_minor : Int32, required_micro : Int32) : UInt8*
  fun version_string = pango_version_string() : UInt8*

  ###########################################
  ##    Callbacks
  ###########################################

 alias AttrDataCopyFunc = Void* -> Void*
 alias AttrFilterFunc = LibPango::Attribute*, Void* -> Bool
 alias FontsetForeachFunc = LibPango::Fontset*, LibPango::Font*, Void* -> Bool
end


fn comp_container() -> @respo_node.RespoNode[ActionOp] {
  div(
    class_name=str_spaced(
      [@respo.preset, @respo.ui_global, @respo.ui_fullscreen, @respo.ui_column],
    ),
    style=respo_style(font_family="Helvetica Neue, sans-serif"),
    [
      div(
        class_name=@respo.ui_center,
        style=respo_style(
          background_color=RawString("rgb(221, 221, 221)"),
          font_weight="100",
          font_size=24,
          padding=Px(40),
          color=RawString("#888"),
          line_height=Em(2),
        ),
        [
          text_node("MoonBit is like Rust (Except that it has GC)"),
          text_node("Fork repo if you want to contribute."),
        ],
      ),
      div(
        style=respo_style(background_color=RawString("#eee")),
        [
          div(
            style=respo_style(max_width=Px(1400), margin=Auto),
            [
              comp_section("BASICS"),
              comp_topic("Hello World"),
              comp_compare(
                "println(\"Hello, World!\")", "println!(\"Hello, World!\");",
              ),
              comp_topic("Variables And Constants"),
              comp_compare(mbt_variable, rs_variable),
              comp_topic("Explicit Types"),
              comp_compare(mbt_explict_type, rs_explict_type),
              comp_topic("Type Coercion"),
              comp_compare(mbt_type_coercion, rs_type_coercion),
              comp_topic("String Interpolation"),
              comp_compare(mbt_string_interpolation, rs_string_interpolation),
              comp_topic("Range Operator"),
              comp_compare(mbt_range_operator, rs_range_operator),
              comp_section("COLLECTIONS"),
              comp_topic("Arrays"),
              comp_compare(mbt_arrays, rs_arrays),
              comp_topic("Maps"),
              comp_compare(mbt_maps, rs_maps),
              comp_section("FUNCTIONS"),
              comp_topic("Functions"),
              comp_compare(mbt_functions, rs_functions),
              comp_topic("Tuple Return"),
              comp_compare(mbt_tuple_return, rs_tuple_return),
              comp_topic("Function Type"),
              comp_compare(mbt_function_type, rs_function_type),
              comp_topic("Map"),
              comp_topic("Sort"),
              comp_topic("Named Arguments"),
              comp_compare(mbt_named_arguments, rs_named_arguments),
              comp_section("TRAITS"),
              comp_topic("Declaration"),
              comp_topic("Usage"),
              comp_topic("Default Implementation"),
              comp_topic("Downcasting"),
              comp_topic("Protocol"),
              comp_topic("Extensions"),
              @respo_node.space(height=200),
            ],
          ),
        ],
      ),
    ],
  )
}

fn comp_section(title : String) -> @respo_node.RespoNode[ActionOp] {
  div(
    class_name=str_spaced([]),
    style=respo_style(
      padding=Px(12),
      font_size=48,
      font_weight="100",
      text_align=Center,
      margin=Px(60),
      color=RawString("#888"),
    ),
    [text_node(title)],
  )
}

fn comp_topic(title : String) -> @respo_node.RespoNode[ActionOp] {
  div(
    class_name=str_spaced([@respo.ui_center]),
    style=respo_style(
      padding=Px(12),
      font_size=32,
      font_weight="200",
      margin=Px(60),
      color=RawString("#444"),
    ),
    [div([text_node(title)])],
  )
}

fn comp_compare(
  mbt_code : String,
  rs_code : String
) -> @respo_node.RespoNode[ActionOp] {
  div(
    class_name=str_spaced([@respo.ui_row]),
    style=respo_style(padding=Px(12)),
    [
      div(
        class_name=str_spaced([@respo.ui_expand, @respo.ui_column]),
        [
          div([text_node("MoonBit", class_name=style_lang_name)]),
          div([code_block(mbt_code)]),
        ],
      ),
      @respo_node.space(width=16),
      div(
        class_name=str_spaced([@respo.ui_expand, @respo.ui_column]),
        [
          div([text_node("Rust", class_name=style_lang_name)]),
          div([code_block(rs_code)]),
        ],
      ),
    ],
  )
}

/// a custom style for code block
fn code_block[T](
  class_name? : String,
  style? : @respo_node.RespoStyle,
  code : String
) -> @respo_node.RespoNode[T] {
  pre(
    class_name=str_some_spaced(
      [
        Some(@respo.ui_font_code),
        Some(@respo.ui_expand),
        class_name,
        Some(style_code_block),
      ],
    ),
    style=style.or_default(),
    inner_text=code,
  )
}

fn str_some_spaced(arr : Array[String?]) -> String {
  arr.filter(fn(x) { not(x.is_empty()) }).map(fn(x) { x.unwrap() })
  |> String::concat(separator=" ")
}

let style_code_block : String = declare_static_style(
  [
    (
      "&",
      respo_style(
        padding=Px(8),
        background_color=Hsl(0, 0, 100),
        border=(1.0, Solid, Hsl(0, 0, 90)),
        border_radius=4,
        line_height=Em(1.6),
        font_size=13,
      ),
    ),
    ("pre&", respo_style(margin=Px(0))),
  ],
)

let style_lang_name : String = declare_static_style(
  [
    (
      "&",
      respo_style(
        font_weight="100",
        line_height=Em(1.6),
        font_size=18,
        margin_bottom=Px(8),
      ),
    ),
  ],
)

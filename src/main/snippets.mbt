let mbt_variable : String =
  #| let mut my_variable: Int = 42
  #| my_variable = 50
  #|
  #| let my_constant = 42

let rs_variable : String =
  #| let mut my_variable: usize = 42;
  #| my_variable = 50;
  #|
  #| let my_constant: usize = 42:

let mbt_explict_type : String =
  #| let explicit_double: Double = 70

let rs_explict_type : String =
  #| let explicit_double: f64 = 70.0;

let mbt_type_coercion : String =
  #| let label: String = "The width is "
  #| let width: Int = 94
  #| let width_label : String = label + width.to_string()

let rs_type_coercion : String =
  #| let label: &str = "The width is ";
  #| let width: usize = 94;
  #| let width_label: String = label.to_string() + &width.to_string();

let mbt_string_interpolation : String =
  #| let apples: Int = 3
  #| let oranges: Int = 5
  #| let fruit_summary : String = "I have \{apples + oranges} " +
  #|   "pieces of fruit."

let rs_string_interpolation : String =
  #| let apples: usize = 3;
  #| let oranges: usize = 5;
  #| let fruit_summary: String = format!("I have {} pieces of fruit.", apples + oranges);

let mbt_range_operator : String =
  #| // nope

let rs_range_operator : String =
  #| let names = vec!["Anna", "Alex", "Brian", "Jack"];
  #| let count = names.len();
  #| for i in 0..count {
  #|     println!("Person {} is called {}", i + 1, names[i]);
  #| }

let mbt_arrays : String =
  #| let shopping_list = ["catfish", "water", "tulips", "blue paint"]
  #| shopping_list[1] = "bottle of water"

let rs_arrays : String =
  #| let mut shopping_list = vec!["catfish", "water", "tulips", "blue paint"];
  #| shopping_list[1] = "bottle of water";

// var occupations = [
//     "Malcolm": "Captain",
//     "Kaylee": "Mechanic",
// ]
// occupations["Jayne"] = "Public Relations"

let mbt_maps : String =
  #| let occupations = {
  #| "Malcolm": "Captain",
  #| "Kaylee": "Mechanic",
  #| }
  #| occupations["Jayne"] = "Public Relations"

let rs_maps : String =
  #| let mut occupations = HashMap::new();
  #| occupations.insert("Malcolm", "Captain");
  #| occupations.insert("Kaylee", "Mechanic");
  #| occupations.insert("Jayne", "Public Relations");

let mbt_functions : String =
  #| let greet = fn(name: String, day: String) -> String {
  #|   "Hello \{name}, today is \{day}."
  #| }
  #|
  #| fn main() {
  #|   greet("Bob", "Tuesday")
  #| }

let rs_functions : String =
  #| fn greet(name: &str, day: &str) -> String {
  #|     format!("Hello {}, today is {}.", name, day)
  #| }
  #|
  #| fn main() {
  #|     greet("Bob", "Tuesday");
  #| }
  #|

let mbt_tuple_return : String =
  #| fn get_gas_prices() -> (Double, Double, Double) {
  #|   (3.59, 3.69, 3.79)
  #| }

let rs_tuple_return : String =
  #| fn get_gas_prices() -> (f64, f64, f64) {
  #|     (3.59, 3.69, 3.79)
  #| }

let mbt_function_type : String =
  #| fn make_incrementer() -> (Int) -> Int {
  #|   fn increment(number : Int) -> Int {
  #|     1 + number
  #|   }
  #|
  #|   increment
  #| }
  #|
  #| fn main() {
  #|   let increment = make_incrementer()
  #|   increment(7)
  #|   let increment = make_incrementer()
  #| }

let rs_function_type : String =
  #| fn make_incrementer() -> fn(i32) -> i32 { // TODO: check this
  #|     fn increment(number: i32) -> i32 {
  #|         1 + number
  #|     }
  #|     increment
  #| }
  #|
  #| fn main() {
  #|     let increment = make_incrementer();
  #|     increment(7);
  #|     let increment = make_incrementer();
  #| }

// def area(width: Int, height: Int) -> Int {
//     return width * height
// }

// area(width: 10, height: 10)

let mbt_named_arguments : String =
  #| fn area(width~ : Int, height~ : Int) -> Int {
  #|   width * height
  #| }
  #|
  #| fn main() {
  #|   area(width=10, height=10)
  #| }

let rs_named_arguments : String = "// nope"

// fn demo() {
// }

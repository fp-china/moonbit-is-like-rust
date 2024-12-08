///|
let mbt_variable : String =
  #| let mut my_variable: Int = 42
  #| my_variable = 50
  #|
  #| let my_constant = 42

///|
let rs_variable : String =
  #| let mut my_variable: i32 = 42;
  #| my_variable = 50;
  #|
  #| let my_constant: i32 = 42;

///|
let mbt_explict_type : String =
  #| let explicit_double: Double = 70

///|
let rs_explict_type : String =
  #| let explicit_double: f64 = 70.0;

///|
let mbt_type_coercion : String =
  #| let label: String = "The width is "
  #| let width: Int = 94
  #| let width_label : String = label + width.to_string()

///|
let rs_type_coercion : String =
  #| let label: &str = "The width is ";
  #| let width: usize = 94;
  #| let width_label: String = label.to_string() + &width.to_string();

///|
let mbt_string_interpolation : String =
  #| let apples: Int = 3
  #| let oranges: Int = 5
  #| let fruit_summary : String = "I have \{apples + oranges} " +
  #|   "pieces of fruit."

///|
let rs_string_interpolation : String =
  #| let apples: usize = 3;
  #| let oranges: usize = 5;
  #| let fruit_summary: String = format!("I have {} pieces of fruit.", apples + oranges);

///|
let mbt_range_operator : String =
  #| // nope

///|
let rs_range_operator : String =
  #| let names = vec!["Anna", "Alex", "Brian", "Jack"];
  #| let count = names.len();
  #| for i in 0..count {
  #|     println!("Person {} is called {}", i + 1, names[i]);
  #| }

///|
let mbt_arrays : String =
  #| let shopping_list = ["catfish", "water", "tulips", "blue paint"]
  #| shopping_list[1] = "bottle of water"

///|
let rs_arrays : String =
  #| let mut shopping_list = vec!["catfish", "water", "tulips", "blue paint"];
  #| shopping_list[1] = "bottle of water";

///|
let mbt_maps : String =
  #| let occupations = {
  #|   "Malcolm": "Captain",
  #|   "Kaylee": "Mechanic",
  #| }
  #| occupations["Jayne"] = "Public Relations"

///|
let rs_maps : String =
  #| let mut occupations = HashMap::new();
  #| occupations.insert("Malcolm", "Captain");
  #| occupations.insert("Kaylee", "Mechanic");
  #| occupations.insert("Jayne", "Public Relations");

///|
let mbt_functions : String =
  #| let greet = fn(name: String, day: String) -> String {
  #|   "Hello \{name}, today is \{day}."
  #| }
  #|
  #| fn main() {
  #|   greet("Bob", "Tuesday")
  #| }

///|
let rs_functions : String =
  #| fn greet(name: &str, day: &str) -> String {
  #|     format!("Hello {}, today is {}.", name, day)
  #| }
  #|
  #| fn main() {
  #|     greet("Bob", "Tuesday");
  #| }
  #|

///|
let mbt_tuple_return : String =
  #| fn get_gas_prices() -> (Double, Double, Double) {
  #|   (3.59, 3.69, 3.79)
  #| }

///|
let rs_tuple_return : String =
  #| fn get_gas_prices() -> (f64, f64, f64) {
  #|     (3.59, 3.69, 3.79)
  #| }

///|
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

///|
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

///|
let mbt_named_arguments : String =
  #| fn area(width~ : Int, height~ : Int) -> Int {
  #|   width * height
  #| }
  #|
  #| fn main() {
  #|   area(width=10, height=10)
  #| }

///|
let rs_named_arguments : String = "// nope"

// class Shape {
//     var numberOfSides = 0
//     func simpleDescription() -> String {
//         return "A shape with \(numberOfSides) sides."
//     }
// }

///|
let mbt_struct_methods =
  #| struct Shape {
  #|   number_of_sides : Int
  #| }
  #|
  #| fn Shape::simple_description(self : Shape) -> String {
  #|   "A shape with {} sides.\{self.number_of_sides}"
  #| }

///|
let rs_struct_methods =
  #| struct Shape {
  #|     number_of_sides: i32,
  #| }
  #|
  #| impl Shape {
  #|     fn simple_description(&self) -> String {
  #|         format!("A shape with {} sides.", self.number_of_sides)
  #|     }
  #| }

///|
let mbt_trait_objects =
  #| trait Animal {
  #|   speak(Self) -> Unit
  #| }
  #|
  #| type Duck String
  #| fn Duck::make(name: String) -> Duck { Duck(name) }
  #| fn speak(self: Duck) -> Unit {
  #|   println(self._ + ": quack!")
  #| }
  #|
  #| type Fox String
  #| fn Fox::make(name: String) -> Fox { Fox(name) }
  #| fn Fox::speak(_self: Fox) -> Unit {
  #|   println("What does the fox say?")
  #| }
  #|
  #| fn main {
  #|   let duck1 = Duck::make("duck1")
  #|   let duck2 = Duck::make("duck2")
  #|   let fox1 = Fox::make("fox1")
  #|   let animals = [ duck1 as Animal, duck2 as Animal, fox1 as Animal ]
  #|   let mut i = 0
  #|   while i < animals.length() {
  #|     animals[i].speak()
  #|     i = i + 1
  #|   }
  #| }

///|
let rs_trait_objects =
  #| trait Animal {
  #|     fn speak(&self);
  #| }
  #|
  #| struct Duck {
  #|     name: String,
  #| }
  #| impl Duck {
  #|   fn new(name: String) -> Duck {
  #|     Duck { name }
  #|   }
  #| }
  #| impl Animal for Duck {
  #|     fn speak(&self) {
  #|         println!("{}: quack!", self.name);
  #|     }
  #| }
  #|
  #| struct Fox {
  #|     name: String,
  #| }
  #| impl Fox {
  #|     fn new(name: String) -> Fox {
  #|         Fox { name }
  #|     }
  #| }
  #| impl Animal for Fox {
  #|     fn speak(&self) {
  #|         println!("What does the fox say?");
  #|     }
  #| }
  #|
  #| fn main() {
  #|     let duck1 = Duck::new("duck1");
  #|     let duck2 = Duck::new("duck2");
  #|     let fox1 = Fox::new("fox1");
  #|     let animals: Vec<Box<dyn Animal>> = vec![
  #|         Box::new(duck1),
  #|         Box::new(duck2),
  #|         Box::new(fox1),
  #|     ];
  #|     for animal in animals {
  #|         animal.speak();
  #|     }
  #| }

///|
let mbt_default_trait_impl =
  #| trait I {
  #|   f(Self) -> Unit
  #|   f_twice(Self) -> Unit
  #| }
  #|
  #| impl I with f_twice(self) {
  #|   self.f()
  #|   self.f()
  #| }

///|
let rs_default_trait_impl =
  #| trait I {
  #|     fn f(&self);
  #|     fn f_twice(&self) {
  #|         self.f();
  #|         self.f();
  #|     }
  #| }

///|
let mbt_hashmap =
  #| let map : Map[String, Int] = { "x": 1, "y": 2, "z": 3 }

///|
let rs_hashmap =
  #| let mut map = HashMap::new();
  #| map.insert("x", 1);
  #| map.insert("y", 2);

// fn demo() {
// }

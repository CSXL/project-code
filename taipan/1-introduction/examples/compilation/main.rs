// File: main.rs
fn add_one(x: i32) -> i32 {
  x + 1
}

fn main() {
  let number = 10;
  let result = add_one(number);
  println!("The result is: {}", result);
}

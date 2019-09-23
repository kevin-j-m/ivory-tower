#[macro_use]
extern crate helix;

ruby! {
    class Fizzbuzz {
        def hello() {
            println!("Hello from fizzbuzz!");
        }

        def generate(bound: i32) -> String {
            "hi1".to_string()
        }
    }
}

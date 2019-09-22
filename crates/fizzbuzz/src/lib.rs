#[macro_use]
extern crate helix;

ruby! {
    class Fizzbuzz {
        def hello() {
            println!("Hello from fizzbuzz!");
        }
    }
}

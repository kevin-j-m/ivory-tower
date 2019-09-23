#[macro_use]
extern crate helix;

ruby! {
    class Fizzbuzz {
        def generate(bound: i32) -> Vec<String> {
            let mut results = Vec::new();
            for x in 1..(bound+1) {
                results.push(x.to_string());
            }
            results
        }
    }
}

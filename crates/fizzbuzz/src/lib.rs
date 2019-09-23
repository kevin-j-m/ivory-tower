#[macro_use]
extern crate helix;

ruby! {
    class Fizzbuzz {
        def generate(bound: i32) -> Vec<String> {
            let mut results = Vec::new();
            for x in 1..(bound+1) {
                results.push(match(x % 3, x % 5) {
                    (0, 0) => "FizzBuzz".to_string(),
                    (0, _) => "Fizz".to_string(),
                    (_, 0) => "Buzz".to_string(),
                    (2, 4) => "Buzz".to_string(),
                    (_, _) => x.to_string(),
                })
            }
            results
        }
    }
}

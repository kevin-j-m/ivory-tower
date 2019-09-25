# require "coverage"
# Coverage.start(methods: true)
# load "lib/coverage_check.rb"
# p Coverage.result

# ivory-tower|coverage⚡ ⇒ ruby lib/coverage_check_types.rb
# Never been better!
# This is great!
# This is great!
# {"lib/coverage_check.rb"=>{:methods=>{[Object, :no_testimonial, 13, 0, 15, 3]=>0, [Object, :odd_testimonial, 9, 0, 11, 3]=>1, [Object, :even_testimonial, 5, 0, 7, 3]=>2, [Object, :number_testimonials, 1, 0, 3, 3]=>2}}}

# require "coverage"
# Coverage.start(lines: true)
# load "lib/coverage_check.rb"
# p Coverage.result

# ivory-tower|coverage⚡ ⇒ ruby lib/coverage_check_types.rb
# Never been better!
# This is great!
# This is great!
# {"lib/coverage_check.rb"=>{:lines=>[1, 2, nil, nil, 1, 2, nil, nil, 1, 1, nil, nil, 1, 0, nil, nil, 1, 2, 3, 2, nil, 1, nil, nil, nil]}}


# require "coverage"
# Coverage.start(branches: true)
# load "lib/coverage_check.rb"
# p Coverage.result

# ivory-tower|coverage⚡ ⇒ ruby lib/coverage_check_types.rb
# Never been better!
# This is great!
# This is great!
# {"lib/coverage_check.rb"=>{:branches=>{[:if, 0, 2, 2, 2, 21]=>{[:then, 1, 2, 16, 2, 17]=>1, [:else, 2, 2, 20, 2, 21]=>1}, [:if, 3, 19, 4, 23, 7]=>{[:then, 4, 20, 6, 20, 27]=>2, [:else, 5, 22, 6, 22, 26]=>1}}}}
#
# IF ONLY RUN WITH THE NUMBER 1
#
# require "coverage"
# Coverage.start(branches: true)
# load "lib/coverage_check.rb"
# p Coverage.result
#
# ivory-tower|coverage⚡ ⇒ ruby lib/coverage_check_types.rb
# Never been better!
# {"lib/coverage_check.rb"=>{:branches=>{[:if, 0, 2, 2, 2, 21]=>{[:then, 1, 2, 16, 2, 17]=>0, [:else, 2, 2, 20, 2, 21]=>1}, [:if, 3, 19, 4, 23, 7]=>{[:then, 4, 20, 6, 20, 27]=>0, [:else, 5, 22, 6, 22, 26]=>1}}}}
#

# require "coverage"
# Coverage.start(oneshot_lines: true)
# load "lib/coverage_check.rb"
# p Coverage.result
#
# ivory-tower|coverage⚡ ⇒ ruby lib/coverage_check_types.rb
# Never been better!
# This is great!
# This is great!
# {"lib/coverage_check.rb"=>{:oneshot_lines=>[1, 5, 9, 13, 17, 18, 2, 19, 22, 10, 20, 6]}}


# require "coverage"
# Coverage.start(:all)
# load "lib/coverage_check.rb"
# p Coverage.result
#
# ivory-tower|coverage⚡ ⇒ ruby lib/coverage_check_types.rb
# Never been better!
# This is great!
# This is great!
# {"lib/coverage_check.rb"=>{:lines=>[1, 2, nil, nil, 1, 2, nil, nil, 1, 1, nil, nil, 1, 0, nil, nil, 1, 2, 3, 2, nil, 1, nil, nil, nil], :branches=>{[:if, 0, 2, 2, 2, 21]=>{[:then, 1, 2, 16, 2, 17]=>1, [:else, 2, 2, 20, 2, 21]=>1}, [:if, 3, 19, 4, 23, 7]=>{[:then, 4, 20, 6, 20, 27]=>2, [:else, 5, 22, 6, 22, 26]=>1}}, :methods=>{[Object, :no_testimonial, 13, 0, 15, 3]=>0, [Object, :odd_testimonial, 9, 0, 11, 3]=>1, [Object, :even_testimonial, 5, 0, 7, 3]=>2, [Object, :number_testimonials, 1, 0, 3, 3]=>2}}}

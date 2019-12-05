# Don’t Hang Me Out To DRY

## Abstract

Close your eyes and imagine the perfect codebase to work on. I bet you’ll say it has complete test coverage. It’s fully-optimized, both in terms of performance and architectural design. And, of course, it contains only DRY code. Surely we can all agree that this is an aspirational situation. But...do we really want that?

Don’t get me wrong; these qualities are all beneficial. However, if we also think we should value everything in moderation, when should we push back on these ideals? What problems can they introduce? Let’s talk about the exceptions to some of the “rules” we all hold dear.

## Presentation Details

This talk does not argue against any of the principles of adequate test coverage, optimized code, or DRY code in the broad sense. The intention is not to dissuade the audience from using any of these rules, principles, or guidelines. They’re all incredibly valuable, and we, as craftspeople, are better off for having them overall. This talk will discuss the ways these important ideals can fall short in specific ways and what alternatives are available in those situations.

The talk will initially introduce each of the principles, talking about why it’s important and what benefits it provides. Code examples will be used to illustrate how we can write code or architect software solutions that adhere to these rules. Those examples will then be used to demonstrate some shortcomings of the principle, or situations where following the standard could have negative consequences. Along with identifying some of the downsides, possible solutions and alternatives will be suggested.

## Slides

The latest iteration of the slides that accompany this presentation are
available [here](hang_me_out_to_dry.key) in this repository. The slide deck
in this repo is in macOS's Keynote format. A copy of the slides are also
available on [SpeakerDeck](https://speakerdeck.com/kevinmurphy/dont-hang-me-out-to-dry).

## Code Examples

### Code Coverage

* Showing the right number of [testimonials](https://github.com/kevin-j-m/ivory-tower/commit/922afe4b310b697e8207224e2c2201f9ee122e69)
* Fixing a [non-deterministic test](https://github.com/kevin-j-m/ivory-tower/commit/f14890adf14edbfcf58f4da4409cda8a7fb91806)

### DRY Code

* A [DAMP test](https://github.com/kevin-j-m/ivory-tower/commit/93ef1b8260d4d38d44568ec524f6616ea8bfb121)
* Abstracting operations that [looked the same](https://github.com/kevin-j-m/ivory-tower/commit/e9444f7d4e45d86f45a4914619879263f14c9157), but [aren't the same](https://github.com/kevin-j-m/ivory-tower/commit/c1054e7f70c2b6151f24a7a0efb15a8cf4c12b19)

### Performant Code

* Rust implementation of [core functionality](https://github.com/kevin-j-m/ivory-tower/commit/c50d976c5cdef73b10ae11d1633910c6b2d49d9d)

## Seen At

* [BostonRB](https://www.meetup.com/bostonrb/events/265361498/) - November 12, 2019
* [RubyConf](https://www.youtube.com/watch?v=b960MApGA7A) - November 20, 2019

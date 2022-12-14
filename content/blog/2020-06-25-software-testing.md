+++
title = "Effective Software Testing Practices"
#description = "This is a showcase post."
date = 2020-06-25T07:25:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["software testing"]

[extra]
ToC = false
+++

Writing down what you learn is key to your retention. Today I learned a bit on the wisdom of software testing and took some notes that I thought interesting enough to share. 

I will not get into testing techniques this time. I will try to get more specific next time.

## Find Important Bugs

Test:

- **core functions** before supporting functions. Core functions are critical and the top N things that the product does. It's the functions that make the product what it is.
- **capability** before reliability. Test whether each function can work at all before going deep into the examination of how any one function performs under many different conditions.
- **high-impact problems**. Test the parts of the product that would do a lot of damage in case of failure.
- **common situations** before niche situations.
- the **most wanted areas** before areas not requested. This mean, any areas and for any problems that are of special interest to someone else.
- **things that are changed** before things that are the same. Fixes and updates mean fresh risk.
- **common threats** before rare threats. Test with the most likely stress and error situations.

## Mindset

- Like to dispel the illusion that things work.
- Critical thinking — critical examination of belief.
- If you want to be a good tester, learn to **think like one, not look like one**.
- **Anticipate risks** that the programmer missed — The more you learn about a product, and the more ways in which you know it, the better you will be able to test it.
- Learn about **systems thinking**.
- Intuition is often strongly **biased**.
- Be an explorer.
- What you think "it works" means might not match someone else's definition.
- Don't confuse the test with the testing.
- Manage bias.
- Convince yourself that you are easy to fool.
- When you know a product well, you make more assumptions about it, and you check those assumptions less often.
- Don't restrict yourself to being a steward of received wisdom; be the author of your own wisdom.

## Ideas

Use **heuristics** to generate ideas for tests. Examples:
- Test at the boundaries.
- Test every error message.
- Test configurations that are different from the programmer's.
- Run tests that are annoying to set up.
- Avoid redundant tests.

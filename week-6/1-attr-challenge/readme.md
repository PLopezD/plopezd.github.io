[Week 6](../)

# U2.W6: attr_ attributes

## Learning Competencies
  - Explain attr_reader, attr_writer, and attr_accessor
  - Describe getter and setter methods
  - Use the attr_ methods to simplify your code and pass data between classes


## Summary

You may have run across attr_reader/writer/accessor methods in Ruby code before under class declaration. Instead of considering these to be "magic" methods, we aim to show you what's being done "under the hood" when you invoke these methods.

When we talk about attr_ attributes we are really talking about getter and setter methods. You can read about these in the *Well-Grounded Rubyist* in Chapter 3.

attr_reader is a getter which means that it just returns a value or state outside of the class, but does not change it.

attr_writer is a setter which means that you can change the value of the variable outside of the class, but it is not readable.

attr_accessor is both a getter and a setter. We can now return and change the value of the variable.

So knowing this, why not just make everything attr_accessor? Generally we want things to be as closed to change as possible. Having all instance variables changeable when we really just want them read could lead to difficult debugging problems down the line. It is a safeguard against accidentally giving other methods and classes too much access to the inner workings of others. (Imagine if a bank made Social Security Numbers writable by all other methods) Read Practical Obect-Oriented Design in Ruby if you want to learn more about the basics of software architecture.

## Release 0: Read and Research

Open the [release_0.rb](release_0.rb) and read the code and especially the comments. Is there anything that you see that you do not understand? Look up or ask questions about anything unfamiliar.

Run the code. Do you notice what is changing?

## Release 1: Identify the changes

Open [release_1.rb](release_1.rb) after you finished the instructions for release0.rb. Read the comments and code. Do you notice where the code changed from the last release?

## Release 2: More changes

Open [release_2.rb](release_2.rb) and look at the code. Read the comments and notice where the code changed. All outputs should be the same between all releases even though we are changing the format of our code.

## Release 3: Finally using attr

Open [release_3.rb](release_3.rb) like the others. We now added the attr_accessor declaration. Notice how we reduced superflous code.

## Release 4: Use attr yourself!

Go to [my_solution.rb](my_solution.rb). Finish refactoring the code to make the best use of the attr_attributes methods.

Now, make a new class called Kim that initializes an instance of Profile in its initialize method. Doing this allows you to access to the methods you created in class Profile. Make methods called happy_birthday, change_job, and name_change that access the instance variable in Profile and change them.

The ability to use classes in concert is a powerful tool and one you will be using often!

If this sounds tricky, think about how initialize a class and call methods. It's easy to over-complicate this when you're first starting, but it will seem a lot easier if you break it down.

You may want to complete challenge [3-drawer-debugger](../3-drawer-debugger) first if you are having problems with this last step.

## Release 5: [Reflect](https://github.com/Devbootcamp/phase-0-handbook/blob/master/coding-references/reflection-guidelines.md)


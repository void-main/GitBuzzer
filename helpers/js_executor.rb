# Wraps therubyracer lib
#
# Attach the JS code to an object the first time the object is created.
# Then provides the execute method to pass in the arguments
require 'v8'

class JSExecutor
  attr_accessor :context

  def initialize js_code
    @context = V8::Context.new
    @context.eval js_code
  end

  def execute entry, argument # should be a single object
    puts entry
    puts argument
    @context['arg'] = argument
    js_code = "#{entry}(arg)"
    @context.eval(js_code)
  end

  # Make it possible to call execute method like this
  # Suppose we have a JS function named test_func
  # We can write this:
  # executor = JSExecutor.new
  # executor.test_func "sample argument"
  def method_missing(m, *args, &block)
    execute m, *args
  end
end

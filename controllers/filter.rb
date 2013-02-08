# Filters the message from git hook
#
# Basically, I will use 2 different types of filters
#
# The first will be some predefined filters, given a field name and a operator
# and finally the argument to be compared. User fill in some forms from web,
# and filter converts it into JavaScript snippet.
#
# The second type will be pure JavaScript parser. It runs the JavaScript code,
# and simply returns the result of the JavaScript code.
#
# You may have noticed that the first type of filters are converted to the
# second type.
module Filters

  class JSFilter
    attr_accessor :executor
    def initialize function_code
      @executor = JSExecutor.new function_code
    end

    # The JS file should contain a function named "main"
    def should_buzz? commit_info
      @executor.main commit_info
    end
  end

end

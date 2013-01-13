# This is the "brain" of this buzzer.
#
# GitHub hook feeds the brain with a piece of information (git commit message),
# after that, the brain takes the stage and do the work.
require_relative './filter'

class BuzzerBrain
  def self.trigger commit_info
    # Step1. Grab the registered repo according to the commit info
    # Step2. Go through filter to decide whether buzzer should buzz
    fake_function =<<EOF
    function main(commit) {
      var commit_array = commit['commits'];
      var result = true;
      var len = commit_array.length;
      for (var i=0; i<len; ++i) {
        if (i in commit_array) {
          var s = commit_array[i];
          if(s.message.indexOf('test') == 0) {
            result = false;
          }
        }
      }
      return result;
    }
EOF

    puts fake_function
    filter = Filters::JSFilter.new fake_function
    puts filter.should_buzz? commit_info

    # Step3. When needed, buzz it!
  end
end

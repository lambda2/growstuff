#!/usr/bin/env ruby

checks = [
  # 'overcommit -r',
  'bundle exec script/check_contributors_md.rb'
]

return_values = checks.collect { |t| system(t) }
failures = return_values.count(&:!)
abort "#{failures} static check(s) failed" unless failures.zero?

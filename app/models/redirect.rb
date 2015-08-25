class Redirect < ActiveRecord::Base
  # name
  # url
  # facebook_js
  # perfect_audience_js
  # adroll_js
  # other_js

  # TODO: Validations
  # name unique & exists
  # url exists
  # ONE of the 4 JS snippets exists
end

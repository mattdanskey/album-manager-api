require 'spec_helper'

describe Song do
  it {should validate_presence_of :album_id}
  it {should validate_presence_of :track}
  it {should validate_presence_of :title}
  it {should belong_to(:album)}
end

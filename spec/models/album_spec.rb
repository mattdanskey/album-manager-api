require 'spec_helper'

describe Album do
  it {should validate_presence_of :artist}
  it {should validate_presence_of :title}
  it {should validate_presence_of :genre}
  it {should have_many(:songs)}
end

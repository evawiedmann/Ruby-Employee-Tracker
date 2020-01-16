require 'rails_helper'

describe Individual do
  it { should have_and_belong_to_many :projects }
end

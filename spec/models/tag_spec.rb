require 'rails_helper'

RSpec.describe Tag, type: :model do
  it { should have_many(:article_tags).dependent(:destroy) }
  it { should have_many(:articles) }
  it { should validate_presence_of(:name) }
end

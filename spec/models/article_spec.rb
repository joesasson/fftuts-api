require 'rails_helper'

RSpec.describe Article, type: :model do
  it { should have_many(:article_tags).dependent(:destroy) }
  it { should have_many(:tags) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:link) }
  it { should validate_presence_of(:date) }
end

require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { FactoryBot.build(:book) }
  
  it "can be instanciated" do
    expect(book).not_to be nil
  end

  it "can be saved" do
    expect(book.save).to eq true
  end
end

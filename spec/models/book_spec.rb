require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { FactoryBot.build(:book) }
  
  it "can be instanciated" do
    expect(book).not_to be nil
  end

  it "can be saved" do
    expect(book.save).to eq true
  end

  it "is invalid without title" do
    book.title = nil
    expect(book.valid?).to eq false
    expect(book.errors.messages).to have_key(:title)
  end

  it "is invalid without author" do
    book.author = nil
    expect(book.valid?).to eq false
    expect(book.errors.messages).to have_key(:author)
  end

  it "is invalid with a negative pages count" do
    book.pages_count = -1
    expect(book.valid?).to eq false
    expect(book.errors.messages).to have_key(:pages_count)
  end

  it "is invalid with a 0 pages count" do
    book.pages_count = 0
    expect(book.valid?).to eq false
    expect(book.errors.messages).to have_key(:pages_count)
  end
end

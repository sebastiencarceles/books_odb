require 'rails_helper'

RSpec.describe Book, type: :model do
  let(:book) { FactoryBot.build(:book) }
  
  it "can be instanciated" do
    expect(book).not_to be nil
  end

  it "can be saved" do
    expect(book.save).to eq true
  end

  describe "validations" do
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

  describe "automatic slug definition" do
    it "sets the slug on validation" do
      expect { book.valid? }.to change { book.slug }.from(nil).to(book.title.parameterize)
    end
    
    context "when multiple books have the same title" do
      it "adds a incremented counter to the slug" do
        book.title = "totoro"
        book.save!
        expect(FactoryBot.create(:book, title: "totoro").slug).to eq("totoro-1")
        expect(FactoryBot.create(:book, title: "totoro").slug).to eq("totoro-2")
      end
    end
  end
end

require 'rails_helper'

RSpec.describe Book, type: :model do
    it 'has the correct number of seeded books' do
        expect(Book.count).to eq(5)
    end

    it 'includes the seeded books' do
        titles = Book.pluck(:title)
        expect(titles).to include("The Last Wish", "Perceptive Management", "Eleven Minutes", "Take Me Away", "Sugu ni mo")
      end
    end
# end

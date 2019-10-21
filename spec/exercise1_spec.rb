require_relative '../exercise1/password'

module Exercise1
  describe Password do
    it 'must be over 6 characters' do
      expect(Password.new '12aD5').not_to be_valid
    end

    it 'must be under 30 charactes' do
      expect(
        Password.new '123456789012345678901234567890aaaaaB'
      ).not_to be_valid
    end

    it 'must contain a number' do
      expect(Password.new 'aaaaBBBB').not_to be_valid
    end

    it 'must contain lowercase letter' do
      expect(Password.new 'BBBB5555').not_to be_valid
    end

    it 'must contain a capital letter' do
      expect(Password.new 'aaaa5555').not_to be_valid
    end

    it 'must not contain a $' do
      expect(Password.new 'aaaaBBBB5555$').not_to be_valid
    end

    it 'Is valid if all requirements are satisfied' do
      expect(Password.new 'aaaaBBBB5555').to be_valid
    end

    describe 'Bug IQR-125' do
      xit 'marks the password ayC4r4mb4 valid' do
        expect(Password.new 'ayC4r4mb4').to be_valid
      end
    end
  end
end

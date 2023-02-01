require './lib/caesar_cipher'

describe Caesar_cipher do
  describe '#caesar_cipher' do
    it 'returns the correct modified string' do
      cipher = Caesar_cipher.new
      expect(cipher.caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
  end
end

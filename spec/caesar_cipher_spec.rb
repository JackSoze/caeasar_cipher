require './lib/caesar_cipher'

describe Caesar_cipher do
  subject { described_class.new }
  describe '#caesar_cipher' do
    it 'returns the correct modified string' do
      expect(subject.caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end

    context 'with different cased word' do
      it 'works with different cased words' do
        expect(subject.caesar_cipher('whaT A StrIng', 5)).to eql('bmfY F XywNsl')
      end
    end

    context 'with numbers in the string' do
      it 'works with numbers in the string' do
        expect(subject.caesar_cipher('whaT A StrIng3', 5)).to eql('bmfY F XywNsl3')
      end
    end

    context 'with special chars in string' do
      it 'works with special chars in the string' do
        expect(subject.caesar_cipher('wh.aT A Str?Ing3', 5)).to eql('bm.fY F Xyw?Nsl3')
      end
    end
  end
end

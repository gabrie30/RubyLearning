require 'minitest/autorun'
require 'minitest/pride'
require_relative 'dream_driven_development'

describe Grandma do
  before do
    @grandma = Grandma.new
  end
  describe 'answers_back' do
    it 'must respond in the heard mode when we say "HI"' do
      @grandma.answers_back('HI').must_match 'NOT'
    end

    it 'must respond as unheard when we say "hi"' do
      @grandma.answers_back('hi').must_match 'HUH'
    end

    it 'must respond as silence when nothing is entered' do
      @grandma.answers_back('').must_be_empty
    end

    it 'must respond as silence when BYE is entered' do
      @grandma.answers_back('BYE').must_be_empty
    end

  end

  describe 'leaving grandma' do
    it 'must not kicks_me_out until three consecutive BYE statements' do
      @grandma.answers_back('BYE')
      @grandma.kicks_me_out.must_equal false
      @grandma.answers_back('BYE')
      @grandma.answers_back('BYE')
      @grandma.kicks_me_out.must_equal true
    end

    it 'must not kick me out if they are non-consecutive BYE statements with yelling' do
      @grandma.answers_back('BYE')
      @grandma.kicks_me_out.must_equal false
      @grandma.answers_back('BYE')
      @grandma.answers_back('HI')
      @grandma.kicks_me_out.must_equal false
      @grandma.answers_back('BYE')
      @grandma.kicks_me_out.must_equal false
    end
    it 'must not kick me out if they are non-consecutive BYE statements with whisper' do
      @grandma.answers_back('BYE')
      @grandma.kicks_me_out.must_equal false
      @grandma.answers_back('BYE')
      @grandma.answers_back('hi')
      @grandma.kicks_me_out.must_equal false
      @grandma.answers_back('BYE')
      @grandma.kicks_me_out.must_equal false
    end

  end

end

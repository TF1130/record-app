require 'rails_helper'

RSpec.describe Record, type: :model do
  describe 'レコーディング機能' do
    before do
      @record = FactoryBot.build(:record)
    end

    it 'breakfastが空でも投稿できる' do
      @record.breakfast = ''
      expect(@record).to be_valid
    end
    it 'lunchが空でも投稿できる' do
      @record.lunch = nil
      expect(@record).to be_valid
    end
    it 'dinnerが空でも投稿できる' do
      @record.dinner = nil
      expect(@record).to be_valid
    end
    it 'breakfastが空でも投稿できる' do
      @record.coffeebreak = nil
      expect(@record).to be_valid
    end
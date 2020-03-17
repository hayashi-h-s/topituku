require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end

  context "ユーザー新規登録時のヴァリデーション機能" do
    it "値が入っている場合" do
      expect(@user).to be_valid
    end
  end  
end
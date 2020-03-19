require 'rails_helper'

RSpec.describe User, type: :model do

  context "ユーザー新規登録時のヴァリデーション機能" do
    it "値が入っている場合登録できる" do
      user = build(:user)
      expect(user).to be_valid
    end

    # it 'nameが空では登録できないこと' do
    #   user = build(:user, name: nil)
    #   user.valid?
    #   expect(user.errors[:name]).to include('が入力されていません。')
    # end    

    it 'emailが空では登録できないこと' do
      user = build(:user, email: nil)
      user.valid? #有効か？
      # expect(user.errors[:email]).to include('入力してください')
    end

  end  
end
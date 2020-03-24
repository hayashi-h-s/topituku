require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end

  it 'ユーザー登録が可能である' do
    expect(build(:user)).to be_valid
  end

  # it'nameが存在しないユーザーを許可しない' do
  #   @user.name = nil
  #   @user.valid?
  #   expect(@user.errors).to be_added(:blank)
  # end  

  # it 'nameが空白のユーザーを許可しない' do
  #   @user.name = '   '
  #   @user.valid?
  #   expect(@user.errors).to be_added(:name, :blank)
  # end

  it 'emailが存在しないユーザーを許可しない' do
    @user.email = nil
    @user.valid?
    expect(@user.errors).to be_added(:email, :blank)
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
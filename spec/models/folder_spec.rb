# require 'rails_helper'

# describe 'フォルダー投稿機能', type: :system do

#   # describe '一覽表示機能' do 
#     # before do
#     #   user_a = FactoryBot.create(:user, name: 'ユーザーA', email: 'a@example.com')
#     #   FactoryBot.create(:folders, title: 'フォルダa', user: user_a) 
#     # # end

#     # it 'emailが空では登録できないこと' do
#     #   expect(user_a[:name]).to include('ユーザー')
#     # end

#     # it 'ユーザーAが作成したフォルダが表示される'
#     #   visit folders_path
#     #   expect(page).to have_content 'フォルダA'  
#     # end
#     # context 'ユーザーAがログインしているとき' do 
#     #   before do
#     #     visit  new_user_session_path
#     #     fill_in 'email', with: 'a@example.com'
#     #     fill_in 'password', with: 'password'
#     #     click_button 'ログイン' 
#     #   end    
#     # end
#     it 'ユーザーAが作成したフォルダが表示される'
#       visit new_user_session_path
#       # fill_in 'user_email', with: user.email
#       # fill_in 'user_password', with: user.password
#       # find('input[value="ログイン"]').click
#       # expect(current_path).to eq root_path
#       # expect(page).to have_content('新規投稿')
#       expect(page).to have_content('新規投稿')
#     end    
#     # end
#   # end
# end

require 'rails_helper'

RSpec.feature 'フォルダが表示機能' do
  background do
    # ユーザを作成する
    @user = User.create!(email: 'foo@example.com', password: '123456')
    @user.folders.create!(title: 'フォルダ')
  end
  scenario '@userが作成したフォルダが表示される' do
    # トップページを開く
    visit new_user_session_path
    expect(page).to have_content 'ログイン'
    # # ログインフォームにEmailとパスワードを入力する
    fill_in 'session_email', with: 'foo@example.com'
    fill_in 'session_password', with: '123456'
    # # ログインボタンをクリックする
    click_on 'ログイン'
    # # ログインに成功したことを検証する
    expect(page).to have_content 'ログインしました'
    expect(page).to have_content 'フォルダ'
  end
end
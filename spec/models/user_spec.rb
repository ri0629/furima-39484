require 'rails_helper'

RSpec.describe User, type: :model do
 describe 'ユーザー新規登録' do
  it 'nicknameが空では登録できない' do
    # nicknameが空では登路できないテストコードを記述します
    user = User.new(nickname: '', email: 'test@test', password: '111111aaa', password_confirmation: '111111aaa',last_name: '山田',first_name_kana: '陸')
    user.valid?
    expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
  it 'emailが空では登録できない' do
    user = User.new(nickname: 'furima', email: '', password: '111111aaa', password_confirmation: '111111aaa',last_name: '山田',first_name_kana: '陸')
    user.valid?
    #binding.pry
    expect(user.errors.full_messages).to include("Email can't be blank")
  end
  it 'last_name_kanaが空では登録できない' do
    user = User.new(nickname: 'furima', email: 'test@test', password: '111111aaa', password_confirmation: '111111aaa',last_name: '',first_name_kana: '陸')
    user.valid?
    #binding.pry
    expect(user.errors.full_messages).to include("Last name kana can't be blank")
  end
  it 'first_name_kanaが空では登録できない' do
    user = User.new(nickname: 'furima', email: 'test@test', password: '111111aaa', password_confirmation: '111111aaa',last_name: '', first_name_kana: '')
    user.valid?
    expect(user.errors.full_messages).to include("First name kana can't be blank")
  end
  it 'birthdayが空では登録できない' do
    user = User.new(nickname: 'furima', email: 'test@test', password: '111111aaa', password_confirmation: '111111aaa',last_name: '山田', first_name_kana: '陸', birthday:'')
    user.valid?
    expect(user.errors.full_messages).to include("Birthday can't be blank")
  end
end
end

  


  #pending "add some examples to (or delete) #{__FILE__}"
  

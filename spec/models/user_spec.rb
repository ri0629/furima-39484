require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  
  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
  it 'nicknameとemailとlast_nameとfirst_nameとlast_name_kanaとfirst_name_kanaとbirthdayが存在すれば登録できる' do
    expect(@user).to be_valid
   end
  end
  context '新規登録できないとき' do
  it 'nicknameが空では登録できない' do
     #nicknameが空では登路できないテストコードを記述します
    #@user = FactoryBot.build(:user)
    @user.nickname = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end
  it 'emailが空では登録できない' do
    #@user = FactoryBot.build(:user)
    @user.email = ''
    @user.valid?
    #binding.pry
    expect(@user.errors.full_messages).to include("Email can't be blank")
  end
  it 'last_nameが空では登録できない' do
    #@user = FactoryBot.build(:user)
    @user.last_name = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Last name can't be blank")
  end
  it 'first_nameが空では登録できない' do
    #@user = FactoryBot.build(:user)
    @user.first_name = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("First name can't be blank")
  end
  it 'last_name_kanaが空では登録できない' do
    #@user = FactoryBot.build(:user)
    @user.last_name_kana = ''
    @user.valid?
    #binding.pry
    expect(@user.errors.full_messages).to include("Last name kana can't be blank")
  end
  it 'first_name_kanaが空では登録できない' do
    #@user = FactoryBot.build(:user)
    @user.first_name_kana = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("First name kana can't be blank")
  end
  it 'birthdayが空では登録できない' do
    #@user = FactoryBot.build(:user)
    @user.birthday = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Birthday can't be blank")
  end
  it '重複したメールアドレスでは登録できない' do
    @user.save
    another_user = FactoryBot.build(:user)
    another_user.email = @user.email
    another_user.valid?
    expect(another_user.errors.full_messages).to include('Email has already been taken')
  end
  it 'メールアドレスに@を含まない場合は登録できない' do
   @user.email = 'testtest'
   @user.valid?
   expect(@user.errors.full_messages).to include('Email is invalid')
  end
  it 'パスワードが6文字未満では登録できない' do
    @user.password = '11111'
    @user.password_confirmation = '11111'
    @user.valid?
    expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
  end
  it '英字のみのパスワードでは登録できない' do
    @user.password = 'aaabbb'
    @user.password_confirmation = 'aaabbb'
    @user.valid?
    expect(@user.errors.full_messages).to include('Password is invalid')
  end
  it '数字のみのパスワードでは登録できない' do
    @user.password = '111333'
    @user.password_confirmation = '111333'
    @user.valid?
    expect(@user.errors.full_messages).to include('Password is invalid')
  end
  it '全角文字を含むパスワードでは登録できない' do
    @user.password = '11111１'
    @user.password_confirmation = '11111１'
    @user.valid?
    expect(@user.errors.full_messages).to include('Password is invalid')
  end
  it 'パスワードとパスワード（確認用）が不一致だと登録できない' do
    @user.password = '111111aaa'
    @user.password_confirmation = '111111bbb'
    @user.valid?
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end
  it '姓（全角）に半角文字が含まれていると登録できない' do
    @user.last_name = '山ﾀﾞ'
    @user.valid?
    expect(@user.errors.full_messages).to include("Last name is invalid")
  end

  it '名（全角）に半角文字が含まれていると登録できない' do
  @user.first_name = 'ﾘｸ'
  @user.valid?
  expect(@user.errors.full_messages).to include("First name is invalid")
  end
 it '姓（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
  @user.last_name_kana = 'ヤマだ'
  @user.valid?
  expect(@user.errors.full_messages).to include("Last name kana is invalid")
  end
 it '名（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
  @user.first_name_kana = 'りク'
  @user.valid? 
  expect(@user.errors.full_messages).to include("First name kana is invalid")
 end
end


end
end
  


  #pending "add some examples to (or delete) #{__FILE__}"
  

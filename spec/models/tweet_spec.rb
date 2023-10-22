require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @user = Factorybot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context 'ユーザー新規登録ができる場合' do
    end
    context 'ユーザー新規登録ができない場合' do
      it 'nicknameとemailとpasswordとlast_nameとfirst_nameとlast_name_kanaとfirst_name_kanaとbirthdayがないと登録できない' do
      end
 pending "add some examples to (or delete) #{__FILE__}"
end
end
end

require 'rails_helper'

describe Contact do
  # 名前とメールアドレスと内容があれば有効な状態であること
  it "is valid with name_email_content" do
    contact = Contact.new(name: "ryo", email: "abcd@gmail.com", content: "だよ！")
    expect(contact).to be_valid
  end

  # 名前とメールアドレスと内容がなければ無効であること
  it "is invalid without a name_email_content" do
    contact = Contact.new
    expect(contact).not_to be_valid
  end
end

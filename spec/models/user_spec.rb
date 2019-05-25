require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(kind: "user", email: "abc@test.com", password: '12345678')
  }
  it 'is not valid without kind' do
  	subject.kind = nil
  	expect(subject).to_not be_valid
  end
  it 'user is admin' do
    subject.kind = 'admin'
    expect(subject).to be_valid
  end
  it 'is not valid without email' do
  	subject.email = nil
  	expect(subject).to_not be_valid
  end
  it 'is not valid without password' do 
  	subject.password = nil
  	expect(subject).to_not be_valid
  end
  it 'is not valid if email is wrong' do
  	subject.email = 'abc'
  	expect(subject).to_not be_valid
  end
  it 'is not valid if password has at least 6 chars' do
  	subject.password = '123'
  	expect(subject).to_not be_valid
  end
  it 'is valid with all params' do
  	expect(subject).to be_valid
  end
end

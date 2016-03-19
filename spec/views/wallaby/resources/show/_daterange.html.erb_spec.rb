require 'rails_helper'

describe 'partial' do
  let(:partial)   { 'wallaby/resources/show/daterange.html.erb' }
  let(:value)     { Date.new(2014, 2, 11)..Date.new(2014, 2, 12) }
  let(:metadata)  { Hash.new }

  before { render partial, value: value, metadata: metadata }

  it 'renders the daterange' do
    expect(rendered).to eq "  <span class=\"from\">2014-02-11</span>\n  ...\n  <span class=\"to\">2014-02-12</span>\n"
  end

  context 'when value is nil' do
    let(:value) { nil }
    it 'renders null' do
      expect(rendered).to eq "  <i class=\"text-muted\">&lt;null&gt;</i>\n"
    end
  end
end

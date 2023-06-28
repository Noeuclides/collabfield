require 'rails_helper'

RSpec.describe NavigationHelper, type: :helper do
  let(:signed_in_path) { 'layouts/navigation/collapsible_elements/signed_in_links' }
  let(:non_signed_in_path) { 'layouts/navigation/collapsible_elements/non_signed_in_links' }

  describe '#links_partial_path' do
    context 'when user is signed in' do
      before(:each) do
        allow(helper).to receive(:user_signed_in?).and_return(true)
      end
      # before(:each) { allow(:user_signed_in?).and_return(true) }
      it 'returns signed_in_links partials path' do
        expect(helper.links_partial_path).to eq(signed_in_path)
      end
    end
  end

  describe '#links_partial_path' do
    context 'when user is not signed in' do
      before(:each) do
        allow(helper).to receive(:user_signed_in?).and_return(false)
      end
      it 'returns signed_in_links partials path' do
        expect(helper.links_partial_path).to eq(non_signed_in_path)
      end
    end
  end
end
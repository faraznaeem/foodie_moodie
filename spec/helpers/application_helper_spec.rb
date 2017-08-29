RSpec.describe ApplicationHelper do
  describe '#get_order_items_count' do
    context 'order is empty' do
      it 'returns 0' do
        expect(helper.get_order_items_count).to eq 0
      end
    end

    context 'order has items' do
      let!(:order) { create(:order) }
      let!(:category) { create(:dish_category)}
      let!(:product_1) { create(:dish) }
      let!(:product_2) { create(:dish) }

      before do
        order.add(product_1, 50, 1)
        order.add(product_2, 50, 1)
        session[:order_id] = order.id
      end

      it 'returns 2' do
        expect(helper.get_order_items_count).to eq 2
      end
    end
  end
end

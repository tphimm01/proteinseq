require 'test_helper'

class SamplesControllerTest < ActionController::TestCase
  setup do
    @sample = samples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample" do
    assert_difference('Sample.count') do
      post :create, sample: { amount: @sample.amount, blot: @sample.blot, buffer: @sample.buffer, concentration: @sample.concentration, enzyme: @sample.enzyme, estimated_amount: @sample.estimated_amount, how_estimated: @sample.how_estimated, label: @sample.label, name: @sample.name, order_id: @sample.order_id, pieces: @sample.pieces, preparation: @sample.preparation, special_instructions: @sample.special_instructions, volume: @sample.volume, weight: @sample.weight }
    end

    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should show sample" do
    get :show, id: @sample
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample
    assert_response :success
  end

  test "should update sample" do
    patch :update, id: @sample, sample: { amount: @sample.amount, blot: @sample.blot, buffer: @sample.buffer, concentration: @sample.concentration, enzyme: @sample.enzyme, estimated_amount: @sample.estimated_amount, how_estimated: @sample.how_estimated, label: @sample.label, name: @sample.name, order_id: @sample.order_id, pieces: @sample.pieces, preparation: @sample.preparation, special_instructions: @sample.special_instructions, volume: @sample.volume, weight: @sample.weight }
    assert_redirected_to sample_path(assigns(:sample))
  end

  test "should destroy sample" do
    assert_difference('Sample.count', -1) do
      delete :destroy, id: @sample
    end

    assert_redirected_to samples_path
  end
end

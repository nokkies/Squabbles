require 'test_helper'

class SquabblersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @squabbler = squabblers(:one)
  end

  test "should get index" do
    get squabblers_url
    assert_response :success
  end

  test "should get new" do
    get new_squabbler_url
    assert_response :success
  end

  test "should create squabbler" do
    assert_difference('Squabbler.count') do
      post squabblers_url, params: { squabbler: { age: @squabbler.age, alias: @squabbler.alias, country: @squabbler.country, facebook: @squabbler.facebook, fname: @squabbler.fname, gender: @squabbler.gender, judge: @squabbler.judge, lname: @squabbler.lname, sole_squabbler: @squabbler.sole_squabbler, team_squabbler: @squabbler.team_squabbler, twitter_handle: @squabbler.twitter_handle } }
    end

    assert_redirected_to squabbler_url(Squabbler.last)
  end

  test "should show squabbler" do
    get squabbler_url(@squabbler)
    assert_response :success
  end

  test "should get edit" do
    get edit_squabbler_url(@squabbler)
    assert_response :success
  end

  test "should update squabbler" do
    patch squabbler_url(@squabbler), params: { squabbler: { age: @squabbler.age, alias: @squabbler.alias, country: @squabbler.country, facebook: @squabbler.facebook, fname: @squabbler.fname, gender: @squabbler.gender, judge: @squabbler.judge, lname: @squabbler.lname, sole_squabbler: @squabbler.sole_squabbler, team_squabbler: @squabbler.team_squabbler, twitter_handle: @squabbler.twitter_handle } }
    assert_redirected_to squabbler_url(@squabbler)
  end

  test "should destroy squabbler" do
    assert_difference('Squabbler.count', -1) do
      delete squabbler_url(@squabbler)
    end

    assert_redirected_to squabblers_url
  end
end

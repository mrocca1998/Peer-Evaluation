require "application_system_test_case"

class PeerEvaluationsTest < ApplicationSystemTestCase
  setup do
    @peer_evaluation = peer_evaluations(:one)
  end

  test "visiting the index" do
    visit peer_evaluations_url
    assert_selector "h1", text: "Peer Evaluations"
  end

  test "creating a Peer evaluation" do
    visit peer_evaluations_url
    click_on "New Peer Evaluation"

    click_on "Create Peer evaluation"

    assert_text "Peer evaluation was successfully created"
    click_on "Back"
  end

  test "updating a Peer evaluation" do
    visit peer_evaluations_url
    click_on "Edit", match: :first

    click_on "Update Peer evaluation"

    assert_text "Peer evaluation was successfully updated"
    click_on "Back"
  end

  test "destroying a Peer evaluation" do
    visit peer_evaluations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peer evaluation was successfully destroyed"
  end
end

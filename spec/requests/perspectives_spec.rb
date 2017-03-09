require "rails_helper"

RSpec.describe "Perspective endpoints", type: :request do
  describe "Index endpoint" do
    it "returns perspective with associated story, texts, and comments" do
      perspective = create(:perspective)
      story = create(:story, perspective: perspective)
      story_text = create_list(:story_text, 2, story: story)

      get perspective_path(perspective)
      response = assigns(:perspective)
      p response.stories
    end

  end
end
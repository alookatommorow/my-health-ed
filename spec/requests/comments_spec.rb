require "rails_helper"

RSpec.describe "Comments endpoints", type: :request do
  describe "Create endpoint" do
    it "creates a comment" do
      story = create(:story)
      body = "This is a comment"

      post story_comments_path(story), params: {
        comment: { body: body, story_id: story.id }
      }

      created_comment = Comment.last

      expect(created_comment.body).to eq(body)
      expect(created_comment.story).to eq(story)
    end
  end
end
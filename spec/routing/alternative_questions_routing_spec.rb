require "rails_helper"

RSpec.describe AlternativeQuestionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/alternative_questions").to route_to("alternative_questions#index")
    end

    it "routes to #show" do
      expect(get: "/alternative_questions/1").to route_to("alternative_questions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/alternative_questions").to route_to("alternative_questions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/alternative_questions/1").to route_to("alternative_questions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/alternative_questions/1").to route_to("alternative_questions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/alternative_questions/1").to route_to("alternative_questions#destroy", id: "1")
    end
  end
end

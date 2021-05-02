require "rails_helper"

RSpec.describe DiscursiveQuestionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/discursive_questions").to route_to("discursive_questions#index")
    end

    it "routes to #show" do
      expect(get: "/discursive_questions/1").to route_to("discursive_questions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/discursive_questions").to route_to("discursive_questions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/discursive_questions/1").to route_to("discursive_questions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/discursive_questions/1").to route_to("discursive_questions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/discursive_questions/1").to route_to("discursive_questions#destroy", id: "1")
    end
  end
end

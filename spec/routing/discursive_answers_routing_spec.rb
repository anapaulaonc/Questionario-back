require "rails_helper"

RSpec.describe DiscursiveAnswersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/discursive_answers").to route_to("discursive_answers#index")
    end

    it "routes to #show" do
      expect(get: "/discursive_answers/1").to route_to("discursive_answers#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/discursive_answers").to route_to("discursive_answers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/discursive_answers/1").to route_to("discursive_answers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/discursive_answers/1").to route_to("discursive_answers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/discursive_answers/1").to route_to("discursive_answers#destroy", id: "1")
    end
  end
end

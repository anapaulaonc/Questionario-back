require "rails_helper"

RSpec.describe AlternativeAnswersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/alternative_answers").to route_to("alternative_answers#index")
    end

    it "routes to #show" do
      expect(get: "/alternative_answers/1").to route_to("alternative_answers#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/alternative_answers").to route_to("alternative_answers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/alternative_answers/1").to route_to("alternative_answers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/alternative_answers/1").to route_to("alternative_answers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/alternative_answers/1").to route_to("alternative_answers#destroy", id: "1")
    end
  end
end

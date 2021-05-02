require "rails_helper"

RSpec.describe BooleanQuestionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/boolean_questions").to route_to("boolean_questions#index")
    end

    it "routes to #show" do
      expect(get: "/boolean_questions/1").to route_to("boolean_questions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/boolean_questions").to route_to("boolean_questions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/boolean_questions/1").to route_to("boolean_questions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/boolean_questions/1").to route_to("boolean_questions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/boolean_questions/1").to route_to("boolean_questions#destroy", id: "1")
    end
  end
end

require "rails_helper"

RSpec.describe BooleanAnswersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/boolean_answers").to route_to("boolean_answers#index")
    end

    it "routes to #show" do
      expect(get: "/boolean_answers/1").to route_to("boolean_answers#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/boolean_answers").to route_to("boolean_answers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/boolean_answers/1").to route_to("boolean_answers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/boolean_answers/1").to route_to("boolean_answers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/boolean_answers/1").to route_to("boolean_answers#destroy", id: "1")
    end
  end
end

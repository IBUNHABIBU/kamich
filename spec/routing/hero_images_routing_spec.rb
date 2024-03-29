require "rails_helper"

RSpec.describe HeroImagesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/hero_images").to route_to("hero_images#index")
    end

    it "routes to #new" do
      expect(get: "/hero_images/new").to route_to("hero_images#new")
    end

    it "routes to #show" do
      expect(get: "/hero_images/1").to route_to("hero_images#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/hero_images/1/edit").to route_to("hero_images#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/hero_images").to route_to("hero_images#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/hero_images/1").to route_to("hero_images#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/hero_images/1").to route_to("hero_images#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/hero_images/1").to route_to("hero_images#destroy", id: "1")
    end
  end
end

require 'spec_helper'

describe Admin::VideosController do
  describe "GET new" do
    it_behaves_like "requires sign in" do
      let(:action) { get :new }
    end
    it_behaves_like "requires admin" do
      let(:action) { get :new }
    end

    it "sets the @video to a new video" do
      set_current_admin
      get :new
      expect(assigns(:video)).to be_instance_of Video
      expect(assigns(:video)).to be_new_record
    end

    it "sets the flash error message for the regular user" do
      set_current_user
      get :new
      expect(flash[:danger]).to be_present
    end
  end

  describe "POST create" do
    it_behaves_like "requires sign in" do
      let(:action) { post :create }
    end
    it_behaves_like "requires admin" do
      let(:action) { post :create }
    end

    context "with valid input" do
      it "redirects to the add new video page" do
        set_current_admin
        category = Fabricate(:category)
        post :create, video: { title: "Monk", category_id: category.id, descrption: "good show!" }
        expect(response).to redirect_to new_admin_video_path
      end

      it "creates a video" do
        set_current_admin
        category = Fabricate(:category)
        post :create, video: { title: "Monk", category_id: category.id, descrption: "good show!" }
        expect(category.videos.count).to eq(1)
      end

      it "sets the flash success message"
    end
    context "with invalid input" do
      it "does not create a video"
      it "render the :new template"
      it "sets the @video variable"
      it "sets the flash error message"
    end
  end
end
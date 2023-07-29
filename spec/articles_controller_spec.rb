require "spec_helper" 
describe ArticlesController  do 
    # # index
    context "create" do
        it "should create an Article" do
            post :create, params: {"title": "Break up","body": "sucks way too much!!"}
            # debugger
            expect(response.status).to eq(201)
        end
    end
end

# RSpec.describe UsersController do
#     describe "GET index" do
#       it "assigns @users" do
#         team = Team.create
#         get :index
#         expect(assigns(:teams)).to eq([team])
#       end
#        it "renders the index template" do
#         get :index
#         expect(response).to render_template("index")
#       end
#     end
#   end
 
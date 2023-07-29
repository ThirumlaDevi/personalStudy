require "spec_helper" 
describe ArticlesController, :type => :controller do
    # # index
    context "create" do
        it "should create an Article" do
            post :create, {"title": "Break up","body": "sucks way too much!!"}
            # debugger
            expect(response.status).to eq(201)
        end
    end
end
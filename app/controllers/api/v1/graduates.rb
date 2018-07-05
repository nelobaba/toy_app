module API  
    module V1
        class Graduates < Grape::API
            version 'v1'
            format :json
            include API::V1::Defaults
    
            resource :graduates do
                desc "Return all graduates"
                get do
                    Graduate.all
                end
        
                # desc "Return a graduate"
                # params do
                #     requires :name, type: String, desc: "Name of the graduate"
                # end
                # get ":name", root: "graduate" do
                #     Graduate.where(name: permitted_params[:name]).first!
                # end
            end
        end
    end
end  
  
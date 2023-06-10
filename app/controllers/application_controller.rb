class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    before do
      response.headers["Access-Control-Allow-Origin"]="*"
    end

    configure do
      set :allow_origin, 'http://localhost:3000'
      set :allow_methods, 'GET,HEAD,POST,PUT,DELETE,OPTIONS'
      set :allow_headers, 'Content-Type,Accept'
      set :allow_credentials, true
    end
  
    options '*' do
      response.headers['Access-Control-Allow-Origin'] = settings.allow_origin
      response.headers['Access-Control-Allow-Methods'] = settings.allow_methods
      response.headers['Access-Control-Allow-Headers'] = settings.allow_headers
      response.headers['Access-Control-Allow-Credentials'] = 'true'
      200
    end

    get '/project' do
  end

  get '/' do
    {hello:"Just starting a code"}.to_json
  end

  get '/clients' do
    Client.all.to_json
  end

  get '/services' do
    Service.all.to_json
  end

  get '/beauticians' do
    Beautician.all.to_json
  end

  # clients

  post '/clients' do
  client = Client.create(
    name: params[:name],
    email: params[:email],
    phone_number: params[:phone_number]
    )
    client.to_json
  end

  patch '/users/:id' do
    client = Client.find(params[:id])
    client.update(
      name: params[:name],
      email: params[:email],
      phone_number: params[:phone_number]
      )
      client.to_json
  end

  delete '/users/:id' do
    client = Client.find(params[:id])
    client.destroy
    client.to_json
  end

  # beauticians
  post '/beauticians' do
    beautician = Beautician.create(
      name: params[:name],
      )
      beautician.to_json
    end
  
    patch '/beauticians/:id' do
      beautician = Beautician.find(params[:id])
      beautician.update(
        name: params[:name],
        )
        beautician.to_json
    end
  
    delete '/beauticians/:id' do
      beautician = Beautician.find(params[:id])
      beautician.destroy
      beautician.to_json
    end

  # services
  post '/services' do
    service = Service.create(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      available_slots: params[:available_slots],
      price: params[:price]
      )
      service.to_json
    end
  
  patch '/services/:id' do
    service = Service.find(params[:id])
    service.update(
      name: params[:name],
      description: params[:description],
      image: params[:image],
      available_slots: params[:available_slots],
      price: params[:price]
      )
      service.to_json
    end
  
    delete '/services/:id' do
      service = Service.find(params[:id])
      service.destroy
      service.to_json
    end

    # Post appointmnets
    post '/appointments' do
      # Extract the data from the request body
      client_id = params[:client_id]
      service_id = params[:service_id]
      beautician_id = params[:beautician_id]
  
      # Process the data and store it in the appointments table
      # Replace this with your own implementation to save the appointment to your database
      # For example:
      appointment = Appointment.create(client_id: client_id, service_id: service_id, beautician_id: beautician_id)
  
      # Return a success message or appropriate response
      if appointment
        status 201
        { message: 'Appointment created successfully', appointment: appointment }.to_json
      else
        status 500
        { message: 'Failed to create appointment' }.to_json
      end
    end

    # patch '/appointments/:id' do
    #   appointment = Appointment.find(params[:id])
    #   appointment.update(
    #     client_id = params[:client_id]
    #     service_id = params[:service_id]
    #     beautician_id = params[:beautician_id]
    #     )
    #     appointment.to_json
    #   end
    
    #   delete '/appointments/:id' do
    #     appointment = Appointment.find(params[:id])
    #     appointment.destroy
    #     appointment.to_json
    #   end
  
  
    # ...
    end

  # patch '/services/:id' do
  #   services = Service.find(params[:id])
  #   service.update(
  #     name: params[:name],
  #     description: params[:description]
  #     image: params[:image],
  #     available_slots: params[:available_slots],
  #     price: params[:price],
  #   )
  #   services.to_json
  # end

  # delete '/services/:id' do
  #   service = Service.find(params[:id])
  #   service.destroy
  #   service.to_json
  # end
    
    # Add routes
    # get '/users' do 
    #   users = User.all
    #       users.to_json
    # end
    # post '/users' do
    #   user = User.create(
    #     username: params[:username],
    #     email: params[:email],
    #     password: params[:password]
    #   )
    #   user.to_json
    # end
    # patch '/users/:id' do
    #   user = User.find(params[:id])
    #   user.update(
    #     username: params[:username],
    #     email: params[:email],
    #     password: params[:password]
    #   )
    #   user.to_json
    # end
  
    # delete '/users/:id' do
    #   user = User.find(params[:id])
    #   user.destroy
    #   user.to_json
    # end
    # # Members
    # get '/project-members' do 
    #   members = ProjectMember.all
    #   members.to_json
    # end
    # post '/project-members' do
    #   member = Project-Member.create(
    #     name: params[:name],
    #     email: params[:email],
    #     user_id: params[:user.id],
    #     project_id: params[:project.id]
    #   )
    #   member.to_json
    # end
    # patch '/project-members/:id' do
    #   member = ProjectMember.find(params[:id])
    #   member.update(
    #     name: params[:name],
    #     email: params[:email],
    #     user_id: params[:user.id],
    #     project_id: params[:project.id]
    #   )
    #     member.to_json
      
    # end
  
    # delete '/project-members/:id' do
    #   member = ProjectMember.find(params[:id])
    #   member.destroy
    #   member.to_json
    # end
    # # Projects
    # get '/projects' do 
    #   projects = Project.all
    #   projects.to_json
    # end
    # post '/projects' do
    #   project = Project.create(
    #     name: params[:name],
    #     title: params[:title],
    #     description: params[:description]
    #   )
    #   project.to_json
    # end
    # patch '/projects/:id' do
    #   project = Project.find(params[:id])
    #   project.update(
    #     name: params[:name],
    #     title: params[:title],
    #     description: params[:description]
    #   )
    #   project.to_json
    # end
  
    # delete '/projects/:id' do
    #   project = Project.find(params[:id])
    #   project.destroy
    #   project.to_json
    # end

  
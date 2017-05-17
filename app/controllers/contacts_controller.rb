class ContactsController < ApplicationController
  
  def index

    if session[:count] == nil
      session[:count] = 0
    end

    session[:count] += 1
    @visit_count = session[:count]



    @contacts = Contact.all
  end

  def new

  end

  def create
    contact = Contact.new(
                          first_name: params[:first_name],
                          middle_name: params[:middle_name],
                          last_name: params[:last_name],
                          email: params[:email],
                          phone_number: params[:phone_number],
                          bio: params[:bio]
                          )
    contact.save
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])
    contact.assign_attributes(
                              first_name: params[:first_name],
                              middle_name: params[:middle_name],
                              last_name: params[:last_name],
                              email: params[:email],
                              phone_number: params[:phone_number],
                              bio: params[:bio]
                              )
    contact.save
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
  end

  def create
    user = User.new(
                    name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password'
      redirect_to '/signup'
    end
  end
  
end

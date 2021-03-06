require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CartaController do

  # This should return the minimal set of attributes required to create a valid
  # Cartum. As you add validations to Cartum, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CartaController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all carta as @carta" do
      cartum = Cartum.create! valid_attributes
      get :index, {}, valid_session
      assigns(:carta).should eq([cartum])
    end
  end

  describe "GET show" do
    it "assigns the requested cartum as @cartum" do
      cartum = Cartum.create! valid_attributes
      get :show, {:id => cartum.to_param}, valid_session
      assigns(:cartum).should eq(cartum)
    end
  end

  describe "GET new" do
    it "assigns a new cartum as @cartum" do
      get :new, {}, valid_session
      assigns(:cartum).should be_a_new(Cartum)
    end
  end

  describe "GET edit" do
    it "assigns the requested cartum as @cartum" do
      cartum = Cartum.create! valid_attributes
      get :edit, {:id => cartum.to_param}, valid_session
      assigns(:cartum).should eq(cartum)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Cartum" do
        expect {
          post :create, {:cartum => valid_attributes}, valid_session
        }.to change(Cartum, :count).by(1)
      end

      it "assigns a newly created cartum as @cartum" do
        post :create, {:cartum => valid_attributes}, valid_session
        assigns(:cartum).should be_a(Cartum)
        assigns(:cartum).should be_persisted
      end

      it "redirects to the created cartum" do
        post :create, {:cartum => valid_attributes}, valid_session
        response.should redirect_to(Cartum.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved cartum as @cartum" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cartum.any_instance.stub(:save).and_return(false)
        post :create, {:cartum => {}}, valid_session
        assigns(:cartum).should be_a_new(Cartum)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Cartum.any_instance.stub(:save).and_return(false)
        post :create, {:cartum => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested cartum" do
        cartum = Cartum.create! valid_attributes
        # Assuming there are no other carta in the database, this
        # specifies that the Cartum created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Cartum.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => cartum.to_param, :cartum => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested cartum as @cartum" do
        cartum = Cartum.create! valid_attributes
        put :update, {:id => cartum.to_param, :cartum => valid_attributes}, valid_session
        assigns(:cartum).should eq(cartum)
      end

      it "redirects to the cartum" do
        cartum = Cartum.create! valid_attributes
        put :update, {:id => cartum.to_param, :cartum => valid_attributes}, valid_session
        response.should redirect_to(cartum)
      end
    end

    describe "with invalid params" do
      it "assigns the cartum as @cartum" do
        cartum = Cartum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cartum.any_instance.stub(:save).and_return(false)
        put :update, {:id => cartum.to_param, :cartum => {}}, valid_session
        assigns(:cartum).should eq(cartum)
      end

      it "re-renders the 'edit' template" do
        cartum = Cartum.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Cartum.any_instance.stub(:save).and_return(false)
        put :update, {:id => cartum.to_param, :cartum => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested cartum" do
      cartum = Cartum.create! valid_attributes
      expect {
        delete :destroy, {:id => cartum.to_param}, valid_session
      }.to change(Cartum, :count).by(-1)
    end

    it "redirects to the carta list" do
      cartum = Cartum.create! valid_attributes
      delete :destroy, {:id => cartum.to_param}, valid_session
      response.should redirect_to(carta_url)
    end
  end

end

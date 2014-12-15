class RsvpsController < ApplicationController
  before_action :set_rsvp, only: [:show, :edit, :update, :destroy]
   def create
    @rsvp = current_user.rsvps.build(rsvp_params)

    respond_to do |format|
      if @rsvp.save
        format.html { redirect_to @rsvp, notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @rsvp }
      else
        format.html { render :new }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end
   def update
    respond_to do |format|
      if @rsvp.update(rsvp_params)
        format.html { redirect_to @rsvp, notice: 'Rsvp was successfully updated.' }
        format.json { render :show, status: :ok, location: @rsvp }
      else
        format.html { render :edit }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end
  def index
    @rsvp = Rsvp.all
  end
  def new
    @rsvp = Rsvp.new
  end
  def set_rsvp
    @rsvp = Rsvp.find(params[:id])
      ownership_check!(@rsvp)
    end
  def yes
    @rsvp = execute('update rsvp set going = true where party_id = #{:party_id} and user = #{this.user_id}')
    end
  def no
    @rsvp = execute('update rsvp set going = false where party_id = #{:party_id} and user =  #{this.user_id} ')
end

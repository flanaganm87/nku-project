class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :is_admin, only: 'edit' 

  # GET /groups
  def index
    @groups = Group.all
  end

  # GET /groups/1
  def show
    @messages = Message.all
    @comments = Comment.where(:group_id => params[:id])
    @comment = Comment.new
  end

  # GET /groups/new
  def new
    @group = Group.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  def create
    @group = Group.new(group_params)
    @group.adminEmail = current_user.email
    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /groups/1
  def update
    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /groups/1
  def destroy
    @group.destroy
    redirect_to groups_url, notice: 'Group was successfully destroyed.'
  end
  
  def join
    current_user.groups_id.push(params[:id])
    current_user.save
    redirect_to group_path, notice: 'Welcome to the Group Now start Collaborating!'    
  end
  
  def is_admin
    if current_user.email != @group.adminEmail
        redirect_to root_path, notice: "You are not Authorized to do that!"
    end
  end
  
  def comment
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to group_path(params[:comment][:group_id])
  end
  private
    def set_group
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:name, :code)
    end
  
    def comment_params
      params.require(:comment).permit!
    end
end

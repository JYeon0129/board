class ProjectController < ApplicationController
    def project
        @project = Project.all
    end
    
    def profile
        @profile = Profile.all
    end
    
    def add_profile
        profile = Profile.new
        profile.user_id = params[:user_id]
        profile.name = params[:name]
        profile.save!
        redirect_to "/project/profile"
    end
    
    def comment_write
        comment = Comment.new
        comment.user_id = params[:user_id]
        comment.profile_id = params[:profile_id]
        comment.contents = params[:contents]
        if params[:comment_id]
            comment.comment_id = params[:comment_id]
        end
        comment.save!
        redirect_to "/project/profile"
    end
    
end

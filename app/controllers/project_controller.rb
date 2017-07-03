class ProjectController < ApplicationController
    def profile
        @profile = Profile.all
    end
    
    def project
        @project = Project.all
    end
    
    def create_profile
         profile = Profile.new
        profile.user_id = params[:user_id]
        profile.name = params[:name]
        profile.save!
        redirect_to "/project/profile"
    end
    
    def real_create_project
        project = Project.new
        project.user_id = params[:user_id]
        project.title = params[:title]
        project.contents = params[:contents]
        project.save!
        redirect_to "/project/project"
    end
    
    def create_comment
        comment = Comment.new
        comment.user_id = params[:user_id]
        comment.commentable_type = params[:commentable_type]
        comment.commentable_id = params[:commentable_id].to_i
        comment.contents = params[:contents]
        comment.save!
        if params[:commentable_type] == "Project"
            redirect_to "/project/project"
        else
            redirect_to "/project/profile"
        end
    end
end

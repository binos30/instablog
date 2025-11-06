class PublishPostsJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Post.draft.find_each do |post|
      post.published!
    end
  end
end

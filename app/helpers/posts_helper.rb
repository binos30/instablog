module PostsHelper
  def status_badge(post)
    status        = post.status.to_s
    base_classes  = "inline-flex items-center rounded-full px-2 py-1 text-xs font-medium ring-1 ring-inset"
    color_classes =
      case status
      when "draft"
        "bg-blue-50 text-blue-700 ring-blue-600/20"
      when "published"
        "bg-green-50 text-green-700 ring-green-600/20"
      when "archived"
        "bg-yellow-50 text-yellow-700 ring-yellow-600/20"
      else
        # fallback
        "bg-gray-50 text-gray-700 ring-gray-600/20"
      end

    tag.span status.titleize, class: "#{base_classes} #{color_classes}"
  end
end

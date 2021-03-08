module MediaHelper
  def media_link(object)
    media_link_generator(object)
  end

  private

  def media_link_generator(object)
    case object.content_type
    when 'Video'
      link_to '<i class="fas fa-video fa-lg"></i>'.html_safe, cloudinary_url(object.media.key, resource_type: :video), target: :_blank, class: "link-styling"
    when 'Image'
      link_to '<i class="far fa-image fa-lg"></i>'.html_safe, cloudinary_url(object.media.key, resource_type: :image), target: :_blank, class: "link-styling"
    when 'PDF'
      link_to '<i class="far fa-file-pdf fa-lg"></i>'.html_safe, cloudinary_url(object.media.key, resource_type: :image), target: :_blank, class: "link-styling"
    end
  end
end

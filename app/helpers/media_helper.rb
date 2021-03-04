module MediaHelper
  def media_link(object)
    media_link_generator(object)
  end

  private

  def media_link_generator(object)
    case object.content_type
    when 'Video'
      link_to 'View file', cloudinary_url(object.media.key, resource_type: :video), target: :_blank
    when 'Image', 'PDF'
      link_to 'View file', cloudinary_url(object.media.key, resource_type: :image), target: :_blank
    end
  end
end

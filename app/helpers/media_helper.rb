module MediaHelper
  def media_link(object)
    media_link_generator(object)
  end

  def media_icon(object)
    icons = {
      'Video': '<i class="fas fa-video fa-lg"></i>',
      'Image': '<i class="far fa-image fa-lg"></i>',
      'PDF': '<i class="far fa-file-pdf fa-lg"></i>',
      'no-file': '<i class="fas fa-question"></i>'
    }
    if object.content_type.nil?
      return icons['no-file'.to_sym].html_safe
    else
      return icons[object.content_type.to_sym].html_safe
    end
  end

  def media_link_content(object)
    case object.content_type
    when 'Video'
      link_to 'View content', cloudinary_url(object.media.key, resource_type: :video),
              target: :_blank, class: "btn-view-content"
    when 'Image', 'PDF'
      link_to 'View content', cloudinary_url(object.media.key, resource_type: :image),
              target: :_blank, class: "btn-view-content"
    end
  end

  private

  def media_link_generator(object)
    case object.content_type
    when 'Video'
      link_to '<i class="fas fa-video fa-lg"></i>'.html_safe, cloudinary_url(object.media.key, resource_type: :video),
              target: :_blank, class: "link-styling"
    when 'Image'
      link_to '<i class="far fa-image fa-lg"></i>'.html_safe, cloudinary_url(object.media.key, resource_type: :image),
              target: :_blank, class: "link-styling"
    when 'PDF'
      link_to '<i class="far fa-file-pdf fa-lg"></i>'.html_safe,
              cloudinary_url(object.media.key, resource_type: :image), target: :_blank, class: "link-styling"
    end
  end
end


class Video
  include Mongoid::Document

  # field :video , type: String
  field :mimes , type: Array
  field :minduration , type: Integer
  field :maxduration , type: Integer
  field :video_protocol , type: Integer # deprecated
  field :video_protocols , type: Array
  field :video_width , type: Integer
  field :video_height , type: Integer
  field :startdelay , type: Integer

  field :linearity , type: Integer
  field :sequence, type: Integer
  field :battr, type: Array
  field :maxextended, type: Integer
  field :minbitrate, type: Integer
  field :maxbitrate, type: Integer

  field :boxingallowed, type: Integer, default: 1
  field :playbackmethod, type: Array
  field :delivery , type: Array
  field :pos, type: Integer

  field :companionad , type: Array
  field :companiontype , type: Array
  field :api , type: String
  field :ext , type: String

  belongs_to :impression
  embedded_in :impression

end
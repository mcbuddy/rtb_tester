
class Banner
  include Mongoid::Document

  field :width, type: Integer
  field :height, type: Integer
  field :wmax, type: Integer
  field :hmax, type: Integer
  field :wmin, type: Integer
  field :hmin, type: Integer
  field :id, type: String
  field :btype, type: Array
  field :battr, type: Array
  field :pos, type: Integer
  field :mimes, type: Array
  field :topframe, type: Integer
  field :expdir, type: Array
  field :api, type: Array
  field :ext, type: Hash

  belongs_to :impression
  embedded_in :impression

end

class Request
  include Mongoid::Document
  include Mongoid::Timestamps

  field :end_point , type: String
  field :rtb_version , type: String #(2.2, 2.3, 2.4)
  field :content_type , type: String #(json,xml,protbuf)
  field :exchange , type: String #(spotx, adx,etc)


end

class Builder
  include Mongoid::Document
  include Mongoid::Timestamps

  field :end_point , type: String
  field :rtb_version , type: String
  field :content_type , type: String
  field :exchange , type: String 

  field :req_id , type: String
  field :test, type: Integer, default: 0
  field :at, type: Interrupt, default: 2
  field :tmax, type: Integer
  field :wseat, type: Array
  field :allimp, type: Integer, default: 0
  field :cur, type: Array
  field :bcat, type: Array
  field :badv, type: Array

  field :impression, type: Hash
  field :site, type: Hash
  field :app, type: Hash
  field :device, type: Hash
  field :user, type: Hash
  field :regs, type: Hash
  field :ext, type: Hash

end
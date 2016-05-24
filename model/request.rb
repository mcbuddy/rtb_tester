
class Request
  include Mongoid::Document
  include Mongoid::Timestamps

  field :end_point , type: String
  field :rtb_version , type: String #(2.2, 2.3, 2.4)
  field :content_type , type: String #(json,xml,protbuf)
  field :exchange , type: String #(spotx, adx,etc)

  field :req_id , type: String
  field :test, type: Integer, default: 0
  field :at, type: Interrupt, default: 2
  field :tmax, type: Integer
  field :wseat, type: Array
  field :allimp, type: Integer, default: 0
  field :cur, type: Array
  field :bcat, type: Array
  field :badv, type: Array

  embeds_one :impression
  embeds_one :site
  embeds_one :app
  embeds_one :device
  embeds_one :user
  embeds_one :regs
  embeds_one :ext


  # before_save :set_imp


  def set_imp
    Impression.create
  end




end
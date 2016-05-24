
class Impression
  include Mongoid::Document

  field :id, type: String
  field :type, type: String
  field :displaymanager , type: String
  field :displaymanagerver , type: String
  field :instl, type: Integer, default: 0
  field :tagid , type: String
  field :bidfloor , type: Float, default: 0
  field :bidfloorcur , type: String, default: 'USD'

  field :secure , type: Integer
  field :iframebuster , type: Array

  field :pmp, type: Hash
  field :ext, type: Hash

  belongs_to :request
  embedded_in :request

  embeds_one :banner
  embeds_one :video
  embeds_one :native

  # before_save :choose_ad

  def choose_ad
    Video.create
  end


end
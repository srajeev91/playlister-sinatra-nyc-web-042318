class SongGenre < ActiveRecord::Base
  belongs_to :song
  belongs_to :genre

  include InstanceMethod
  extend ClassMethod
end

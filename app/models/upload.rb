class Upload < ApplicationRecord
  require 'csv'

  def self.import_user_csv(filename)
    CSV.foreach(filename.path, headers: true) do |row|
      new_user = row.to_hash
      user = Upload.find_or_initialize_by(first_name: new_user["first_name"])
      if user.do_not_update != 1
        user.last_name = new_user["last_name"]
        user.email = new_user["email"]
        user.do_not_update = 0
        user.save
      end
    end
  end
end

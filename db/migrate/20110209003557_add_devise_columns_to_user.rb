class AddDeviseColumnsToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
#if you already have a email column comment the below line
#      t.database_authenticatable
      t.confirmable
      t.recoverable
      t.rememberable
      t.trackable

      add_column :users, :encrypted_password, :string, :limit => 128
    end
  end

  def self.down
#the columns below are manually extracted from https://github.com/plataformatec/devise/blob/master/lib/devise/schema.rb
#which means that if some of the devise methods executed in the above self.up method are changed this will break
    remove_column :users, :encrypted_password
    remove_column :users, :password_salt
    remove_column :users, :authentication_token
    remove_column :users, :confirmation_token
    remove_column :users, :confirmed_at
    remove_column :users, :confirmation_sent_at
    remove_column :users, :reset_password_token
    remove_column :users, :remember_token
    remove_column :users, :remember_created_at
    remove_column :users, :sign_in_count
    remove_column :users, :current_sign_in_at
    remove_column :users, :last_sign_in_at
    remove_column :users, :current_sign_in_ip
    remove_column :users, :last_sign_in_ip
    remove_column :users, :failed_attempts
    remove_column :users, :unlock_token
    remove_column :users, :locked_at
  end
end


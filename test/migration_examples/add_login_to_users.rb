# -*- coding: utf-8 -*-
class AddLoginToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login,  :string   # 登陆名
    add_column :users, :gender, :intger   # 性别 0 女 1 男
  end
end
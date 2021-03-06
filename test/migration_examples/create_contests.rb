# -*- coding: utf-8 -*-
class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string     :sn
      t.string     :title
      t.text       :description
      t.integer    :itype, default: 0, null: false  # 比赛形式, 0 photo, 1 video, 2 word, 3 audio, 4 组合
      t.integer    :mode, default: 0, null: false   # 是否可加入比赛, 0 pk, 1 调查, 2 多选
      t.integer    :format, default: 0, null: false # 比赛方式, 1 pk, 0 binary(传统比赛)
      t.date       :start_day                       # 比赛开始日期
      t.integer    :length                          # 比赛时长以天为单位
      t.integer    :vote_right                      # 投票权, 0 public, 1 friends only, 2 specific
      t.integer    :contestant_right                # 参赛权, 0 public, 1 friedns only, 2 specific
      t.string     :logo                            # 比赛logo,图片
      t.integer    :prize_status, default: 0        # 是否开放赞助, 0 open to others, 1 do it myself 2 none
      t.integer    :user_id                         # 创建者id
      t.string     :user_sn                         # 创建者sn
      t.integer    :kind, default: ''               # 0 用户发起的比赛，1 赞助商比赛
      t.integer    :view_count, default: 0          # 浏览次数
      t.integer    :join_count, default: 0          # 参赛人数

      t.timestamps
    end
  end
end

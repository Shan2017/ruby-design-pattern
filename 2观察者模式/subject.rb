require 'observer'

class Subject
  include Observable

  attr_reader :name

  def name=(new_name)
    @name = new_name

    # 这个changed方法会在对象中设立一个布尔标记，指明对象已经被更改
    # 如果这个修改标记没有被设置为true的话，notify_observers实际上不会发送任何更新通知
    # 每一次notify_observers被调用之后都会讲该标记设为false
    changed

    notify_observers @name
  end
end

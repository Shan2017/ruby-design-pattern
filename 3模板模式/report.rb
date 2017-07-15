class Report
  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well']
  end

  # 模板方法
  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  def output_body
    @text.each do |line|
      output_line(line)
    end
  end

  def raise_error(str)
    raise "Called abstract method: #{str}"
  end

  def output_start; end

  # 钩子方法，基本方法：在子类实现，在模板方法里面调用
  def ouput_head
    raise_error 'ouput_head'
  end

  def output_body_start; end

  # 钩子方法，基本方法：在子类实现，在模板方法里面调用
  def output_line(line)
    raise_error 'output_line'
  end

  def output_body_end; end

  def output_end; end
end

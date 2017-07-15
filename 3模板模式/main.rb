require_relative 'html_report'
require_relative 'plaintext_report'

report = HTMLReport.new
report.output_report

report = PlaintextReport.new
report.output_report

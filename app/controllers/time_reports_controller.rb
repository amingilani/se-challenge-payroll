class TimeReportsController < ApplicationController
  def create
    file = params[:time_report][:file]
    report = TimeReport.new(file: file)
    return redirect_to root_path, notice: 'Time report successfully saved.' if report.save

    redirect_to root_path, alert: report.errors.messages.values.join(' ')
  end
end

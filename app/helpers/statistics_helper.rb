module StatisticsHelper
  def intress_by_years
    column_chart @item.group(:duration).count, height: '500px', library: {
      title: {text: 'Revenue depending on duration', x: -20},
      yAxis: {
         title: {
             text: 'Revenue'
         }
      },
      xAxis: {
         title: {
             text: 'Years'
         }
      }
    }
  end
end
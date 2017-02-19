
def intress_by_years
  result = {}
  Item.all.map do |c|
    result[c.name] = c.item #smf wrong here
  end
  render json: [{name: 'Count', data: result}]
end
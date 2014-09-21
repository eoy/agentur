class PeopleController < InheritedResources::Base
  def index
    @q = Person.search(params[:q])
    @people = @q.result(distinct: true)
  end
end

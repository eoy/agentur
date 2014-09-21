class PeopleController < InheritedResources::Base
  def index
    @q = Person.search(params[:q])
    @people = @q.result(distinct: true)
  end

  def show
    @q = Person.search(params[:q])
    super
  end

  private

  def permitted_params
    params.permit(:person => [:name, :weight, :description, :age, :phone, :email])
  end
end

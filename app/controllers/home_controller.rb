class HomeController < ApplicationController
  
  def index
  end
  
  def booth
    @all_jujeom = Jujeom.all
    @popular = @all_jujeom.order(like: :desc).first(8)
    @jujeom_25 = Jujeom.where("day==25")
    @unit_jujeom = Jujeom.where("day==25").select(:unit).uniq
     end
  def booth2
    @jujeom_26 = Jujeom.where("day==26")
    @unit_jujeom_26 = Jujeom.where("day==26").select(:unit).uniq
 
  end
  
  def dbupload
  end
  
  def jujeomsave
    Jujeom.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
  end
  
  def jujeomlike
    jujeom = Jujeom.find(params[:id])
    jujeom.like += 1
    jujeom.save
    
    redirect_to '/home/booth'
  end
  
  
  def backsave
    Back.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
  end
  def partner
  end
  
  
  def ourevent
  end
 
  def event
    @all_back = Back.all
    @back_25 = Back.where("day==25")
    @unit_back_25 = Back.where("day==25").select(:unit).uniq
  end
  def event2
    @unit_back_26 = Back.where("day==26").select(:unit).uniq
    @back_26 = Back.where("day==26")

  end
  def performance
  end
  
  def csv
  end
  
  def importpub
  end
  
  def importperform
  end

  def example
  end
end

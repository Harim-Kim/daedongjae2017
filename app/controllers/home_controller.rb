class HomeController < ApplicationController
  
  def index
  end
  
  def booth
    @all_jujeom = Jujeom.all
    @unit_jujeom = Jujeom.where("day==25").select(:unit).uniq
  end
  
  def dbupload
  end
  
  def jujeomsave
    Jujeom.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
  end
  
  def partner
  end
  
  
  def ourevent
  end
 
  def event
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

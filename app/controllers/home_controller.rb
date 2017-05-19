class HomeController < ApplicationController
  
  def index
  end
  
  def booth
  end
  
  def dbupload
  end
  
  def jujeomsave
    Jujeom.import(params[:csv_file])
    redirect_to '/home/dbupload', notice: "완료!"
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

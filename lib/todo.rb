class TodoManager
  def initialize
    @task_list = []
  end

  def add_tasks(*tasks)
    tasks.each { |task| @task_list << task } #why does this work without self?
  end

  def remove_tasks(*tasks)
    tasks.each do |task|
      @task_list -= [task] if @task_list.include?(task)
    end
  end

  def print
    puts @task_list
  end
end

list = TodoManager.new
list.add("Cook food", "Clean", "Grocery Shop")
list.print
puts " "
list.remove
list.print
 

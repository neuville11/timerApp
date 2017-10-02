json.id @task.id
json.name @task.name
json.user User.find(@task.user_id).name
json.status @task.status
json.total_time @task.total_time

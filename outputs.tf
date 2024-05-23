output "codecommit_repository_clone_url_http" {
  description = "The HTTP clone URL of the CodeCommit repository"
  value       = aws_codecommit_repository.example.clone_url_http
}


output "codepipeline_role_arn" {
  description = "The ARN of the CodePipeline role"
  value       = aws_iam_role.codepipeline_role.arn
}



output "codebuild_service_role_arn" {
  description = "The ARN of the CodeBuild service role"
  value       = aws_iam_role.codebuild_service_role.arn
}



output "ecs_task_definition_arn" {
  description = "The ARN of the ECS task definition"
  value       = aws_ecs_task_definition.example.arn
}


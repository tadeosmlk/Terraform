resource "aws_kms_key" "backups_kms_key" {
  description = "AWS Backups"
}

resource "aws_backup_vault" "backups" {
  name        = "Backup_vault"
  kms_key_arn = aws_kms_key.backups_kms_key.arn
}

resource "aws_backup_plan" "backups_plan_15" {
  name = "15_Day_Backup_Plan"
  rule {
    rule_name         = "Backup_15day"
    target_vault_name = aws_backup_vault.backups.name
    schedule          = "cron(0 7 * * ? *)"
    lifecycle {
      delete_after = 15
    }
  }
}

resource "aws_backup_plan" "backups_plan_30" {
  name = "30_Day_Backup_Plan"
  rule {
    rule_name         = "Backup_30day"
    target_vault_name = aws_backup_vault.backups.name
    schedule          = "cron(0 7 * * ? *)"
    lifecycle {
      delete_after = 30
    }
  }
}


variable "backups_iam_policy_arn" {
  default = "arn:aws-us-gov:iam::413706077371:role/aws-native-backup"
}

resource "aws_backup_selection" "backup_selection_15" {
  iam_role_arn = var.backups_iam_policy_arn
  name         = "15_Day_Backups_Selection"
  plan_id      = aws_backup_plan.backups_plan_15.id

  selection_tag {
    type  = "STRINGEQUALS"
    key   = "Backup Retention"
    value = "15"
  }
}

resource "aws_backup_selection" "backup_selection_30" {
  iam_role_arn = var.backups_iam_policy_arn
  name         = "30_Day_Backups_Selection"
  plan_id      = aws_backup_plan.backups_plan_30.id

  selection_tag {
    type  = "STRINGEQUALS"
    key   = "Backup Retention"
    value = "30"
  }
}


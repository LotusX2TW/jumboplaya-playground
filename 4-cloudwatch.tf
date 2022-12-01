# Cloud Watch Alarm to trigger the above scaling policy when CPU Utilization is above 80%
resource "aws_cloudwatch_metric_alarm" "my_asg_cwa_desired" {
  alarm_name          = "My-Asg-Cwa-Desired"
  alarm_description = "This metric monitors ASG desired capacity"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "GroupDesiredCapacity"
  namespace           = "AWS/AutoScaling"
  period              = "3600"
  statistic           = "Maximum"
  threshold           = "2"

  dimensions = {
    AutoScalingGroupName = "my-asg"
  }


  
  ok_actions          = ["arn:aws:sns:us-east-1:560551485332:my-cw-topic"]  
  alarm_actions     = ["arn:aws:sns:us-east-1:560551485332:my-cw-topic"]
}
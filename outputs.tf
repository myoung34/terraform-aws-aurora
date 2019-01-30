// The 'writer' endpoint for the cluster
output "cluster_endpoint" {
  value = "${aws_rds_cluster.default.endpoint}"
}

// Comma separated list of all DB instance endpoints running in cluster
output "all_instance_endpoints_list" {
  value = ["${aws_rds_cluster_instance.cluster_instance_0.endpoint}", "${aws_rds_cluster_instance.cluster_instance_n.*.endpoint}"]
}

// A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas
output "reader_endpoint" {
  value = "${aws_rds_cluster.default.reader_endpoint}"
}

output "id" {
  value = "${aws_rds_cluster.default.id}"
}

output "cluster_identifier" {
  value = "${aws_rds_cluster.default.cluster_identifier}"
}

output "cluster_resource_id" {
  value = "${aws_rds_cluster.default.cluster_resource_id}"
}

output "cluster_instance_arns" {
  value = ["${aws_rds_cluster_instance.cluster_instance_0.arn}", "${aws_rds_cluster_instance.cluster_instance_n.*.arn}"]
}

output "cluster_instance_identifiers" {
  value = ["${aws_rds_cluster_instance.cluster_instance_0.identifier}", "${aws_rds_cluster_instance.cluster_instance_n.*.identifier}"]
}


output "cluster_arn" {
  value = "${aws_rds_cluster.default.arn}"
}

output "cluster_cluster_resource_id" {
  value = "${aws_rds_cluster.default.cluster_resource_id}"
}

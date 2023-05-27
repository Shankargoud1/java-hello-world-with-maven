
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0354356767e933744","subnet-064f95904b0ea36e5","subnet-0b8b73cce5e5cc738"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "myeksnode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0354356767e933744","subnet-064f95904b0ea36e5","subnet-0b8b73cce5e5cc738"]

        tags = {
             "Name" =  "node1"
         } 
  }
}

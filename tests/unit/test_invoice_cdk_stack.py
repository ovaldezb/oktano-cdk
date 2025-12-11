import aws_cdk as core
import aws_cdk.assertions as assertions

from oktano_cdk.oktano_cdk_stack import OktanoCdkStack

# example tests. To run these tests, uncomment this file along with the example
# resource in oktano_cdk/oktano_cdk_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = OktanoCdkStack(app, "oktano-cdk")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })

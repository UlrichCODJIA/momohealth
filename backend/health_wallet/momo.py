import base64
import datetime
import json
import logging
import os
import uuid
import requests


class MomoPaymentClient:
    """
    A client for interacting with the Momo API for payments.
    """

    def __init__(self):
        self.base_url = os.getenv("BASE_URL")
        self.api_user = os.getenv("API_USER")
        self.api_key = os.getenv("API_KEY")
        self.x_target_environment = os.getenv("X_TARGET_ENVIRONMENT")
        self.subscription_key = os.getenv("SUBSCRIPTION_KEY")
        self.currency = os.getenv("CURRENCY")
        self.access_token = None
        self.access_token_expires_in = None
        self.access_token_created_at = None

    @classmethod
    def create_sandbox_user(
        cls,
        subscription_key: str,
        host: str = "",
        base_url: str = "https://sandbox.momodeveloper.mtn.com",
    ):
        """
        Creates a sandbox user.
        """
        x_reference_id = str(uuid.uuid4())
        try:
            url = f"{base_url}/v1_0/apiuser"
            headers = {
                "X-Reference-Id": x_reference_id,
                "Content-Type": "application/json",
                "Cache-Control": "no-cache",
                "Ocp-Apim-Subscription-Key": subscription_key,
            }
            data = json.dumps({"providerCallbackHost": host})
            response = requests.post(url, headers=headers, data=data)
            return x_reference_id if response.status_code == 201 else None
        except requests.RequestException as e:
            logging.error(f"Error creating sandbox user: {e}")
            return None

    @classmethod
    def create_api_key(
        cls,
        api_user: str,
        subscription_key: str,
        base_url: str = "https://sandbox.momodeveloper.mtn.com",
    ):
        """
        Creates an API key for the user.
        """
        try:
            url = f"{base_url}/v1_0/apiuser/{api_user}/apikey"
            headers = {
                "Cache-Control": "no-cache",
                "Ocp-Apim-Subscription-Key": subscription_key,
            }
            response = requests.post(url, headers=headers)
            if response.status_code == 201:
                return response.json()["apiKey"]
            else:
                logging.error(f"Failed to create API key: {response.text}")
                return None
        except requests.RequestException as e:
            logging.error(f"Error creating API key: {e}")
            return None

    def create_access_token(self, api_user: str = None, api_key: str = None):
        """
        Creates an access token for API authentication.
        """

        if api_user is None:
            api_user = self.api_user
        if api_key is None:
            api_key = self.api_key

        encoded_credentials = base64.b64encode(
            f"{api_user}:{api_key}".encode()
        ).decode()
        try:
            url = f"{self.base_url}/collection/token/"
            headers = {
                "Authorization": f"Basic {encoded_credentials}",
                "Cache-Control": "no-cache",
                "Ocp-Apim-Subscription-Key": self.subscription_key,
            }
            response = requests.post(url, headers=headers)
            if response.status_code == 200:
                response_data = response.json()
                self.access_token_created_at = datetime.datetime.now()
                self.access_token = response_data["access_token"]
                self.access_token_expires_in = response_data["expires_in"]
            else:
                logging.error(f"Failed to create access token: {response.text}")
        except requests.RequestException as e:
            logging.error(f"Error creating access token: {e}")

    def request_to_pay(
        self, amount: str, phone_number: str, api_user: str = None, api_key: str = None
    ):
        """
        Initiates a request to pay to a specified phone number.
        """
        x_reference_id = str(uuid.uuid4())
        external_id = str(uuid.uuid4())
        if not self.access_token:
            self.create_access_token(api_user, api_key)
        elif (
            self.access_token_created_at
            + datetime.timedelta(seconds=self.access_token_expires_in - 300)
            <= datetime.datetime.now()
        ):
            self.create_access_token()
        try:
            url = f"{self.base_url}/collection/v1_0/requesttopay"
            headers = {
                "Authorization": f"Bearer {self.access_token}",
                "X-Reference-Id": x_reference_id,
                "X-Target-Environment": self.x_target_environment,
                "Content-Type": "application/json",
                "Cache-Control": "no-cache",
                "Ocp-Apim-Subscription-Key": self.subscription_key,
            }
            data = json.dumps(
                {
                    "amount": amount,
                    "currency": self.currency,
                    "externalId": external_id,
                    "payer": {"partyIdType": "MSISDN", "partyId": phone_number},
                    "payerMessage": f"MomoHealth payment of {amount} to {phone_number}",
                    "payeeNote": f"MomoHealth payment of {amount} to {phone_number}",
                }
            )
            response = requests.post(url, headers=headers, data=data)
            if response.status_code == 202:
                return {
                    "transaction_id": x_reference_id,
                    "transaction_external_id": external_id,
                }
            else:
                logging.error(f"Failed to initiate request to pay: {response.text}")
                return None
        except requests.RequestException as e:
            logging.error(f"Error in request to pay: {e}")
            return None

    def get_payment_status(self, transaction_id):
        """
        Retrieves the status of a payment transaction.
        """
        try:
            url = f"{self.base_url}/collection/v2_0/payment/{transaction_id}"
            headers = {
                "Authorization": f"Bearer {self.access_token}",
                "X-Target-Environment": self.x_target_environment,
                "Cache-Control": "no-cache",
                "Ocp-Apim-Subscription-Key": self.subscription_key,
            }
            response = requests.get(url, headers=headers)
            if response.status_code == 200:
                return response.json()
            else:
                logging.error(f"Failed to get payment status: {response.text}")
                return None
        except requests.RequestException as e:
            logging.error(f"Error getting payment status: {e}")
            return None

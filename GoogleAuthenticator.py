import pyotp


def Get_2FA(secret,timestamp=False):
        totp = pyotp.TOTP(secret)
        if timestamp:
            return totp.at(timestamp)
        else:
            return totp.now()

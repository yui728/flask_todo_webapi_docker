class Config():
    TODOAPI_CONFIG = "configured by Config in config.py"
    SQLALCHEMY_DATABASE_URI = "sqlite:///db/todoitems.db"


class DevConfig(Config):
    TODOAPI_CONFIG = "configured by DevConfig in config.py"


class DockerConfig(Config):
    TODOAPI_CONFIG = "configured by DockderConfig in config.py"
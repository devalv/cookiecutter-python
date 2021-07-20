# -*- coding: utf-8 -*-
import asyncio
import logging

logging.basicConfig(level=logging.DEBUG)


async def simple_main():
    print("Hello, {{ cookiecutter.full_name }}!")


if __name__ == '__main__':
    asyncio.run(simple_main())

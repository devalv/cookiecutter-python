# -*- coding: utf-8 -*-
import asyncio
import logging

import uvloop


logging.basicConfig(level=logging.DEBUG)


async def simple_main():
    print("Hello, {{ cookiecutter.full_name }}!")


if __name__ == '__main__':
    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())
    asyncio.run(simple_main())
